//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {PriceConverter} from "./PriceConverter.sol";

contract FundMe {

    using PriceConverter for uint256;
   
    uint256 public minimumUSD = 5e18;
    
    address [] public funders;

    mapping( address => uint256 ) public addressToAmountFunded;

    function fund() public payable{
        require(msg.value.getConvertionRate() >= minimumUSD, "ur sending low value"/*error msg*/); // 1e18 = 1 ETH = 1000000000000000000 (wei) = 1*10^18 0r in code 1*10**18
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = addressToAmountFunded[msg.sender] + msg.value; 
    }
    
    function withdraw() public {}

}

