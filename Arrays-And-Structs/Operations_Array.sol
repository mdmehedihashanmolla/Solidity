// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract ArrayOperations{
    uint[] public numbers;

    // Add a number to the array
    function addNumber(uint num) public{
        numbers.push(num);
    }

    // Remove the last number from the array
    function removeLastNumber() public{
        require(numbers.length > 0, "Array is Empty");
        numbers.pop();
    }
    // Iterate over the array and return all elements

    function getAllNumbers() public view returns (uint[] memory){
        return numbers;
    }
    // Get the length of the array

    function getLength() public view returns(uint){
        return numbers.length;
    }


}