// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
An interface in Solidity defines the structure of a contract without implementation. 
They ensure standardization and are used to interact with other contracts.
Key Points
Cannot contain state variables or constructor definitions.
All functions must be external.
Used in protocols like ERC-20 to standardize token interfaces.


 */


interface IToken {
    function transfer(address recipient, uint256 amount) external returns (bool);
    function balanceOf(address account) external view returns (uint256);
}

contract TokenInteraction {
    IToken public token;

    constructor(address tokenAddress) {
        token = IToken(tokenAddress);
    }

    function checkBalance(address user) public view returns (uint256) {
        return token.balanceOf(user);
    }

    function sendTokens(address recipient, uint256 amount) public returns (bool) {
        return token.transfer(recipient, amount);
    }
}
