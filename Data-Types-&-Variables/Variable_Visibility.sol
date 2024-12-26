// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract VariableVisibility {
    // Public Variable (accessible outside and inside the contract)
    uint256 public publicVariable = 100;

    // Internal Variable (accessible inside and in derived contract)
    uint256 internal internalVariable = 200;

    // Private Variable (accessible only inside this contract)
    uint256 private privateVariable = 300;

    // Function to access the private variable
    function getPrivateVariable() public view returns (uint256) {
        return privateVariable; // Access private variable within this contract
    }
    // Function to access the internal variable
    function getInternalVariable() public view returns (uint256) {
        return internalVariable; // Access internal variable within the contract
    }
}

contract DerivedContract is VariableVisibility {
    // Accessing internal variable from the parent contract
    function getParentInternalVariable() public view returns (uint256) {
        return internalVariable; // Accessible because it is internal
    }
}
