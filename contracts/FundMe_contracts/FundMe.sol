// get fund from the user
// withdraw funds
// set a minimum funding vaule in usd

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract FundMe {
    function fund() public payable{
        // allow users to send $
        // have a mini value $
        // how we send ETH ?
        require(msg.value >= 1e18, "ur sending low value"/*error msg*/); // 1e18 = 1 ETH = 1000000000000000000 (wei) = 1*10^18 0r in code 1*10**18
    }

    function withdraw() public {}

}

// what is revert ?
// undo any action that have been done and send the remaining gas back
