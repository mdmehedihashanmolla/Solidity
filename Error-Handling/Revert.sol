// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract RevertExample{
    mapping(address => uint256) public balances;

    function deposit() public payable{
        balances[msg.sender] += msg.value;
    }
    function transfer(address to, uint256 amount) public{
        if(balances[msg.sender]<amount){
            revert("Insufficient funds to transfer");
        }
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }
}