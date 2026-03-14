//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import {practice} from "./practice.sol";

contract practicefactory{

    practice public Practice;

    function createpracticecontract() public{
        Practice = new practice();
    }
}