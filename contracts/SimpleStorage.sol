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

    mapping(string => uint256) public nameToFavoriteNumber;

    // People public person = People({favoriteNumber: 2, name: "Kabir singh"});
    People[] public people;

    function store(uint256 _favNumber) public virtual {
        favoriteNumber = _favNumber;
        pull();
    }

    // keywords like view and pure are reserved such that they dont consume any gas.

    function pull() public view returns (uint256) {
        return favoriteNumber;
    }

    // EVM can access and store information in six places:
    //    1. Stack
    //    2. Memory
    //    3. Storage
    //    4. Calldata
    //    5. Code
    //    6. Logs

    // calldata => temporary variables that can't be modified
    // memory => temporary variables that can be modified
    // storage => permanent variables that can be modified

    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        People memory newPerson = People({name:_name,favoriteNumber:_favoriteNumber});
        people.push(newPerson);
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
