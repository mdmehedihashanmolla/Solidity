// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract AgeEligibility{
    function checkEligibility(uint256 age) public pure returns (string memory){
        if(age < 18){
            return "Not Eligable";
        }else if (age >= 18 && age <=60){
            return "Eligible for 10% Discount";
        }else{
            return "Eligable for 20% Discount";
        }
    }
}