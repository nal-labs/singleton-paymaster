// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "forge-std/Script.sol";
import "../src/SingletonPaymasterV6.sol";

contract SinglePmV6 is Script {
    function run() external {
        uint256 deployerPrivateKey = 0x480f7c069a5cc5aef2ccee522fcd2712a7a86db1cfd73c0e9089cc514a1faddb;
        vm.startBroadcast(deployerPrivateKey);

        address[] memory signers = new address[](1);

        signers[0] = 0xBDA54E9DFcD503aAC703e32A99E3c37938f291E5;
        SingletonPaymasterV6 singlePmV6 = new SingletonPaymasterV6(0x5FF137D4b0FDCD49DcA30c7CF57E578a026d2789, 0xBDA54E9DFcD503aAC703e32A99E3c37938f291E5, signers);

        vm.stopBroadcast();
    }
}