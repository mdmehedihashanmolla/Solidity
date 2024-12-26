// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract storageMemory {
    // state Variable (Stored in Storage)
    uint256[] public numbers;

    // Function using Storage and Memory

    function manipulateData() public {
        // Use 'Storage': Modify the state variable directly
        numbers.push(1);
        numbers.push(2);

        // Use 'Memory': Temporary copy of the array (doesn't presist changes)
        uint256[] memory tempArray = numbers;
        tempArray[0] = 10; // Change in memory does not affect the original storage array
    }
    // Functoin demonstrating stack (local variables)

    function addNumbers(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result = a + b; // Stored in Stack
        return result; // Discarded after execution
    }
}
