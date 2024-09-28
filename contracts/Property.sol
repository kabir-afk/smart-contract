// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

struct PropertyInfo {
    string OwnerName;
    string Address;
    uint256 Price;
}

contract Property {
    // PropertyInfo public info;
    PropertyInfo info;

    function details()
        public
        view
        returns (
            string memory,
            string memory,
            uint256
        )
    {
        return (info.OwnerName, info.Address, info.Price);
    }

    function createPropertyInfo(
        string memory _ownerName,
        string memory _address,
        uint256 _price
    ) public {
        info = PropertyInfo({
            OwnerName: _ownerName,
            Address: _address,
            Price: _price
        });
        details();
    }
}
