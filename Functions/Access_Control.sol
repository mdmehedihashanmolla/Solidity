// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract ModifierExample {
    address public owner;

    constructor() {
        owner = msg.sender; // The creator of the contract becomes the owner
    }

    // Modifier to restrict access to the owner only

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }
    // Function that  can only be called by the owner

    function restrictedFunction() public onlyOwner {
        // code only accessible by the owner
    }
}
