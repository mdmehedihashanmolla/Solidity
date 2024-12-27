// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract Storage{
    uint256 public storeData;

    // Function to Store Data

    function set(uint256 _value) public{
        storeData = _value;
    }

    // View Function to get the stored data
    function get() public view returns (uint256){
        return storeData;
    }
}