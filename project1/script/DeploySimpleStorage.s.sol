// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        vm.startBroadcast(); // Everything after this is broadcasted to the network
        SimpleStorage simpleStorage = new SimpleStorage();
        vm.stopBroadcast();
        return simpleStorage;
    }
}

// forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url $RPC_URL --private-key --broadcast --private-key $PRIVATE_KEY
// forge script script/DeploySimpleStorage.s.sol:DeploySimpleStorage --rpc-url $RPC_URL --private-key --broadcast --private-key --account defaultKey --sender #AddressOfSender -vvvv
// cast --to-base 0x714c2 dec
// transaction: r, s, v == private key signature
// cast wallet import defaultKey --interactive
// history -c
// rm .bash_history
// cast send %ADDRESS "store(uint256)" 123 --private-key $PRIVATE_KEY --rpc-url $RPC_URL
// cast call %ADDRESS "retrieve()" --rpc-url $RPC_URL
// foundryup-zksync
// foundryup
// anvil
// anvil-zksync