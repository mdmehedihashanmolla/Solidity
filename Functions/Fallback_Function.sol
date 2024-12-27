// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract EtherReceiver {
    uint256 public totalReceived; // Tracks total Ether received
    string public lastFunctionCalled; // Tracks the last function triggered

    // Fallback function to handle calls with data or unmatched functions
    fallback() external payable {
        totalReceived += msg.value; // Increment total received Ether
        lastFunctionCalled = "Fallback"; // Log that the fallback was triggered
    }

    // Receive function to handle plain Ether transfers
    receive() external payable {
        totalReceived += msg.value; // Increment total received Ether
        lastFunctionCalled = "Receive"; // Log that the receive function was triggered
    }

    // Function to check contract's Ether balance
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

/*
Explanation of Keywords:

1. fallback():
   - Purpose: Used in proxy contracts to forward calls to another implementation contract.
   - When to Use: 
     - To handle calls with no matching function signature.
     - To log or redirect invalid calls.
     - To receive Ether (if marked as payable).

2. external:
   - Purpose: Used for functions meant to be accessed only from outside the contract.
   - When to Use:
     - For public API endpoints.
     - For interactions between contracts.
     - To optimize gas costs for external calls.

3. payable:
   - Purpose: Required when implementing a payment gateway or any contract that involves handling Ether.
   - When to Use:
     - To accept Ether in functions or fallback/receive handlers.
     - For deposit, payment, or crowdfunding mechanisms.
*/
