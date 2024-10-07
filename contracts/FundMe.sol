// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

import "./PriceConverter.sol";

contract FundMe {
    uint256 public number;
    uint256 public minimumUsd = 5 * 1e18;
    function fund() public payable {
        number = 5;
        require(msg.value.getConversionRate()) >= minimumUsd, "Not enough ETH");
    }

    

    // function withdraw() public {

    // }
}
