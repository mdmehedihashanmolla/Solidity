// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract RequireExample{
    mapping (address=>uint256) public balances;

    function deposit() public payable{
        balances[msg.sender] += msg.value;
    }
    function withdraw(uint256 amount) public{
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }
}