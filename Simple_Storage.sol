//SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; 
 
contract SimpleStorage {

    uint256 myFavNumber ;

    // uint256[] listOfFavNum; // array of 256 bit unsigned integers

    struct Person {
        uint256 favNumber;
        string name;
    } // create a new type Person using struct

    Person[] public listOfPeople; // array of type Person

    // Person public CR7 /* veriable of type Person */ = Person({favNumber : 7, name : "ronaldo"});

    mapping(string => uint256) public nameToFavNumber;

    function store (uint256 _favNumber) public {
        myFavNumber = _favNumber;
    }  // this function use to update the state variable called favNumber

    function retrieve() public view returns (uint256) {
        return myFavNumber;
    } // this function used to retrieve the modified value 

    function addPerson(string memory _name, uint256 _favNumber) public {
        listOfPeople.push( Person(_favNumber,_name));
        nameToFavNumber [_name] = _favNumber;
    } 
}