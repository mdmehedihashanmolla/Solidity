// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;


contract GasOptimization {
    uint public total;

    /*
    Gas optimization in Solidity is a vital part of smart contract development because it helps reduce the transaction costs on the Ethereum network. Let’s dive deeper into the key gas-saving techniques mentioned in the article:
    */

    // 1. Replacing Memory with Calldata 📥
    // In Solidity, calldata and memory are two data locations for storing parameters in functions.
    // While memory costs gas because the data is copied from storage, calldata is cheaper as it refers to the original data passed in a transaction.
    // Using calldata reduces gas costs by avoiding copying data to memory.
    function sumIfEvenAndLessThan99(uint[] calldata nums) external {
        // Function logic
    }
    // Here, the nums array is passed as calldata instead of memory, saving gas by not copying the array's contents.

    // 2. Loading State Variables to Memory 📦
    // State variables are stored on the blockchain and modifying them incurs gas costs.
    // A technique to optimize gas usage is to load frequently accessed state variables into memory.
    // Memory is cheaper to use than storage, and reading from memory is less expensive than reading from the blockchain.
    uint public total;

    function sumIfEvenAndLessThan99(uint[] calldata nums) external {
        uint _total = total; // Load total into memory
        // Further computations
    }
    // By copying the state variable total into _total, we minimize costly SSTORE operations.

    // 3. Short Circuiting ⚡️
    // Short circuiting in conditional statements allows you to avoid evaluating unnecessary conditions.
    // This optimization saves gas by halting further evaluations once the result is known.
    function sumIfEvenAndLessThan99(uint[] calldata nums) external {
        uint _total = total;
        uint len = nums.length;
        for (uint i = 0; i < len; ) {
            uint num = nums[i];
            if (num % 2 == 0 && num < 99) {
                // Short circuit
                _total += num;
            }
            unchecked {
                ++i; // Pre-increment
            }
        }
        total = _total;
    }
    // In this example, the second condition (num < 99) is only checked if the first (num % 2 == 0) is true,
    // optimizing gas usage by avoiding unnecessary checks.

    // 4. Pre-increment Operator in Loops 🔄
    // Using the pre-increment operator (++i) instead of the post-increment (i++) can slightly reduce gas costs,
    // as it avoids the additional operation required in post-increment.
    function iterateAndIncrement(uint[] calldata nums) external {
        for (uint i = 0; i < nums.length; ) {
            // Loop logic
            unchecked {
                ++i; // Pre-increment
            }
        }
    }
    // While the difference is minor for small loops, it can accumulate in larger ones.

    // 5. Caching Array Length 📏
    // In Solidity, accessing an array’s length repeatedly costs gas.
    // By caching the array's length in a local variable before entering the loop,
    // you can reduce the gas consumed by redundant SLOAD operations.
    function processArray(uint[] calldata arr) external {
        uint len = arr.length; // Cache the length
        for (uint i = 0; i < len; i++) {
            // Loop logic
        }
    }
    // This saves gas by accessing the cached length 'len' instead of repeatedly reading arr.length from storage.

    // 6. Loading Array Elements to Memory 📄
    // When you need to access array elements multiple times within a loop,
    // loading the elements into memory can save gas. This is particularly useful when performing calculations on the array elements.
    function sumArray(uint[] calldata arr) external returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < arr.length; i++) {
            uint element = arr[i]; // Load element into memory
            sum += element;
        }
        return sum;
    }
    // By storing arr[i] in the local variable 'element', we avoid performing multiple costly SLOAD operations.

    // 7. Unchecked Overflow/Underflow ✅
    // Using the unchecked keyword can save gas when performing arithmetic operations that are guaranteed not to overflow or underflow.
    // The unchecked block bypasses the automatic checks for overflows or underflows, saving gas.
    function increment(uint value) external {
        unchecked {
            value++; // No overflow check
        }
    }
    // This optimization should only be used when you're certain the values won’t exceed their limits.

    /*
    Conclusion 🎓
    By applying these gas optimization techniques, you can improve the efficiency of your smart contracts, 
    reducing the cost of transactions and enhancing scalability on the Ethereum network. 
    However, it’s important to balance gas optimization with code readability, maintainability, and security. 
    Always thoroughly test optimized contracts to ensure they work as expected.

    Gas optimization techniques, like using calldata instead of memory, caching array lengths, and using unchecked for arithmetic, 
    can have a significant impact on your contract's performance. By continuously focusing on these optimizations, you’ll contribute to a more sustainable Ethereum ecosystem!
    */
}
*/