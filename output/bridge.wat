(module
  (type (;0;) (func (param i32 i32) (result i32)))
  (type (;1;) (func (result i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32)))
  (type (;5;) (func (param i32 i32 i32)))
  (type (;6;) (func (param i32 i32)))
  (type (;7;) (func (param i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i64 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i64)))
  (type (;11;) (func (param i32 i32 i32 i64 i32)))
  (type (;12;) (func (param i32) (result i64)))
  (type (;13;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i32 i32 i32 i32 i32)))
  (import "env" "bigIntSetInt64" (func (;0;) (type 10)))
  (import "env" "bigIntAdd" (func (;1;) (type 5)))
  (import "env" "signalError" (func (;2;) (type 6)))
  (import "env" "mBufferEq" (func (;3;) (type 0)))
  (import "env" "mBufferNew" (func (;4;) (type 1)))
  (import "env" "mBufferAppend" (func (;5;) (type 0)))
  (import "env" "mBufferAppendBytes" (func (;6;) (type 7)))
  (import "env" "managedMultiTransferESDTNFTExecute" (func (;7;) (type 8)))
  (import "env" "managedTransferValueExecute" (func (;8;) (type 8)))
  (import "env" "managedCaller" (func (;9;) (type 4)))
  (import "env" "managedSCAddress" (func (;10;) (type 4)))
  (import "env" "bigIntGetExternalBalance" (func (;11;) (type 6)))
  (import "env" "mBufferGetLength" (func (;12;) (type 2)))
  (import "env" "mBufferGetBytes" (func (;13;) (type 0)))
  (import "env" "bigIntGetESDTExternalBalance" (func (;14;) (type 11)))
  (import "env" "managedOwnerAddress" (func (;15;) (type 4)))
  (import "env" "managedGetMultiESDTCallValue" (func (;16;) (type 4)))
  (import "env" "bigIntGetCallValue" (func (;17;) (type 4)))
  (import "env" "managedSignalError" (func (;18;) (type 4)))
  (import "env" "smallIntGetUnsignedArgument" (func (;19;) (type 12)))
  (import "env" "mBufferGetArgument" (func (;20;) (type 0)))
  (import "env" "bigIntGetUnsignedArgument" (func (;21;) (type 6)))
  (import "env" "getNumArguments" (func (;22;) (type 1)))
  (import "env" "mBufferSetBytes" (func (;23;) (type 7)))
  (import "env" "bigIntTDiv" (func (;24;) (type 5)))
  (import "env" "bigIntMul" (func (;25;) (type 5)))
  (import "env" "bigIntPow" (func (;26;) (type 5)))
  (import "env" "mBufferStorageLoad" (func (;27;) (type 0)))
  (import "env" "mBufferStorageStore" (func (;28;) (type 0)))
  (import "env" "bigIntCmp" (func (;29;) (type 0)))
  (import "env" "checkNoPayment" (func (;30;) (type 3)))
  (import "env" "bigIntSign" (func (;31;) (type 2)))
  (import "env" "mBufferFromBigIntUnsigned" (func (;32;) (type 0)))
  (import "env" "mBufferToBigIntUnsigned" (func (;33;) (type 0)))
  (import "env" "mBufferGetByteSlice" (func (;34;) (type 13)))
  (func (;35;) (type 2) (param i32) (result i32)
    (local i32)
    call 36
    local.tee 1
    i64.const 0
    call 0
    local.get 1
    local.get 1
    local.get 0
    call 1
    local.get 1)
  (func (;36;) (type 1) (result i32)
    (local i32)
    i32.const 1049116
    i32.const 1049116
    i32.load
    i32.const 1
    i32.sub
    local.tee 0
    i32.store
    local.get 0)
  (func (;37;) (type 14) (param i32 i32 i32 i32 i32)
    block  ;; label = @1
      local.get 1
      local.get 2
      i32.le_u
      if  ;; label = @2
        local.get 2
        local.get 4
        i32.le_u
        br_if 1 (;@1;)
        call 38
        unreachable
      end
      call 38
      unreachable
    end
    local.get 0
    local.get 2
    local.get 1
    i32.sub
    i32.store offset=4
    local.get 0
    local.get 1
    local.get 3
    i32.add
    i32.store)
  (func (;38;) (type 3)
    call 83
    unreachable)
  (func (;39;) (type 2) (param i32) (result i32)
    (local i32)
    call 36
    local.tee 1
    local.get 0
    i64.extend_i32_u
    call 0
    local.get 1)
  (func (;40;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 3
    i32.const 0
    i32.gt_s)
  (func (;41;) (type 6) (param i32 i32)
    local.get 0
    local.get 1
    call 2
    unreachable)
  (func (;42;) (type 5) (param i32 i32 i32)
    (local i32 i32 i32 i32 i32)
    global.get 0
    i32.const 48
    i32.sub
    local.tee 3
    global.set 0
    call 43
    local.set 5
    call 43
    local.set 6
    block  ;; label = @1
      local.get 1
      i32.const 2147483646
      i32.ne
      if  ;; label = @2
        call 43
        local.set 7
        call 4
        local.tee 4
        local.get 1
        call 5
        drop
        local.get 2
        call 35
        local.set 1
        local.get 3
        i32.const 32
        i32.add
        i64.const 0
        i64.store
        local.get 3
        i64.const 0
        i64.store offset=24
        local.get 3
        local.get 4
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        local.get 4
        i32.const 24
        i32.shl
        i32.or
        local.get 4
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 4
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store offset=40
        local.get 3
        i32.const 16
        i32.add
        local.get 3
        i32.const 24
        i32.add
        local.tee 2
        i32.const 0
        i32.const 4
        call 44
        local.get 3
        i32.load offset=16
        local.get 3
        i32.load offset=20
        local.get 3
        i32.const 40
        i32.add
        local.tee 4
        i32.const 4
        call 45
        local.get 3
        i64.const 0
        i64.store offset=40
        local.get 3
        i32.const 8
        i32.add
        local.get 2
        i32.const 4
        i32.const 12
        call 44
        local.get 3
        i32.load offset=8
        local.get 3
        i32.load offset=12
        local.get 4
        i32.const 8
        call 45
        local.get 3
        local.get 1
        i32.const 8
        i32.shl
        i32.const 16711680
        i32.and
        local.get 1
        i32.const 24
        i32.shl
        i32.or
        local.get 1
        i32.const 8
        i32.shr_u
        i32.const 65280
        i32.and
        local.get 1
        i32.const 24
        i32.shr_u
        i32.or
        i32.or
        i32.store offset=40
        local.get 3
        local.get 2
        i32.const 12
        i32.const 16
        call 44
        local.get 3
        i32.load
        local.get 3
        i32.load offset=4
        local.get 4
        i32.const 4
        call 45
        local.get 7
        local.get 2
        i32.const 16
        call 6
        drop
        local.get 0
        i32.load
        local.get 7
        i64.const 0
        local.get 5
        local.get 6
        call 7
        drop
        br 1 (;@1;)
      end
      local.get 0
      i32.load
      local.get 2
      i64.const 0
      local.get 5
      local.get 6
      call 8
      drop
    end
    local.get 3
    i32.const 48
    i32.add
    global.set 0)
  (func (;43;) (type 1) (result i32)
    (local i32)
    call 36
    local.tee 0
    i32.const 1049072
    i32.const 0
    call 23
    drop
    local.get 0)
  (func (;44;) (type 9) (param i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    i32.const 8
    i32.add
    local.get 2
    local.get 3
    local.get 1
    i32.const 16
    call 37
    local.get 4
    i32.load offset=12
    local.set 1
    local.get 0
    local.get 4
    i32.load offset=8
    i32.store
    local.get 0
    local.get 1
    i32.store offset=4
    local.get 4
    i32.const 16
    i32.add
    global.set 0)
  (func (;45;) (type 9) (param i32 i32 i32 i32)
    (local i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 3
    i32.eq
    if  ;; label = @1
      local.get 1
      local.tee 3
      i32.const 15
      i32.gt_u
      if  ;; label = @2
        local.get 0
        i32.const 0
        local.get 0
        i32.sub
        i32.const 3
        i32.and
        local.tee 4
        i32.add
        local.set 5
        local.get 4
        if  ;; label = @3
          local.get 2
          local.set 1
          loop  ;; label = @4
            local.get 0
            local.get 1
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 0
            i32.const 1
            i32.add
            local.tee 0
            local.get 5
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 5
        local.get 3
        local.get 4
        i32.sub
        local.tee 3
        i32.const -4
        i32.and
        local.tee 6
        i32.add
        local.set 0
        block  ;; label = @3
          local.get 2
          local.get 4
          i32.add
          local.tee 4
          i32.const 3
          i32.and
          if  ;; label = @4
            local.get 6
            i32.const 0
            i32.le_s
            br_if 1 (;@3;)
            local.get 4
            i32.const 3
            i32.shl
            local.tee 1
            i32.const 24
            i32.and
            local.set 7
            local.get 4
            i32.const -4
            i32.and
            local.tee 8
            i32.const 4
            i32.add
            local.set 2
            i32.const 0
            local.get 1
            i32.sub
            i32.const 24
            i32.and
            local.set 9
            local.get 8
            i32.load
            local.set 1
            loop  ;; label = @5
              local.get 5
              local.get 1
              local.get 7
              i32.shr_u
              local.get 2
              i32.load
              local.tee 1
              local.get 9
              i32.shl
              i32.or
              i32.store
              local.get 2
              i32.const 4
              i32.add
              local.set 2
              local.get 5
              i32.const 4
              i32.add
              local.tee 5
              local.get 0
              i32.lt_u
              br_if 0 (;@5;)
            end
            br 1 (;@3;)
          end
          local.get 6
          i32.const 0
          i32.le_s
          br_if 0 (;@3;)
          local.get 4
          local.set 2
          loop  ;; label = @4
            local.get 5
            local.get 2
            i32.load
            i32.store
            local.get 2
            i32.const 4
            i32.add
            local.set 2
            local.get 5
            i32.const 4
            i32.add
            local.tee 5
            local.get 0
            i32.lt_u
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const 3
        i32.and
        local.set 3
        local.get 4
        local.get 6
        i32.add
        local.set 2
      end
      local.get 3
      if  ;; label = @2
        local.get 0
        local.get 3
        i32.add
        local.set 1
        loop  ;; label = @3
          local.get 0
          local.get 2
          i32.load8_u
          i32.store8
          local.get 2
          i32.const 1
          i32.add
          local.set 2
          local.get 0
          i32.const 1
          i32.add
          local.tee 0
          local.get 1
          i32.lt_u
          br_if 0 (;@3;)
        end
      end
      return
    end
    call 83
    unreachable)
  (func (;46;) (type 1) (result i32)
    (local i32)
    call 36
    local.tee 0
    call 9
    local.get 0)
  (func (;47;) (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    call 36
    local.tee 1
    call 10
    local.get 1
    local.set 2
    call 36
    local.set 1
    local.get 0
    i32.const 2147483646
    i32.eq
    if  ;; label = @1
      local.get 2
      call 48
      i32.const 1049125
      local.get 1
      call 11
      local.get 1
      return
    end
    local.get 0
    call 12
    local.set 3
    local.get 2
    call 48
    local.get 0
    i32.const 1049157
    call 13
    drop
    i32.const 1049125
    i32.const 1049157
    local.get 3
    i64.const 0
    local.get 1
    call 14
    local.get 1)
  (func (;48;) (type 4) (param i32)
    local.get 0
    i32.const 1049125
    call 13
    drop)
  (func (;49;) (type 3)
    (local i32)
    call 36
    local.tee 0
    call 15
    local.get 0
    call 46
    call 40
    if  ;; label = @1
      return
    end
    i32.const 1048576
    i32.const 36
    call 2
    unreachable)
  (func (;50;) (type 4) (param i32)
    (local i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    i32.const -21
    local.set 1
    block  ;; label = @1
      i32.const 1049124
      i32.load8_u
      local.tee 3
      if  ;; label = @2
        i32.const -21
        i32.const 2147483647
        local.get 3
        select
        local.set 1
        br 1 (;@1;)
      end
      i32.const 1049124
      i32.const 1
      i32.store8
      i32.const -21
      call 16
    end
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 1
                call 12
                i32.const 4
                i32.shr_u
                br_table 1 (;@5;) 2 (;@4;) 0 (;@6;)
              end
              i32.const 1048612
              i32.const 34
              call 2
              unreachable
            end
            i32.const -11
            local.set 1
            i32.const 2147483646
            local.set 3
            i32.const 1049120
            i32.load8_u
            local.tee 4
            if  ;; label = @5
              i32.const -11
              i32.const 2147483647
              local.get 4
              select
              local.set 1
              br 2 (;@3;)
            end
            i32.const 1049120
            i32.const 1
            i32.store8
            i32.const -11
            call 17
            br 1 (;@3;)
          end
          local.get 2
          i32.const 8
          i32.add
          i64.const 0
          i64.store
          local.get 2
          i64.const 0
          i64.store
          local.get 1
          local.get 2
          i32.const 16
          call 51
          br_if 2 (;@1;)
          local.get 2
          i64.load offset=4 align=4
          i64.const 0
          i64.ne
          br_if 1 (;@2;)
          local.get 2
          i32.load
          local.tee 1
          i32.const 24
          i32.shl
          local.get 1
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 1
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 1
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          local.set 3
          local.get 2
          i32.load offset=12
          local.tee 1
          i32.const 24
          i32.shl
          local.get 1
          i32.const 8
          i32.shl
          i32.const 16711680
          i32.and
          i32.or
          local.get 1
          i32.const 8
          i32.shr_u
          i32.const 65280
          i32.and
          local.get 1
          i32.const 24
          i32.shr_u
          i32.or
          i32.or
          local.set 1
        end
        local.get 0
        local.get 1
        i32.store offset=4
        local.get 0
        local.get 3
        i32.store
        local.get 2
        i32.const 16
        i32.add
        global.set 0
        return
      end
      i32.const 1049072
      i32.const 28
      call 2
      unreachable
    end
    i32.const 1048711
    i32.const 29
    call 2
    unreachable)
  (func (;51;) (type 7) (param i32 i32 i32) (result i32)
    local.get 0
    i32.const 0
    local.get 2
    local.get 1
    call 34
    i32.const 0
    i32.ne)
  (func (;52;) (type 0) (param i32 i32) (result i32)
    (local i32)
    call 36
    local.tee 2
    local.get 0
    local.get 1
    call 23
    drop
    local.get 2)
  (func (;53;) (type 7) (param i32 i32 i32) (result i32)
    (local i64)
    local.get 0
    call 19
    local.tee 3
    i64.const 4294967296
    i64.ge_u
    if  ;; label = @1
      i32.const 1048646
      i32.const 23
      call 52
      local.tee 0
      local.get 1
      local.get 2
      call 6
      drop
      local.get 0
      i32.const 1048669
      i32.const 3
      call 6
      drop
      local.get 0
      i32.const 1048697
      i32.const 14
      call 6
      drop
      local.get 0
      call 18
      unreachable
    end
    local.get 3
    i32.wrap_i64)
  (func (;54;) (type 2) (param i32) (result i32)
    local.get 0
    call 36
    local.tee 0
    call 20
    drop
    local.get 0
    call 55)
  (func (;55;) (type 2) (param i32) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    block (result i32)  ;; label = @1
      local.get 0
      call 12
      i32.const 4
      i32.eq
      if  ;; label = @2
        local.get 1
        i32.const 0
        i32.store offset=12
        local.get 0
        local.get 1
        i32.const 12
        i32.add
        i32.const 4
        call 51
        drop
        i32.const 2147483646
        local.get 1
        i32.load offset=12
        i32.const 1145849669
        i32.eq
        br_if 1 (;@1;)
        drop
      end
      local.get 0
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;56;) (type 2) (param i32) (result i32)
    local.get 0
    call 36
    local.tee 0
    call 21
    local.get 0)
  (func (;57;) (type 4) (param i32)
    call 22
    local.get 0
    i32.eq
    if  ;; label = @1
      return
    end
    i32.const 1048672
    i32.const 25
    call 2
    unreachable)
  (func (;58;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call 24
    local.get 0)
  (func (;59;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 0
    local.get 1
    call 25
    local.get 0)
  (func (;60;) (type 0) (param i32 i32) (result i32)
    (local i32)
    call 36
    local.set 2
    i32.const -14
    local.get 1
    i64.extend_i32_u
    call 0
    local.get 2
    local.get 0
    i32.const -14
    call 26
    local.get 2)
  (func (;61;) (type 2) (param i32) (result i32)
    local.get 0
    call 36
    local.tee 0
    call 27
    drop
    local.get 0)
  (func (;62;) (type 2) (param i32) (result i32)
    local.get 0
    call 61
    call 55)
  (func (;63;) (type 2) (param i32) (result i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    i64.const 0
    i64.store offset=8
    block  ;; label = @1
      local.get 0
      call 61
      local.tee 0
      call 12
      local.tee 2
      i32.const 9
      i32.ge_u
      br_if 0 (;@1;)
      local.get 1
      i32.const 0
      local.get 2
      local.get 1
      i32.const 8
      i32.add
      i32.const 8
      call 37
      local.get 0
      local.get 1
      i32.load
      local.tee 2
      local.get 1
      i32.load offset=4
      local.tee 0
      call 51
      drop
      local.get 0
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          if  ;; label = @4
            local.get 0
            i32.const 1
            i32.sub
            local.set 0
            local.get 2
            i64.load8_u
            local.get 3
            i64.const 8
            i64.shl
            i64.or
            local.set 3
            local.get 2
            i32.const 1
            i32.add
            local.set 2
            br 1 (;@3;)
          end
        end
        local.get 3
        i64.const 4294967296
        i64.ge_u
        br_if 1 (;@1;)
      end
      local.get 1
      i32.const 16
      i32.add
      global.set 0
      local.get 3
      i32.wrap_i64
      return
    end
    i32.const 1048744
    i32.const 22
    call 52
    local.tee 0
    i32.const 1048697
    i32.const 14
    call 6
    drop
    local.get 0
    call 18
    unreachable)
  (func (;64;) (type 6) (param i32 i32)
    (local i32 i32 i64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    local.get 1
    i64.extend_i32_u
    local.tee 4
    i64.const 56
    i64.shl
    local.get 4
    i64.const 40
    i64.shl
    i64.const 71776119061217280
    i64.and
    i64.or
    local.get 4
    i64.const 24
    i64.shl
    i64.const 280375465082880
    i64.and
    local.get 4
    i64.const 8
    i64.shl
    i64.const 1095216660480
    i64.and
    i64.or
    i64.or
    i64.store offset=8
    block  ;; label = @1
      local.get 1
      i32.eqz
      if  ;; label = @2
        i32.const 1049072
        local.set 3
        i32.const 0
        local.set 1
        br 1 (;@1;)
      end
      i32.const 0
      local.set 1
      loop  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            local.get 1
            i32.const 8
            i32.ne
            if  ;; label = @5
              local.get 2
              i32.const 8
              i32.add
              local.get 1
              i32.add
              local.tee 3
              i32.load8_u
              i32.eqz
              br_if 2 (;@3;)
              local.get 1
              i32.const 9
              i32.ge_u
              br_if 1 (;@4;)
              i32.const 8
              local.get 1
              i32.sub
              local.set 1
              br 4 (;@1;)
            end
            call 82
            unreachable
          end
          call 82
          unreachable
        end
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        br 0 (;@2;)
      end
      unreachable
    end
    local.get 0
    local.get 3
    local.get 1
    call 65
    local.get 2
    i32.const 16
    i32.add
    global.set 0)
  (func (;65;) (type 5) (param i32 i32 i32)
    (local i32)
    call 36
    local.tee 3
    local.get 1
    local.get 2
    call 23
    drop
    local.get 0
    local.get 3
    call 28
    drop)
  (func (;66;) (type 6) (param i32 i32)
    local.get 1
    i32.const 2147483646
    i32.ne
    if  ;; label = @1
      local.get 0
      local.get 1
      call 28
      drop
      return
    end
    local.get 0
    i32.const 1048740
    i32.const 4
    call 65)
  (func (;67;) (type 0) (param i32 i32) (result i32)
    block (result i32)  ;; label = @1
      i32.const 1
      local.get 0
      local.get 1
      i32.eq
      br_if 0 (;@1;)
      drop
      i32.const 0
      local.get 0
      i32.const 2147483646
      i32.eq
      local.get 1
      i32.const 2147483646
      i32.eq
      i32.or
      br_if 0 (;@1;)
      drop
      local.get 0
      local.get 1
      call 40
    end)
  (func (;68;) (type 1) (result i32)
    i32.const 1048766
    i32.const 9
    call 52)
  (func (;69;) (type 1) (result i32)
    i32.const 1048775
    i32.const 9
    call 52)
  (func (;70;) (type 1) (result i32)
    i32.const 1048784
    i32.const 13
    call 52)
  (func (;71;) (type 1) (result i32)
    i32.const 1048797
    i32.const 13
    call 52)
  (func (;72;) (type 1) (result i32)
    i32.const 1048810
    i32.const 17
    call 52)
  (func (;73;) (type 1) (result i32)
    i32.const 1048827
    i32.const 12
    call 52)
  (func (;74;) (type 1) (result i32)
    i32.const 1048839
    i32.const 16
    call 52)
  (func (;75;) (type 0) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    call 29
    i32.const -1
    i32.xor
    i32.const 31
    i32.shr_u)
  (func (;76;) (type 3)
    (local i32 i32 i32 i32 i32 i32 i32)
    call 30
    i32.const 7
    call 57
    i32.const 0
    call 54
    local.set 0
    i32.const 1
    i32.const 1048898
    i32.const 23
    call 53
    local.set 1
    i32.const 2
    i32.const 1048884
    i32.const 14
    call 53
    local.set 3
    i32.const 3
    call 56
    local.set 2
    i32.const 4
    call 54
    local.set 4
    i32.const 5
    i32.const 1048865
    i32.const 19
    call 53
    local.set 5
    block  ;; label = @1
      i32.const 6
      i32.const 1048855
      i32.const 10
      call 53
      local.tee 6
      if  ;; label = @2
        local.get 2
        call 31
        i32.const 0
        i32.le_s
        br_if 1 (;@1;)
        call 70
        local.get 0
        call 66
        call 74
        local.get 1
        call 64
        call 71
        local.get 3
        call 64
        call 72
        call 36
        local.tee 1
        local.get 2
        call 32
        drop
        local.get 1
        call 28
        drop
        call 69
        local.get 4
        call 66
        call 73
        local.get 5
        call 64
        call 68
        local.get 6
        call 64
        return
      end
      i32.const 1049024
      i32.const 17
      call 41
      unreachable
    end
    i32.const 1049041
    i32.const 31
    call 41
    unreachable)
  (func (;77;) (type 3)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    i32.const 0
    call 57
    local.get 0
    call 46
    i32.store offset=12
    call 69
    call 62
    local.set 2
    call 70
    call 62
    local.set 4
    local.get 0
    call 50
    local.get 0
    i32.load
    local.set 5
    local.get 0
    i32.load offset=4
    local.tee 6
    call 35
    call 74
    call 63
    local.set 7
    call 73
    call 63
    local.set 3
    call 68
    call 63
    local.set 8
    call 71
    call 63
    local.set 9
    i32.const 10
    call 39
    local.tee 1
    local.get 3
    call 60
    call 58
    local.set 3
    local.get 8
    call 39
    local.get 3
    call 59
    local.get 1
    local.get 7
    call 60
    call 59
    local.get 9
    call 39
    call 58
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        local.get 5
        local.get 2
        call 67
        if  ;; label = @3
          local.get 4
          call 47
          local.get 1
          call 75
          i32.eqz
          br_if 1 (;@2;)
          call 72
          call 61
          call 36
          local.tee 2
          call 33
          drop
          local.get 6
          local.get 2
          call 75
          i32.eqz
          br_if 2 (;@1;)
          local.get 0
          i32.const 12
          i32.add
          local.get 4
          local.get 1
          call 42
          local.get 0
          i32.const 16
          i32.add
          global.set 0
          return
        end
        i32.const 1048921
        i32.const 19
        call 41
        unreachable
      end
      i32.const 1048940
      i32.const 38
      call 41
      unreachable
    end
    i32.const 1048978
    i32.const 22
    call 41
    unreachable)
  (func (;78;) (type 3)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 49
    i32.const 0
    call 57
    call 70
    call 62
    local.set 1
    local.get 0
    i32.const 8
    i32.add
    call 50
    local.get 0
    i32.load offset=8
    local.get 1
    call 67
    i32.eqz
    if  ;; label = @1
      i32.const 1048921
      i32.const 19
      call 41
      unreachable
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;79;) (type 3)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    call 49
    i32.const 1
    call 57
    i32.const 0
    call 56
    local.set 1
    local.get 0
    call 46
    i32.store offset=12
    call 70
    call 62
    local.tee 2
    call 47
    local.get 1
    call 75
    i32.eqz
    if  ;; label = @1
      i32.const 1049000
      i32.const 24
      call 41
      unreachable
    end
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    local.get 1
    call 42
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;80;) (type 3)
    (local i32 i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    call 30
    call 49
    i32.const 1
    call 57
    i32.const 0
    call 56
    local.set 1
    local.get 0
    call 46
    i32.store offset=12
    call 69
    call 62
    local.tee 2
    call 47
    local.get 1
    call 75
    i32.eqz
    if  ;; label = @1
      i32.const 1049000
      i32.const 24
      call 41
      unreachable
    end
    local.get 0
    i32.const 12
    i32.add
    local.get 2
    local.get 1
    call 42
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;81;) (type 3)
    nop)
  (func (;82;) (type 3)
    i32.const 1049100
    i32.const 14
    call 2
    unreachable)
  (func (;83;) (type 3)
    call 82
    unreachable)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1049189))
  (global (;2;) i32 (i32.const 1049200))
  (export "memory" (memory 0))
  (export "init" (func 76))
  (export "beginSwap" (func 77))
  (export "supplyToken" (func 78))
  (export "withdrawProvidedToken" (func 79))
  (export "withdrawSwapToken" (func 80))
  (export "callBack" (func 81))
  (export "__data_end" (global 1))
  (export "__heap_base" (global 2))
  (data (;0;) (i32.const 1048576) "Endpoint can only be called by ownerincorrect number of ESDT transfersargument decode error (): wrong number of argumentsinput too longManagedVec index out of rangeEGLDstorage decode error: ratioSwapswapTokenprovidedTokenratioProvidedminimumSwapAmountSwapDecimalsProvidedDecimalsratio_swapswap_token_decimalsratio_providedprovided_token_decimalsInvalid token inputYou cannot swap more than was providedSwap amount is too lowNot enough balance on SCRatio cannot be 0minimum swap amount cannot be 0fungible ESDT token expectedpanic occurred")
  (data (;1;) (i32.const 1049116) "\9c\ff\ff\ff"))
