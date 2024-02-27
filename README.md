Include a mock of the Blast precompile at the standard address (`0x4300000000000000000000000000000000000002`) by inheriting from `BlastEtcher.sol` and calling `etchBlastPrecompile`.


All functions on the mock are no-ops, but the non-view functions emit events with the function name (in MixedCase) including all arguments. All view and value-returning functions return 0. 