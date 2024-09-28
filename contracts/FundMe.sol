// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

contract FundMe {
    uint256 public number; 
    function fund() public payable {
        number = 5;
        require(msg.value > 1e18,"Not enough ETH");
    }

    function withdraw() public {

    }
}