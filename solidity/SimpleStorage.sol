// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 myFavoriteNumber;

// solidity has different types : uint, int, string , boolean,
// if we want to create our own type we create a struct (constructor)
// here in person we create a person 
    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;  this is an array called anArray that holds uint
    // earlier we created a type person and here the person is used to create an array
    //person array
    Person[] public listOfPeople;


    // we can create hash/ map  and if we give it a key, it returns a value
    // here the key string will return the value in uint
    mapping(string => uint256) public nameToFavoriteNumber;

    // this function modifies the state of the blockchain
    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }
// view or pure are given to functions that dont change the state of the blockchain
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }
    //calldata, memory, storage are storage location for the data
    //storage is permenant and stay in the contract forever
    // calldata and memory are for storing temporary storage location for the furation of the function call
    // function parameters cannot be storage. They can only be calldata or memory as they only last when calling the function
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}