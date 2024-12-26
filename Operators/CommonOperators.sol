// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract CommonOperators {
    // Arithmetic Operators Example
    function calculateReward(
        uint256 baseReward,
        uint256 multiplier
    ) public pure returns (uint256) {
        uint256 totalReward = baseReward * multiplier; // Multipilication
        uint256 bonus = totalReward / 10; // Division
        uint256 finalReward = totalReward + bonus;
        return finalReward;
    }

    // Comparison Operators Example

    function isEligable(
        uint256 balnace,
        uint256 requiredBalance
    ) public pure returns (bool) {
        return balnace >= requiredBalance; // Check if balance meets or exceeds required amount
    }

    // Logical Operator Example

    function canWitbhdraw(
        bool isAccountActive,
        bool hasSufficientBalance
    ) public pure returns (bool) {
        return isAccountActive && hasSufficientBalance; // Both Condition must be true
    }

    // Assignment Operators Example

    function updateBalance(
        uint256 currentBalance,
        uint256 amount
    ) public pure returns (uint256) {
        currentBalance += amount;
        return currentBalance;
    }
    // Conditional (Ternary) Operator Example
    function getStatusMessage(
        bool isActive
    ) public pure returns (string memory) {
        return isActive ? "Active" : "Inactive"; // Ternary Operator to decide the status message
    }
}
