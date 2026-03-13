//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract practice{

    struct person{
        uint256 num;
        string name;
        string nickName;
    }

    person[] private contacts;

    mapping(string => uint256) public findNumByName ;

    function addToContacts(uint256 _num, string memory _name, string memory _nickName) public {
        contacts.push(person(_num,_name,_nickName));
        findNumByName[_name] = _num;
    }
}