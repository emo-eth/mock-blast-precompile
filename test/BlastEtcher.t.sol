// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {Test} from "forge-std/Test.sol";
import {BlastEtcher} from "src/./BlastEtcher.sol";
import {BlastMock} from "src/./BlastMock.sol";

contract BlastEtcherTest is Test, BlastEtcher {
    function setUp() public {
        etchBlastPrecompile();
    }

    function testEtchBlastPrecompile() public {
        assertGt(address(BLAST_PRECOMPILE).code.length, 0);
        vm.expectEmit(true, false, false, true, address(BLAST_PRECOMPILE));
        emit BlastMock.ClaimAllGas(address(this), address(this));
        BLAST_PRECOMPILE.claimAllGas(address(this), address(this));
    }
}
