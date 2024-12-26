// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
In Solidity, variables are used to store data that can be referenced and modified by the contract. 
Understanding variables is fundamental to writing smart contracts because they determine how data is stored, accessed, and manipulated.

Types of Variables in Solidity:
1. State Variables: Variables that are stored on the blockchain.
2. Local Variables: Variables that are declared inside a function and are not stored on the blockchain.
3. Global Variables: Special variables provided by Solidity that give information about the blockchain environment.

Let’s break each one down:

1. State Variables
State variables are declared at the contract level and are permanently stored in the blockchain. These variables are the data that the contract keeps track of, such as balances, contract ownership, and any other information that needs to persist across function calls.

Characteristics of State Variables:
- They are stored on the blockchain, meaning they incur gas costs when written to or modified.
- They persist between function calls.
- You can access them anywhere within the contract.

Example:

pragma solidity >=0.7.0 <0.9.0;

contract StateVariablesExample {
    uint256 public totalSupply = 1000;  // State variable

    function updateTotalSupply(uint256 _newSupply) public {
        totalSupply = _newSupply;  // Modifying the state variable
    }
}

Here, totalSupply is a state variable. Its value is stored on the blockchain and persists between function calls.

2. Local Variables
Local variables are declared inside functions and are not stored on the blockchain. They exist only while the function is executing and are discarded once the function execution is complete. Local variables are cheaper to use because they don't involve storing data on the blockchain.

Characteristics of Local Variables:
- They only exist during the function execution.
- They do not cost gas to store because they are not stored on the blockchain.
- They are faster to access than state variables.

Example:

pragma solidity >=0.7.0 <0.9.0;

contract LocalVariablesExample {

    function calculateSum(uint256 _a, uint256 _b) public pure returns (uint256) {
        uint256 sum = _a + _b;  // Local variable
        return sum;  // The value of sum is only available during this function call
    }
}

In this example, the variable sum is a local variable. It’s created when the calculateSum function is called and destroyed after the function completes.

3. Global Variables
Solidity provides global variables that give information about the blockchain environment, such as block details, transaction information, and contract details. These are read-only and don't need to be declared.

Key Global Variables:
- msg.sender: The address of the account that called the contract function (i.e., the transaction sender).
- msg.value: The amount of Ether sent with a transaction.
- block.timestamp: The current block timestamp (in seconds).
- block.number: The block number of the current block.
- address(this): The address of the current contract.
- gasleft(): The amount of gas left for the current transaction.

Example:

pragma solidity >=0.7.0 <0.9.0;

contract GlobalVariablesExample {

    // Function to retrieve sender address and the amount of Ether sent
    function getTransactionDetails() public payable returns (address, uint256) {
        address sender = msg.sender;  // Global variable
        uint256 amountSent = msg.value;  // Global variable

        return (sender, amountSent);  // Return the sender's address and sent amount
    }

    // Function to get current block number
    function getCurrentBlockNumber() public view returns (uint256) {
        return block.number;  // Global variable
    }
}

In this example:
- msg.sender gives the address of the account sending the transaction.
- msg.value gives the amount of Ether sent with the transaction.
- block.number gives the current block number.

4. Visibility of Variables
The visibility of a variable determines where and how it can be accessed in the contract. Solidity provides four types of visibility:
- public: The variable is visible inside and outside the contract.
- internal: The variable is visible inside the contract and derived contracts, but not externally.
- private: The variable is visible only inside the contract it’s declared in.
- external: Typically used for functions, not variables. It indicates the variable can only be accessed from outside the contract.

Example of Visibility:

pragma solidity >=0.7.0 <0.9.0;

contract VisibilityExample {
    uint256 public totalSupply = 1000;   // Public state variable
    uint256 internal internalSupply = 500;  // Internal state variable
    uint256 private privateSupply = 200;  // Private state variable

    function getInternalSupply() public view returns (uint256) {
        return internalSupply;  // Can access internal variable inside the contract
    }

    function getPrivateSupply() public view returns (uint256) {
        return privateSupply;  // Can access private variable inside the contract
    }
}

- totalSupply is public and accessible outside the contract.
- internalSupply is internal and can only be accessed inside the contract and derived contracts.
- privateSupply is private and can only be accessed within the same contract.

5. Storage vs. Memory vs. Stack
In Solidity, variables are stored in one of the following three locations:
- Storage: Variables stored on the blockchain (state variables).
- Memory: Temporary variables that exist only during function execution (local variables).
- Stack: Used for small data like function arguments, and local variables that fit within the stack limit.

Differences:
- Storage is more expensive in terms of gas.
- Memory is cheaper to use than Storage, but data is not saved permanently.
- Stack is the fastest and cheapest, but has limitations on size.

Example:

pragma solidity >=0.7.0 <0.9.0;

contract StorageMemoryExample {

    uint256 public stateVariable;  // This is a state variable (storage)

    function updateStorage(uint256 _value) public {
        stateVariable = _value;  // Update state variable (storage)
    }

    function calculateSum(uint256 _a, uint256 _b) public pure returns (uint256) {
        uint256 sum = _a + _b;  // This is a local variable (memory)
        return sum;
    }
}

In this contract:
- stateVariable is a state variable, stored in Storage.
- sum is a local variable, stored in Memory.

Key Takeaways:
- State Variables: Stored on the blockchain, persist across function calls, and incur gas costs when modified.
- Local Variables: Only exist during function execution, do not persist, and are cheaper to use.
- Global Variables: Special variables provided by Solidity to interact with the blockchain.
- Visibility: You can control the access to variables using public, internal, and private.
- Storage, Memory, and Stack: These are locations where variables are stored, with varying costs and persistence.

Understanding these variable types and their properties will help you write more efficient and optimized Solidity contracts. Let me know if you need further clarification or examples!
*/
