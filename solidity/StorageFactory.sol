// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
   
    SimpleStorage[] public listOfSimpleStorageContracts;
    // here we are creaing a simple storage array in the image of the SimpleStorage contract we already made and we are using it as a type
    // for naming convention when uisng one of that type we call it in the same name with different letter cassing,
    //if we have another Simple Storage to be made we can give it another name
    // SimpleStorage public contractTwo;
    
    function createSimpleStorageContract() public {
        // here we are creating a new SimpleStorage contract

        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        // here we are storing the newly made conracts everytimne the function is called into the array
        listOfSimpleStorageContracts.push(newSimpleStorageContract);

    }

    function sfStore(uint256 simplestorageIndex, uint newSimpleStorageNumber) public {
        // in order to interact with the store function: store() in the SimpleStorage contract we need Address and ABI
        // Application Binary Interface

        //we create a simple storage at the specified location: SSIndex
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[simplestorageIndex];
        //into the newly created simpkeStorage we use the store() function to insert the number we want to store 
        mySimpleStorage.store(newSimpleStorageNumber);
    }

    function sfGet(uint256 simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}
