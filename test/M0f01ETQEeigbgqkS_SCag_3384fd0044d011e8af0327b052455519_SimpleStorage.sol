// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0; 

contract SimpleStorage {
    uint storedData;

    function set(uint x) public {
        storedData = x;
    }

    // Updated to 'view' since the function does not modify the state
    function get() view public returns (uint) {
        return storedData;
    }
    
    function increment (uint n) public {
        storedData += n;
        // Removed unnecessary return statement
    }
    
    function decrement (uint n) public {
        storedData -= n;
        // Removed unnecessary return statement
    }
}
