// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
Definition:

Constructors are special functions in Solidity that are executed only once when a contract is deployed. 
They are used to initialize the state variables of a contract.

Key Characteristics:
Only one constructor is allowed per contract.
Cannot be called again after deployment.

Parameters can be passed during deployment to set initial values.
*/

contract Token{
    string public name;
    uint256 public totalSupply;

    constructor (string memory _name, uint256 _totalSupply){
        name = _name; // Initialize the token name
        totalSupply = _totalSupply; // Initialize the token supply

    }
}