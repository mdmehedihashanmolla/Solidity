// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Countdown {
    function countDown(uint256 n) public pure returns (uint256[] memory) {
        uint256[] memory result = new uint256[](n + 1);
        uint256 index = 0;

        for (uint256 i = n; i >= 0; i--) {
            result[index] = i;
            index++;
            if (i == 0) {
                // Avoid underflow
                break;
            }
        }

        return result;
    }
}
