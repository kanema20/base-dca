// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import { Foo } from "../src/Foo.sol";
import { DCACore } from "../src/DCACore.sol";
import { DCACoreResolver } from "../src/DCACoreResolver.sol";

import { BaseScript } from "./Base.s.sol";
import { Script } from "lib/forge-std/src/Script.sol";

// sepolia env variables
address constant SEPOLIA_UNISWAP_ROUTER_2 = 0xC532a74256D3Db42D0Bf7a0400fEFDbad7694008;
address constant SEPOLIA_WETH = 0xfFf9976782d46CC05630D1f6eBAb18b2324d6B14;
address constant SEPOLIA_MIND_GOBLIN = 0x74575a6D8B0172640F2752C39B1c2c872BD1c600;


/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
contract Deploy is Script {
    function run() external returns (DCACore dcaCore, DCACoreResolver dcaCoreResolver) {
        uint256 deployerPrivateKey = vm.envUint("SEPOLIA_PRIVATE_KEY");

        // deploy erc20
        // add uni v2 liquidity

        // deploy DCA Core
        DCACore dcaCore = new DCACore(SEPOLIA_UNISWAP_ROUTER_2, msg.sender, SEPOLIA_WETH, msg.sender);
        DCACoreResolver dcaCoreResolver = new DCACoreResolver(address(dcaCore), SEPOLIA_UNISWAP_ROUTER_2);

        // create position and deposit

        // create task?
        return (dcaCore, dcaCoreResolver);
    }
}
/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
// contract Deploy is BaseScript {
//     function run() public broadcast returns (Foo foo) {
//         foo = new Foo();
//     }
// }
