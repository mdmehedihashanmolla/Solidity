// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Admin{
    address public admin;


    constructor(){
        admin = msg.sender; // Assign admin to the contract deployer
    }
    modifier onlyAdmin(){
        require(msg.sender == admin, "Not an admin");
        _;
    }
    function changeAdmin(address newAdmin) public onlyAdmin(){
        admin = newAdmin;
    }
}

contract User is Admin{
    mapping(address => bool) public users;

    function addUser(address user) public onlyAdmin{
        users[user] = true;
    }
    function removeUser(address user)public onlyAdmin{
        users[user] = false;
    }
}