// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract SimpleDataTypesExample {
    // Boolean type
    bool public isActive = true;

    // Unsigned Integer type
    uint256 public totalSupply = 1000;

    // Signed Integer type
    int8 public balance = -10;

    // Address type
    address public owner = 0x8900B39aA32410766295AD392B6E81af5e515f22;

    // String type
    string public name = "Solidity Basic Example";

    // Function to toggle the active status (boolean)
    function toggleActive() public {
        isActive = !isActive;
    }

    // Function to update the total supply
    function updateTotalSupply(uint256 _newSupply) public {
        totalSupply = _newSupply;
    }

    // Function to set balance
    function setBalance(int8 _newBalance) public {
        balance = _newBalance;
    }

    // Function to change contract owner address
    function changeOwner(address _newOwner) public {
        owner = _newOwner;
    }
}
