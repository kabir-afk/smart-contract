// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract SimpleStorage {
    bool hasFavoriteNumber = true;
    string favoriteNumberInText = "some text";
    uint256 public favoriteNumber = 6;
    int256 favoriteInt = -6;
    address myAddress = 0xec0ff344109662FEE9F63a0C9D425aFa3FB407ec;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People public person = People({favoriteNumber: 2, name: "Kabir singh"});

    function store(uint256 _favNumber) public {
        favoriteNumber = _favNumber;
        retrieve();
    }

    // keywords like view and pure are reserved such that they dont consume any gas.

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }
}
