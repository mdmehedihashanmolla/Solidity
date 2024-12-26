// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract SkipOddNumbers {
    function printEvenNumbers() public pure returns (uint256[] memory) {
        uint256[] memory result = new uint256[](4); // Initialize array with size 4
        uint256 index = 0;

        for (uint256 i = 1; i <= 10; i++) {
            if (i % 2 != 0) {
                continue; // Skip odd numbers
            }
            if (i == 8) {
                break; // Exit loop when number reaches 8
            }
            result[index] = i; // Add even number to the result array
            index++;
        }

        return result;
    }
}
