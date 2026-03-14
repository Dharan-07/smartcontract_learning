//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {practice} from "./practice.sol";

contract practicefactory{

    practice[] public listofpracticecontract;

    function createpracticecontract() public{
        practice newpracticecontract= new practice();
        listofpracticecontract.push(newpracticecontract);
    }

    function pfStore(uint256 _practiceIndex, uint256 _newPracticeNumber) public { //to store the practice number in the practice contract
    practice mypractice = listofpracticecontract[_practiceIndex];
    mypractice.store(_newPracticeNumber);
    // or listofpracticecontract[_practiceIndex].store(_newPracticeNumber);
    }

    function pfGet(uint256 _practiceIndex) public view returns (uint256) {
        practice mypractice = listofpracticecontract[_practiceIndex];
        return mypractice.retrieve();
    // or  return listofpracticecontract[_practiceIndex].retrieve();
    }
/*
    function getpracticecontract(uint index) public view returns(practice){
        return listofpracticecontract[index];
    }// to get the address of the practice contract by index
    */
}