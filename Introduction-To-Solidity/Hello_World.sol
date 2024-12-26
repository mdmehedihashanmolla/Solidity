// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {
    // state Variable
    string public message; // This will store the message

    // Constructor: Initializes the message when the contract is deployed

    constructor() {
        message = "Hello World Solidty"; // Setting an Initial Message
    }

    // Function to update the message
    function setMessage(string memory _newMessage) public {
        message = _newMessage; // Update the state variable
    }

    // Function to read the message (not required as the variable is public)

    function getMessage() public view returns (string memory) {
        return message; // returns the current message
    }
}

/*

    Specifies the license type, indicating that your code is open-source.
    pragma solidity >=0.7.0 <0.9.0;

        Ensures the contract works with Solidity versions between 0.7.0 and 0.9.0.
        contract HelloWorld { ... }

        A contract is like a class in other programming languages. It groups code into a single, deployable unit.
        State Variable: string public message;

        string: Holds text data.
        public: Automatically creates a function to read the value of message.
        Constructor: constructor() { ... }

        Initializes the contract when it’s deployed.
        Sets the message to "Hello, World!".
        Function: setMessage(string memory _newMessage)

        Lets anyone update the message.
        memory: Indicates the new message is temporary (used only during the function execution).
        Function: getMessage()

        Returns the current message.
        view: Ensures it only reads data and doesn’t modify the blockchain.
        returns (string memory): Specifies the return type.
*/
