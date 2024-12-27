// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract ArrayExample{
    // Static array of fixed size
    uint[3] public staticArray = [1,2,3];
    // Dynamic array that can grow or shirnk
    uint[] public dynamicArray;
    // Functions to add elements to the dynamic array
    function addDynamicArray(uint value) public{
        dynamicArray.push(value);
    }
    // Functions to get the length of the dynamic array
    function getDynamicArrayLength() public view returns(uint){
        return dynamicArray.length;
    }


}