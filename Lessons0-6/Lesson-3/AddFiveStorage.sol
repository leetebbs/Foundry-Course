// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;


import {SimpleStorage} from "./SimpleStorage.sol";


contract AddFiveStorage is SimpleStorage{


function store(uint256 _newNumber) public override{
    // super.store(_newNumber + 5);
    myFavoriteNumber = _newNumber + 5;
}
}


// solved challenge @ https://sepolia.etherscan.io/tx/0xd4a2f8001ddbcced6d6d50a8383e7d1f3e14ae78bed3892fcd05ef87d924e510