// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import { Foo } from "../src/Foo.sol";
import { DCACore } from "../src/DCACore.sol";
import { DCACoreResolver } from "../src/DCACoreResolver.sol";

import { BaseScript } from "./Base.s.sol";
import { Script } from "forge-std/src/Script.sol";

// sepolia env variables
address constant SEPOLIA_UNISWAP_ROUTER_2 = 0xC532a74256D3Db42D0Bf7a0400fEFDbad7694008;
address constant SEPOLIA_WETH = 0x7b79995e5f793A07Bc00c21412e50Ecae098E7f9;
address constant SEPOLIA_MIND_GOBLIN = ;


/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
contract Deploy is Script {
    function run() external returns (DCACore dcaCore, DCACoreResolver dcaCoreResolver) {
        uint256 deployerPrivateKey = vm.envUint("SEPOLIA_PRIVATE_KEY");

        // deploy erc20
        

        // add uni v2 liquidity

        // deploy DCA Core
        DCACore dcaCore = new DCACore();

        DCACoreResolver dcaCoreResolver = new DCACoreResolver(address(dcaCore), SEPOLIA_UNISWAP_ROUTER_2);
    }
}
/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
// contract Deploy is BaseScript {
//     function run() public broadcast returns (Foo foo) {
//         foo = new Foo();
//     }
// }
