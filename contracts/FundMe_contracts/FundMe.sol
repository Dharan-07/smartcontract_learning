// get fund from the user
// withdraw funds
// set a minimum funding vaule in usd

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
contract FundMe {
    uint256 public minimumUSD = 5;
    function fund() public payable{
        // allow users to send $
        // have a mini value $
        // how we send ETH ?
        require(msg.value >= minimumUSD, "ur sending low value"/*error msg*/); // 1e18 = 1 ETH = 1000000000000000000 (wei) = 1*10^18 0r in code 1*10**18
    }

   // function withdraw() public {}
   
    function getPrice() public view returns (uint256) {
        // address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // abi
        AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (, int256 answer,,, ) = priceFeed.latestRoundData();
        // answer = price of ETH in terms of USD
        return uint256(answer * 1e10);
    }
    
    function getConvertionRate() public {}

    function getVersion() public view returns(uint256) {
       return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version(); 
    } // In this function we are using the version() from the AggregatorV3Interface contract with the help of contract address interface and ABI
}

// what is revert ?
// undo any action that have been done and send the remaining gas back
