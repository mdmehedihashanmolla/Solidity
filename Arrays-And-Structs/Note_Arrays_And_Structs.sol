// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0

/*
Explanation of Arrays, Structs, and Data Locations:

1. Arrays:
   - Definition: Arrays are collections of elements of the same type.
   - Types:
     a. Static Arrays: Fixed size, cannot grow or shrink.
     b. Dynamic Arrays: Flexible size, can grow or shrink.
   - Use Case:
     - Storing user IDs, balances, or transaction details in a blockchain system.

   Example:
     uint[3] public staticArray = [1, 2, 3];  // Static Array
     uint[] public dynamicArray;             // Dynamic Array
     
     function addToArray(uint value) public {
         dynamicArray.push(value);           // Adding elements to a dynamic array
     }

2. Static vs Dynamic Arrays:
   - Static Arrays:
     - Fixed size defined at declaration.
     - Example: uint[3] staticArray = [1, 2, 3];
   - Dynamic Arrays:
     - Resizable.
     - Example: uint[] dynamicArray;

   Real-Life Example:
     - Static Array: Top 3 scorers in a game.
     - Dynamic Array: List of all players joining a game dynamically.

3. Operations on Arrays:
   - Add Elements:
     - Use `.push()` for dynamic arrays.
   - Remove Elements:
     - Use `.pop()` to remove the last element (dynamic arrays only).
   - Iterate:
     - Use loops to access array elements.
   - Get Length:
     - Use `.length` property.

   Example:
     uint[] public numbers;

     function addNumber(uint num) public {
         numbers.push(num);
     }

     function getNumbers() public view returns (uint[] memory) {
         return numbers;
     }

4. Structs:
   - Definition: Custom data types to group related data.
   - Purpose: Manage complex data efficiently.

   Example:
     struct Student {
         string name;
         uint age;
         string course;
     }

     Student public student;

     function setStudent(string memory _name, uint _age, string memory _course) public {
         student = Student(_name, _age, _course);
     }

   Real-Life Example:
     - Struct: Represent a student in an online course.
     - Example Fields: Name, age, enrolled course.

5. Data Locations:
   - Definition: Specifies where variables are stored.
   - Types:
     a. Storage: Permanent storage on the blockchain.
     b. Memory: Temporary storage during execution.
     c. Calldata: Read-only storage for function inputs.

   Example:
     string[] public students;

     function addStudent(string memory _name) public {
         students.push(_name);  // Storage is used here
     }

     function getStudent(uint index) public view returns (string memory) {
         return students[index];  // Memory is used for temporary value
     }

     function processNames(string[] calldata _names) external pure returns (uint) {
         return _names.length;  // Calldata for input arrays
     }

   Real-Life Example:
     - Storage: Persistent database for storing user data.
     - Memory: Temporary calculations like intermediate results.
     - Calldata: Input received in an API call.

6. Combined Example:
   - Use arrays and structs together.

     struct Player {
         string name;
         uint score;
     }

     Player[] public players;

     function addPlayer(string memory _name, uint _score) public {
         players.push(Player(_name, _score));
     }

     function getPlayer(uint index) public view returns (string memory, uint) {
         Player memory player = players[index];
         return (player.name, player.score);
     }

   Real-Life Use Case:
     - Players in a leaderboard.
     - Each player has a name and a score.

*/
