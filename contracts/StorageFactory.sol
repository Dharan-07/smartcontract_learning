//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

//import "./Simple_Storage.sol"; // for importing whole file
import {SimpleStorage} from "./Simple_Storage.sol"; // for importing specific contract
//import {SimpleStorage , importexample} from "./Simple_Storage.sol"; // for importing multiple contracts specifically

contract StorageFactory{
    
    SimpleStorage[] public listOfSimpleStorageContracts; // to store list of contract addresses

    function createSimpleStorageContract () public {

        SimpleStorage newSimpleStorageContract = new SimpleStorage(); // to create new contract from other contract
        listOfSimpleStorageContracts.push(newSimpleStorageContract); // to add new contract address to array
    }

    function sfStore(uint256 _simpleStorageIndex,uint256 _newSimpleStorageNumber) public {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex]; // to get contract address from array
        mySimpleStorage.store(_newSimpleStorageNumber); // to interact with function from other 
    } // to interact with specific function from other contract for that we need address and ABI (Application Binary Interface)

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) { 
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex]; 
        return mySimpleStorage.retrieve(); 
    } 

/*
function sfGet(uint256 _simpleStorageIndex) public view returns(uint256) { 
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve(); 
    } 
*/ // we can get like this

} 