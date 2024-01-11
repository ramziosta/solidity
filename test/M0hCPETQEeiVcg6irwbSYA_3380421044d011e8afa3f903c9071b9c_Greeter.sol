// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Greeter {
    string public yourName;  // data

    /* This runs when the contract is executed */
    constructor() {
        yourName = "World";
    } 
    
    function set(string memory name) public {
        yourName = name;
    }
    
    function hello() view public returns (string memory) {
        return yourName;
    }
}
