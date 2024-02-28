// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {IBlast, YieldMode, GasMode} from "./IBlast.sol";

contract BlastMock is IBlast {
    // events for all methods
    event ConfigureContract(address contractAddress, YieldMode _yield, GasMode gasMode, address governor);
    event Configure(YieldMode _yield, GasMode gasMode, address governor);
    event ConfigureClaimableYield();
    event ConfigureClaimableYieldOnBehalf(address contractAddress);
    event ConfigureAutomaticYield();
    event ConfigureAutomaticYieldOnBehalf(address contractAddress);
    event ConfigureVoidYield();
    event ConfigureVoidYieldOnBehalf(address contractAddress);
    event ConfigureClaimableGas();
    event ConfigureClaimableGasOnBehalf(address contractAddress);
    event ConfigureVoidGas();
    event ConfigureVoidGasOnBehalf(address contractAddress);
    event ConfigureGovernor(address _governor);
    event ConfigureGovernorOnBehalf(address _newGovernor, address contractAddress);
    event ClaimYield(address contractAddress, address recipientOfYield, uint256 amount);
    event ClaimAllYield(address contractAddress, address recipientOfYield);
    event ClaimAllGas(address contractAddress, address recipientOfGas);
    event ClaimGasAtMinClaimRate(address contractAddress, address recipientOfGas, uint256 minClaimRateBips);
    event ClaimMaxGas(address contractAddress, address recipientOfGas);
    event ClaimGas(address contractAddress, address recipientOfGas, uint256 gasToClaim, uint256 gasSecondsToConsume);

    // configure
    function configureContract(address contractAddress, YieldMode _yield, GasMode gasMode, address governor) external {
        emit ConfigureContract(contractAddress, _yield, gasMode, governor);
    }

    function configure(YieldMode _yield, GasMode gasMode, address governor) external {
        emit Configure(_yield, gasMode, governor);
    }

    // base configuration options
    function configureClaimableYield() external {
        emit ConfigureClaimableYield();
    }

    function configureClaimableYieldOnBehalf(address contractAddress) external {
        emit ConfigureClaimableYieldOnBehalf(contractAddress);
    }

    function configureAutomaticYield() external {
        emit ConfigureAutomaticYield();
    }

    function configureAutomaticYieldOnBehalf(address contractAddress) external {
        emit ConfigureAutomaticYieldOnBehalf(contractAddress);
    }

    function configureVoidYield() external {
        emit ConfigureVoidYield();
    }

    function configureVoidYieldOnBehalf(address contractAddress) external {
        emit ConfigureVoidYieldOnBehalf(contractAddress);
    }

    function configureClaimableGas() external {
        emit ConfigureClaimableGas();
    }

    function configureClaimableGasOnBehalf(address contractAddress) external {
        emit ConfigureClaimableGasOnBehalf(contractAddress);
    }

    function configureVoidGas() external {
        emit ConfigureVoidGas();
    }

    function configureVoidGasOnBehalf(address contractAddress) external {
        emit ConfigureVoidGasOnBehalf(contractAddress);
    }

    function configureGovernor(address _governor) external {
        emit ConfigureGovernor(_governor);
    }

    function configureGovernorOnBehalf(address _newGovernor, address contractAddress) external {
        emit ConfigureGovernorOnBehalf(_newGovernor, contractAddress);
    }

    // claim yield
    function claimYield(address contractAddress, address recipientOfYield, uint256 amount) external returns (uint256) {
        emit ClaimYield(contractAddress, recipientOfYield, amount);
        return 0;
    }

    function claimAllYield(address contractAddress, address recipientOfYield) external returns (uint256) {
        emit ClaimAllYield(contractAddress, recipientOfYield);
        return 0;
    }

    // claim gas
    function claimAllGas(address contractAddress, address recipientOfGas) external returns (uint256) {
        emit ClaimAllGas(contractAddress, recipientOfGas);
        return 0;
    }

    function claimGasAtMinClaimRate(address contractAddress, address recipientOfGas, uint256 minClaimRateBips)
        external
        returns (uint256)
    {
        emit ClaimGasAtMinClaimRate(contractAddress, recipientOfGas, minClaimRateBips);
        return 0;
    }

    function claimMaxGas(address contractAddress, address recipientOfGas) external returns (uint256) {
        emit ClaimMaxGas(contractAddress, recipientOfGas);
        return 0;
    }

    function claimGas(address contractAddress, address recipientOfGas, uint256 gasToClaim, uint256 gasSecondsToConsume)
        external
        returns (uint256)
    {
        emit ClaimGas(contractAddress, recipientOfGas, gasToClaim, gasSecondsToConsume);
        return 0;
    }

    // read functions
    function readClaimableYield(address) external pure returns (uint256) {
        return 0;
    }

    function readYieldConfiguration(address) external pure returns (uint8) {
        return 0;
    }

    function readGasParams(address)
        external
        pure
        returns (uint256 etherSeconds, uint256 etherBalance, uint256 lastUpdated, GasMode)
    {
        return (0, 0, 0, GasMode.VOID);
    }
}
