// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/*
    1. Boolean Type

    The bool data type represents a Boolean value that can be either true or false. 
    It is used for conditions and logical operations.

    # Example
    bool isActive = true;
---------------------------------------------------------------------------
    2. Integer Types

    Solidity provides signed and unsigned integers. These are used to represent whole numbers.

    * uint (unsigned integer) can only represent positive numbers, including zero.

    * int (signed integer) can represent both positive and negative numbers.

    ** uint (Unsigned Integer)

    uint is shorthand for uint256, the default size for unsigned integers. It can represent numbers 
    from 0 to 2^256 - 1 (0 to the maximum possible value for uint256).

    * You can also use uint8, uint16, uint32, etc., where the number after uint specifies the bit size 
    (8, 16, 32, etc.). Smaller sizes consume less gas but have a limited range.

    # Example:
    uint256 totalSupply = 1000000;   // unsigned integer

    ** int (Signed Integer)

    * int is shorthand for int256, the default size for signed integers. It can represent numbers from 
    -2^255 to 2^255 - 1 (from negative to positive numbers).

    * Like unsigned integers, you can use int8, int16, int32, etc., for smaller sizes.

    # Example:
    int8 balance = -50;    // signed integer

---------------------------------------------------------------------------
    3. Address Type

    The address type is used to store Ethereum addresses. 
    These are 20-byte values that represent accounts on the Ethereum blockchain.

    An address can be used for both external accounts and contract addresses.
    You can also use the payable modifier to make an address capable of receiving Ether.

    # Example:
    address owner = 0x5B4E8F4b9c0F870B0e581f72C9B9a213a5bAF2f8;
    address payable wallet = payable(0xA7b788f3C6c6D94799C65b47E5F43703aF58d8F7);  // payable address

---------------------------------------------------------------------------
    4. Fixed-size Byte Arrays

    In Solidity, byte arrays are used to store binary data, such as strings or hashes. A fixed-size byte array 
    is specified by a length, and it can hold any sequence of bytes.

    bytes1 to bytes32 can hold a fixed number of bytes (1 byte to 32 bytes).
    The bytes type (without a size) is dynamic, and the length can vary.

    # Example:
    bytes32 data = "Hello, Solidity!";  // fixed-size byte array

---------------------------------------------------------------------------
    5. String Type

    The string type is used for storing UTF-8 encoded text, such as names or descriptions. Unlike bytes, 
    string is dynamic in size and can change its length.

    # Example:
    string name = "Solidity Beginner";

---------------------------------------------------------------------------
    6. Array Types

    Solidity supports both fixed-size and dynamic arrays.

    Fixed-size Arrays
    A fixed-size array has a predefined length, and its size cannot be changed after creation.

    # Example:
    uint[3] fixedArray = [1, 2, 3];  // array with 3 elements

    Dynamic Arrays
    A dynamic array can have a variable length, and elements can be added or removed. The size of the array 
    can grow or shrink dynamically.

    # Example:
    uint[] dynamicArray;
    dynamicArray.push(10);  // add element

---------------------------------------------------------------------------
    7. Mapping Types

    Mappings are a key-value store. They are like hash tables and are used to store data where each key is mapped 
    to a value. Mappings do not have a length property, and they can only be used for internal and external storage.

    # Example:
    mapping(address => uint256) public balances;
    balances[0x5B4E8F4b9c0F870B0e581f72C9B9a213a5bAF2f8] = 100;  // mapping address to a balance

*/
