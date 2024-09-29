// SPDX-License-Identifier: MIT
pragma solidity 0.8.27;

contract FundMe {
    uint256 public number; 
    function fund() public payable {
        number = 5;
        require(msg.value > 1e18,"Not enough ETH");
    }

    function getPrice () public  {
        // address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        
    }
    
    function getConversionRate () public  {
        
    }

    // function withdraw() public {

    // }
}