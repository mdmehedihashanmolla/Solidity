// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Solidity Mapping Guide
 * @notice Comprehensive guide on Solidity mappings, their operations, and use cases
 *
 * 1. MAPPING FUNDAMENTALS
 * ------------------------
 * A mapping is a key-value storage structure in Solidity, similar to dictionaries
 * or hash tables in other languages. They offer efficient storage and retrieval.
 *
 * Syntax:
 * mapping(KeyType => ValueType) public myMapping;
 *
 * Example:
 * mapping(address => uint256) public balances;  // Maps addresses to balances
 *
 * Real-World Application:
 * - Online store customer balances
 * - Each customer address maps to their store credit balance
 *
 * 2. MAPPING OPERATIONS
 * ---------------------
 * Setting Values:
 * function setBalance(address user, uint256 amount) public {
 *     balances[user] = amount;  // Assigns balance to user address
 * }
 *
 * Getting Values:
 * function getBalance(address user) public view returns (uint256) {
 *     return balances[user];  // Retrieves user's balance
 * }
 *
 * Deleting Values:
 * function resetBalance(address user) public {
 *     delete balances[user];  // Resets balance to 0
 * }
 *
 * Real-World Usage:
 * - setBalance: Admin updates customer credit
 * - getBalance: Customer checks their balance
 * - resetBalance: Remove user credit
 *
 * 3. ITERABLE MAPPINGS
 * --------------------
 * Standard mappings aren't iterable. Solution: maintain a separate array of keys.
 *
 * Implementation:
 * mapping(address => uint256) public balances;
 * address[] public users;
 *
 * function addUser(address user, uint256 balance) public {
 *     if (balances[user] == 0) {
 *         users.push(user);     // Track new user
 *     }
 *     balances[user] = balance; // Set balance
 * }
 *
 * function getUsers() public view returns (address[] memory) {
 *     return users;
 * }
 *
 * Real-World Example:
 * - Leaderboard system storing player scores
 * - Mapping tracks scores, array enables listing all players
 *
 * USAGE GUIDELINES
 * ---------------
 * - Basic Mapping: For efficient key-value storage (user balances, permissions)
 * - Operations: Store, retrieve, and delete based on unique keys
 * - Iterable Mapping: When needing to process all entries, use supplementary array
 */
