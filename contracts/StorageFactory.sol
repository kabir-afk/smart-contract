// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;
    // creates a contract based on the imported simplestorage file
    function createSimpleStorage ()public{
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    // this is where we interact with the created contract, we take the index of the specific contract 
    // and store out number inside it
    function sfStore(uint256 _simpleStorageIndexNumber,uint256 _simpleStorageFavNumber)public {
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndexNumber];
        simpleStorage.store(_simpleStorageFavNumber);
    }

    // creating another function to read the stored value
    function getSf (uint256 _simpleStorageIndexNumber) public view returns (uint256){
        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndexNumber];
        return simpleStorage.pull();
    }
}