# ESDT-Bridge-SmartContract-Elrond
Bridge between two ESDT with adjustable ratio.

To interact with the Smart Contract, you would need to have:
- python3.8 and upper
- [Pem wallet](https://github.com/ReneDuris/GeneratePem-erdjs) - Generating pem file through erdjs.
- [Elrond IDE](https://marketplace.visualstudio.com/items?itemName=Elrond.vscode-elrond-ide/) - extension for Visual Studio Code
```
ctrl+shift+P
Elrond: Setup Workspace
```
# Interaction
To interact with the Smart Contract, you would need to supply your wallet with some funds:
- [ESDT/EGLD faucet](https://r3d4.fr/elrond/devnet/)
- [NFT faucet](https://dapp-demo.elven.tools/)


        
# Contract build
example:
```
erdpy --verbose contract build "/home/project/bridge"
```
# Deploying smartcontract through erdpy.json
There is stored whole configuration to get smartcontract deployed by using command. You will need to do this only once.
```
erdpy contract deploy
```
# Upgrading smartcontract
example:
```
erdpy --verbose contract upgrade erd1qqqqqqqqqqqqqpgq6lsfc55vs5yk56mrnd5s95jgm9lrevvs0ztsrkernq --recall-nonce --pem="wallet.pem" --gas-limit=60000000 --proxy="https://devnet-gateway.elrond.com" --chain=D --project=bridge --arguments str:DSUPER-9af8df 18  1 1000000000000000000 str:EFOO-8e80a5 18 2 --send || return
```
# Arguments upon deployement
Upon deployement or while ugrading you have to set your arguments.
- Identifier of provided ESDT from owner
```
"str:TokenIdentifier"
```
- Number of decimals of provided ESDT from owner
```
"18"
```
- Provided ratio for provided ESDT
```
"1"
```
- Minimum amount to be able to swap
```
"1000000000000000000"
```
- Identifier of swapped ESDT send by users on SC
```
"str:TokenIdentifier"
```
- Number of decimals of swapped ESDT send by users on SC
```
"18"
```
- Provided ratio for swapped ESDT
```
"2"
```
- #### Note:  The swap ratio between TOKEN_1 and TOKEN_2 will be 1:2. Meaning that you will be swapping 10 of TOKEN_1 for 20 of TOKEN_2
```
  #[init]
    fn init(
        &self,
        provided_token: &EgldOrEsdtTokenIdentifier,
        provided_token_decimals: &u32,
        ratio_provided: &u32,
        minimum_swap_amount: &BigUint,
        swap_token: &EgldOrEsdtTokenIdentifier,
        swap_token_decimals: &u32,
        ratio_swap: &u32
    ) {
        require!(ratio_swap > &0 ,"Ratio cannot be 0");
        require!(minimum_swap_amount > &0 ,"minimum swap amount cannot be 0");

       self.provided_token().set(provided_token);  
       self.provided_token_decimals().set(provided_token_decimals);
       self.ratio_provided().set(ratio_provided);
       self.minimum_swap_amount().set(minimum_swap_amount);                          
       self.swap_token().set(swap_token);
       self.swap_token_decimals().set(swap_token_decimals);
       self.ratio_swap().set(ratio_swap);
    }
```        
# Simulating contract call || mandos tests
- [Mandos tests](https://docs.elrond.com/developers/mandos-reference/structure/#docsNav)
- erdpy --verbose contract call
example
```
erdpy --verbose contract call erd1qqqqqqqqqqqqqpgq6lsfc55vs5yk56mrnd5s95jgm9lrevvs0ztsrkernq --function=ESDTTransfer --pem="wallet.pem" --proxy="https://devnet-gateway.elrond.com" --chain=D --recall-nonce --gas-limit=5000000 --arguments str:EFOO-8e80a5 1000000000000000000 str:beginSwap --simulate
```
# Query SmartContract
Using view methods you are able to query your smartcontract to view informations.
- [query SmartContract-erdjs](https://github.com/ReneDuris/Query-SmartContract-erdjs)
       
 # View methods, storage mappers
- [View annotations](https://docs.elrond.com/developers/developer-reference/elrond-wasm-annotations/#endpoint-and-view)

Storage mappers can be used to store single values or multiple values. And with view method you are able to query stored value.
- [singleValueMapper](https://docs.elrond.com/developers/developer-reference/storage-mappers/#get)
```
     #[storage_mapper("providedToken")]
    fn provided_token(&self) -> SingleValueMapper<EgldOrEsdtTokenIdentifier>;
```
# Endpoints
- [Endpoint annotations](https://docs.elrond.com/developers/developer-reference/elrond-wasm-annotations/#endpoint-and-view)
- #[payable("*")] - throught the endpoint can be sent tokens, nfts
- #[only_owner] - only owner can call the endpoint
- #[endpoint] - annotation of endpoint which can be called
```
    #[payable("*")]
    #[only_owner]
    #[endpoint(supplyToken)]
    fn supply_token(&self){
        let provided_token = self.provided_token().get();
        let (payment_token, _payment_amount) = self.call_value().egld_or_single_fungible_esdt();
        require!(payment_token == provided_token, "Invalid token input");
    }
```
```
    #[payable("*")]
    #[endpoint(beginSwap)]
    fn begin_swap(&self) {
        let caller = self.blockchain().get_caller();
        let swap_token = self.swap_token().get();
        let provided_token = self.provided_token().get();
        let (payment_token, payment_amount) = self.call_value().egld_or_single_fungible_esdt();
        let adjusted_payment_amount =self.math_decimals(payment_amount.clone());
        require!(payment_token == swap_token, "Invalid token input");

        require!(&self.blockchain().get_sc_balance(&provided_token,0) >= &adjusted_payment_amount, "You cannot swap more than was provided");

        require!(payment_amount >= self.minimum_swap_amount().get() ,"Swap amount is too low");
        self.send().direct(&caller, &provided_token, 0, &adjusted_payment_amount);
    }

```
# SmartContract API functions
[SmartContract API functions](https://docs.elrond.com/developers/developer-reference/elrond-wasm-api-functions/#docsNav)
```
let caller = self.blockchain().get_caller();
let (payment_token, payment_amount) = self.call_value().egld_or_single_fungible_esdt();
let balance_smartcontract = &self.blockchain().get_sc_balance(&staking_token,0)

```
# Calculation 

```
fn math_decimals(&self,payment_amount: BigUint)-> BigUint{
        let provided_decimals = self.provided_token_decimals().get();
        let swap_decimals = self.swap_token_decimals().get(); 
        let ratio_swap = self.ratio_swap().get();
        let provided_ratio = self.ratio_provided().get();
        let decimal = BigUint::from(DEC);
        let new_amount = BigUint::from(ratio_swap) * payment_amount * decimal.pow(provided_decimals)/BigUint::from(provided_ratio)/decimal.pow(swap_decimals);
    
        return new_amount;
    }
    }
```

