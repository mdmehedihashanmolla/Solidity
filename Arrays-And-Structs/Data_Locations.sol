// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract DataLocationsExample {
    // Storage variable (persistent)
    string[] public storageArray;

    // Add to the storage array
    function addToStorageArray(string memory value) public {
        storageArray.push(value);
    }

    // Return an element from the storage array
    function getStorageElement(uint index) public view returns (string memory) {
        return storageArray[index];
    }

    // Use memory for temporary data
    function temporaryArrayExample() public pure returns (string[2] memory) {
        // Fixed-size array in memory
        string[2] memory tempArray; // Declare a fixed-size memory array
        tempArray[0] = "Hello";
        tempArray[1] = "World";
        return tempArray; // Return the array
    }

    // Use calldata for function inputs
    function calculateArrayLength(
        string[] calldata inputArray
    ) external pure returns (uint) {
        return inputArray.length;
    }
}
