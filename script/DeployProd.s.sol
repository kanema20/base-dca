// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import { Foo } from "../src/Foo.sol";
import { DCACore } from "../src/DCACore.sol";
import { DCACoreResolver } from "../src/DCACoreResolver.sol";

import { BaseScript } from "./Base.s.sol";
import { Script } from "forge-std/src/Script.sol";

// base env variables
address constant BASE_UNISWAP_ROUTER_2 = 0x4752ba5DBc23f44D87826276BF6Fd6b1C372aD24;
address constant WETH_BASE = 0x4200000000000000000000000000000000000006;
address constant MIND_GOBLIN = 0x74575a6D8B0172640F2752C39B1c2c872BD1c600;

/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
contract Deploy is Script {
    function run() external returns (DCACore dcaCore, DCACoreResolver dcaCoreResolver) {
        uint256 deployerPrivateKey = vm.envUint("BASE_PRIVATE_KEY");

        // deploy DCA Core
    }
}
/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
// contract Deploy is BaseScript {
//     function run() public broadcast returns (Foo foo) {
//         foo = new Foo();
//     }
// }
