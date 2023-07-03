// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
 
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public virtual {
        myFavoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }
// calldata is a tempory var that cannot be changed
// memory is a tempory var that can be changed
//storage 
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
// Deployed on sepolia @ 0xa9A3c27DE6E667e94aCCA4ceCafBA8b924Adda82
// solved challenge @ seploia 0x07a5e68d4043c479fb44dab727381ff0014d4498261d965a66edfcceb031e4f4