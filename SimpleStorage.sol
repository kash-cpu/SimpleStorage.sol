// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; // This is the solidity version

contract SimplsStorage {
    //myFavouriteNumber get initialized to 0 if no value is given
    uint256 myFavoriteNumber;

    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public listOfPeople;

    mapping(string => uint256) public nameToFavoriteNumber;

    function store(uint256 _favoriteNumber) public {
        myFavoriteNumber = _favoriteNumber;
    }

    //view //pure
    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }

    //calldata, memory, and storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
