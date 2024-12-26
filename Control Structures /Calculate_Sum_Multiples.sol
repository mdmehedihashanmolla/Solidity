// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract SumofMultiples {
    function calculateSum(
        uint256 number,
        uint256 limit
    ) public pure returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = number; i <= limit; i += number) {
            sum += i;
        }
        return sum;
    }
}
