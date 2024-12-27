// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
The selfdestruct function is used to destroy a contract and send its remaining 
Ether balance to a specified address.

Key Characteristics:

Frees up storage on the blockchain.

Sends any remaining balance to a specified address.

Should be used cautiously to avoid accidental destruction.

*/

contract SelfDestructExample {
    address public owner;
    bool public isDestroyed;

    event ContractDestroyed(address indexed owner, uint256 balance);

    constructor() {
        owner = msg.sender;
        isDestroyed = true;
    }

    function destroyContract() public {
        require(msg.sender == owner, "Only owner can destroy the contract");
        require(!isDestroyed, "Contract already destroyed");

        isDestroyed = true;
        uint256 balance = address(this).balance;

        if (balance > 0) {
            (bool success, ) = owner.call{value: balance}("");
            require(success, "Transfer failed");
        }

        emit ContractDestroyed(owner, balance);
    }
}
