// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract EvenNumbers {
    function printEvenNumbers(
        uint256 n
    ) public pure returns (uint256[] memory) {
        uint256 size = n/2 + 1;
        uint256[] memory result = new uint256[](size);
        uint256 index = 0;

        for (uint256 i = 0; i <= n; i += 2) {
            result[index] = i;
            index++;
        }
        return result;
    }
}
