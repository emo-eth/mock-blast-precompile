// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {Vm} from "forge-std/Vm.sol";
import {IBlast} from "src/IBlast.sol";
import {BlastMock} from "src/BlastMock.sol";

contract BlastEtcher {
    Vm private constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));
    IBlast constant BLAST_PRECOMPILE = IBlast(0x4300000000000000000000000000000000000002);

    function etchBlastPrecompile() internal {
        if (address(BLAST_PRECOMPILE).code.length == 0) {
            BlastMock deployed = new BlastMock();
            vm.etch(address(BLAST_PRECOMPILE), address(deployed).code);
            vm.label(address(BLAST_PRECOMPILE), "BlastPrecompile");
        }
    }
}
