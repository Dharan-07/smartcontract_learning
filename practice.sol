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

     function getcontacts(string memory _name) public view returns(uint256, string memory, string memory) {
        for (uint256 i = 0; i < contacts.length; i++) {
            if (keccak256(bytes(contacts[i].name)) == keccak256(bytes(_name))) {
                return (contacts[i].num, contacts[i].name, contacts[i].nickName);
            }
        }
        revert("Contact not found");
    }

    function getContact(uint256 _index)public view returns (uint256,string memory,string memory){
        return (contacts[_index].num,contacts[_index].name,contacts[_index].nickName);
    }
}