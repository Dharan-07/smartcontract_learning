//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

contract training{

    struct person {
        uint256 num;
        string name;
        string nickName;
    }

    person[] private contacts ;

    mapping(string _name => uint256 _num) public findByName ;

    function addToContact(uint256 _num, string memory _name, string memory _nickName)public{
        contacts.push(person(_num,_name,_nickName));
        findByName[_name]=_num;
    }

    function getContact(uint256 _index)public view returns (uint256,string memory,string memory){
        return (contacts[_index].num,contacts[_index].name,contacts[_index].nickName);
    }
    
}