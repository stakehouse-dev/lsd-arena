// SPDX-License-Identifier: MIT

pragma solidity 0.8.13;

contract MockAccountManager {
    mapping(bytes => uint256) public lifecycleStatus;
    function setLifecycleStatus(bytes calldata _blsKey, uint256 _status) external {
        lifecycleStatus[_blsKey] = _status;
    }

    function blsPublicKeyToLifecycleStatus(bytes calldata _blsPubKey) external view returns (uint256) {
        return lifecycleStatus[_blsPubKey];
    }
}