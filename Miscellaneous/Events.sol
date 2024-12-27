// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
  Blockchain Events
  -----------------
  Events are used to log data on the blockchain, enabling lightweight communication 
  between smart contracts and external applications. These logs are stored in the transaction receipt.

  Overview:
  ---------
  - Events cannot be directly accessed from within the contract.
  - External applications (like dApps) can listen to these events.
  - The `emit` keyword is used to trigger an event, which logs data on the blockchain.
  - Event data is stored in transaction receipts and can be read by external applications (e.g., dApps) or services (e.g., The Graph).

  Key Features and Benefits:
  ---------------------------
  - **Purpose:** Events serve as a notification mechanism for off-chain systems about important actions taken in the contract.
  - **Usage:** Events help track transactions, state changes, or other significant events without consuming on-chain storage, making them a cost-effective solution for logging.
  
  Advanced Features:
  ------------------
  - The `indexed` keyword can be used to filter events by specific arguments efficiently, enabling better event filtering and searching capabilities.
*/

contract Bank {
    mapping(address => uint256) public balances;

    // Events
    event Deposit(address indexed user, uint256 amount);
    event Withdrawal(address indexed user, uint256 amount);

    function deposit() public payable {
        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value); // Log the deposit
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdrawal(msg.sender, amount); // Log the withdrawal
    }
}
