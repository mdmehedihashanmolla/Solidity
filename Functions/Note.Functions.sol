// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
 * This contract demonstrates the different types of functions in Solidity:
 * 1. Regular Solidity Functions
 * 2. Function Modifiers
 * 3. Pure Functions
 * 4. View Functions
 * 5. Fallback Function
 * 6. Restricted Access
 */
contract FunctionExamples {
    // Regular Solidity Function
    /*
     * A simple function to store and retrieve a value.
     * Visibility: Public, meaning it can be accessed externally.
     * Mutates the state of the contract by setting the `storedValue` variable.
     */
    uint256 private storedValue;

    function setValue(uint256 _value) public {
        storedValue = _value;
    }

    function getValue() public view returns (uint256) {
        return storedValue; // View function to read the state
    }

    // Function Modifier
    /*
     * Modifiers allow you to define custom behavior to restrict access or validate conditions
     * before executing the function body. They improve code reusability and readability.
     */
    address public owner;

    constructor() {
        owner = msg.sender; // Set the deployer of the contract as the owner
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _; // Placeholder for the function body
    }

    function restrictedFunction() public onlyOwner {
        // Code that only the owner can execute
    }

    // Pure Function
    /*
     * A pure function performs calculations using input parameters
     * without reading or modifying the blockchain state.
     */
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    // View Function
    /*
     * A view function allows reading state variables but does not modify the blockchain state.
     * Useful for querying data without incurring gas costs when called externally.
     */
    function getStoredValue() public view returns (uint256) {
        return storedValue; // Reads the `storedValue` variable
    }

    // Fallback Function
    /*
     * A fallback function is a special function triggered when:
     * - Ether is sent to the contract without any data
     * - A non-existent function is called on the contract
     * It must be marked `payable` to accept Ether.
     */
    fallback() external payable {
        // Code to handle calls to non-existent functions or Ether transfer
    }

    receive() external payable {
        // Specific function to handle direct Ether transfers without data
    }

    // Restricted Access
    /*
     * Restricted access ensures only authorized accounts can perform specific actions.
     * This is typically implemented using `require` and modifiers.
     */
    modifier onlyAuthorized(address _authorized) {
        require(msg.sender == _authorized, "Not authorized");
        _;
    }

    function changeOwner(address _newOwner) public onlyOwner {
        owner = _newOwner; // Change ownership of the contract
    }
}
