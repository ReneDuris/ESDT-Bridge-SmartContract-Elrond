#![no_std]
elrond_wasm::imports!();
const DEC: u32 = 10;
#[elrond_wasm::contract]

pub trait Bridge{
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
   #[payable("*")]
    #[only_owner]
    #[endpoint(supplyToken)]
    fn supply_token(&self){
        let provided_token = self.provided_token().get();
        let (payment_token, _payment_amount) = self.call_value().egld_or_single_fungible_esdt();
        require!(payment_token == provided_token, "Invalid token input");
    }

    #[only_owner]
    #[endpoint(withdrawProvidedToken)]
    fn withdraw_provided_token(&self,withdraw_provided_amount: BigUint){
        let caller = self.blockchain().get_caller();
        let provided_token = self.provided_token().get();
        let contract_balance = &self.blockchain().get_sc_balance(&provided_token,0);
        require!(contract_balance >= &withdraw_provided_amount, "Not enough balance on SC");
        self.send().direct(&caller, &provided_token, 0, &withdraw_provided_amount);
    }

    #[only_owner]
    #[endpoint(withdrawSwapToken)]
    fn withdraw_swap_token(&self,withdraw_swap_amount: BigUint){
        let caller = self.blockchain().get_caller();
        let swap_token = self.swap_token().get();

        require!(self.blockchain().get_sc_balance(&swap_token,0) >= withdraw_swap_amount, "Not enough balance on SC");
        self.send().direct(&caller, &swap_token , 0, &withdraw_swap_amount);
    }

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

    fn math_decimals(&self,payment_amount: BigUint)-> BigUint{
        let provided_decimals = self.provided_token_decimals().get();
        let swap_decimals = self.swap_token_decimals().get(); 
        let ratio_swap = self.ratio_swap().get();
        let provided_ratio = self.ratio_provided().get();
        let decimal = BigUint::from(DEC);
        let new_amount = BigUint::from(ratio_swap) * payment_amount * decimal.pow(provided_decimals)/BigUint::from(provided_ratio)/decimal.pow(swap_decimals);
        return new_amount;
       
        
    }
    #[storage_mapper("providedToken")]
    fn provided_token(&self) -> SingleValueMapper<EgldOrEsdtTokenIdentifier>;

    #[storage_mapper("swapToken")]
    fn swap_token(&self) -> SingleValueMapper<EgldOrEsdtTokenIdentifier>;

    #[storage_mapper("minimumSwapAmount")]
    fn minimum_swap_amount(&self) -> SingleValueMapper<BigUint>;
  
    #[storage_mapper("ProvidedDecimals")]
    fn provided_token_decimals(&self) -> SingleValueMapper<u32>;

    #[storage_mapper("SwapDecimals")]
    fn swap_token_decimals(&self) -> SingleValueMapper<u32>;

    #[storage_mapper("ratioSwap")]
    fn ratio_swap(&self) -> SingleValueMapper<u32>;

    #[storage_mapper("ratioProvided")]
    fn ratio_provided(&self) -> SingleValueMapper<u32>;

}
