// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract VariableTypeExample {
    // state Variable (stored on the blockchain)
    uint256 public stateVariable = 100;

    // Function demonstrating Local and Global Variables

    function variableTypes() public view returns (uint256, address) {
        uint256 localVariable = 50; // Local Variable (not stored on the blockchain)
        address sender = msg.sender; // Global Variable (sender of the transaction)

        return (localVariable + stateVariable, sender);
    }
}
