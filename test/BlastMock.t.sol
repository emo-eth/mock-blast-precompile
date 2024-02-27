// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {Test} from "forge-std/Test.sol";
import {BlastMock, IBlast, YieldMode, GasMode} from "src/./BlastMock.sol";

contract MockBlastTest is Test {
    BlastMock mock;

    function setUp() public {
        mock = new BlastMock();
    }

    function testConfigureContract(address a, uint8 b, uint8 c, address d) public {
        YieldMode _b = YieldMode(uint8(bound(b, 0, 2)));
        GasMode _c = GasMode(uint8(bound(c, 0, 1)));

        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureContract(a, _b, _c, d);
        mock.configureContract(a, _b, _c, d);
    }

    function testConfigure(uint8 a, uint8 b, address c) public {
        YieldMode _a = YieldMode(uint8(bound(a, 0, 2)));
        GasMode _b = GasMode(uint8(bound(b, 0, 1)));

        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.Configure(_a, _b, c);
        mock.configure(_a, _b, c);
    }

    function testConfigureClaimableYield() public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureClaimableYield();
        mock.configureClaimableYield();
    }

    function testConfigureClaimableYieldOnBehalf(address a) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureClaimableYieldOnBehalf(a);
        mock.configureClaimableYieldOnBehalf(a);
    }

    function testConfigureAutomaticYield() public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureAutomaticYield();
        mock.configureAutomaticYield();
    }

    function testConfigureAutomaticYieldOnBehalf(address a) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureAutomaticYieldOnBehalf(a);
        mock.configureAutomaticYieldOnBehalf(a);
    }

    function testConfigureVoidYield() public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureVoidYield();
        mock.configureVoidYield();
    }

    function testConfigureVoidYieldOnBehalf(address a) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureVoidYieldOnBehalf(a);
        mock.configureVoidYieldOnBehalf(a);
    }

    function testConfigureClaimableGas() public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureClaimableGas();
        mock.configureClaimableGas();
    }

    function testConfigureClaimableGasOnBehalf(address a) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureClaimableGasOnBehalf(a);
        mock.configureClaimableGasOnBehalf(a);
    }

    function testConfigureVoidGas() public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureVoidGas();
        mock.configureVoidGas();
    }

    function testConfigureVoidGasOnBehalf(address a) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureVoidGasOnBehalf(a);
        mock.configureVoidGasOnBehalf(a);
    }

    function testConfigureGovernor(address a) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureGovernor(a);
        mock.configureGovernor(a);
    }

    function testConfigureGovernorOnBehalf(address a, address b) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ConfigureGovernorOnBehalf(a, b);
        mock.configureGovernorOnBehalf(a, b);
    }

    function testClaimYield(address a, address b, uint256 c) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ClaimYield(a, b, c);
        mock.claimYield(a, b, c);
    }

    function testClaimAllYield(address a, address b) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ClaimAllYield(a, b);
        mock.claimAllYield(a, b);
    }

    function testClaimAllGas(address a, address b) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ClaimAllGas(a, b);
        mock.claimAllGas(a, b);
    }

    function testClaimGasAtMinClaimRate(address a, address b, uint256 c) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ClaimGasAtMinClaimRate(a, b, c);
        mock.claimGasAtMinClaimRate(a, b, c);
    }

    function testClaimMaxGas(address a, address b) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ClaimMaxGas(a, b);
        mock.claimMaxGas(a, b);
    }

    function testClaimGas(address a, address b, uint256 c, uint256 d) public {
        vm.expectEmit(true, false, false, true, address(mock));
        emit BlastMock.ClaimGas(a, b, c, d);
        mock.claimGas(a, b, c, d);
    }

    function testReadClaimableYield(address a) public {
        uint256 result = mock.readClaimableYield(a);
        assertEq(result, 0);
    }

    function testReadYieldConfiguration(address a) public {
        uint8 result = mock.readYieldConfiguration(a);
        assertEq(result, 0);
    }

    function testReadGasParams(address a) public {
        (uint256 etherSeconds, uint256 etherBalance, uint256 lastUpdated, GasMode gasMode) = mock.readGasParams(a);
        assertEq(etherSeconds, 0);
        assertEq(etherBalance, 0);
        assertEq(lastUpdated, 0);
        assertEq(uint8(gasMode), 0);
    }
}
