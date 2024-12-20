// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Script} from "lib/forge-std/src/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}

// contract DeployFundMe is Script {
//     function deployFundMe() public returns (FundMe, HelperConfig) {
//         HelperConfig helperConfig = new HelperConfig(); // This comes with our mocks!
//         address priceFeed = helperConfig
//             .getConfigByChainId(block.chainid)
//             .priceFeed;

//         vm.startBroadcast();
//         FundMe fundMe = new FundMe(priceFeed);
//         vm.stopBroadcast();
//         return (fundMe, helperConfig);
//     }

//     function run() external returns (FundMe, HelperConfig) {
//         return deployFundMe();
//     }
// }
