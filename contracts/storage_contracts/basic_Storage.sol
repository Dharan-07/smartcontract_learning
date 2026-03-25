//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; 
 
contract SimpleStorage {

    uint256 public favNumber = 6/* this is a state variable*/; // this used to create value in the blockchain {default value 0}

    function store (uint256 _favNumber/* this is a local variable */) public {
        favNumber = _favNumber;
    } // this function use to update the state variable called favNumber
    
// special key word for function => view , pure
// view { read state from the blockchain , disallow to update the state}
// pure { disallow both reading the state and update the state}

    function retrieve() public view returns (uint256) {
        return favNumber;
    } // this function used to retrieve the modified value 

}