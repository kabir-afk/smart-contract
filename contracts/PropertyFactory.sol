// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import "./Property.sol";

contract PropertyFactory {
    Property[] propertyContractArray;

    function createPropertyContract() public {
        Property dummyPropertyContract = new Property();
        propertyContractArray.push(dummyPropertyContract);
    }

    function storeInDummyProperty(
        string memory _ownerName,
        string memory _address,
        uint256 _price
    ) public {
        Property dummyProperty = propertyContractArray[propertyContractArray.length - 1];
        dummyProperty.createPropertyInfo(_ownerName, _address, _price);
    }

    function getValuesOfDummyProperty(uint256 _PCAIndexNumber)
        public
        view
        returns (
            string memory,
            string memory,
            uint256
        )
    {
        Property dummyProperty = propertyContractArray[_PCAIndexNumber];
        return dummyProperty.details();
    }
}
