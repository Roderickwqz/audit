// SPDX-License-Identifier: MIT

pragma solidity 0.8.30;

// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    // uint256[] public anArray;
    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    // view: read-only function
    // pure: Do NOT read from blockchain state and Do NOT write to blockchain state
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    // memory: temporary variable, mutable
    // storage: permanent variable, mutable
    // calldata: temporary variable, immutable
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}