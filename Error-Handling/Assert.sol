// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract AssertExample {
    uint256 public totalSupply;

    constructor() {
        totalSupply = 1000; // Initialize supply
    }

    function safeAdd(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result = a + b;
        assert(result >= a); // Ensure no overflow
        return result;
    }
    function testInvariant() public view {
        assert(totalSupply == 1000); // Total Supply should always be 1000
    }
}
