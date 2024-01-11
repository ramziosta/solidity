// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import { PriceConverter } from "./PriceConverter.sol";



contract FundMe {

   using PriceConverter for uint256;
    uint256 public minUSD = 5 * 1e18;
    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

 function fund() public payable {
        require((msg.value).getConversionRate() >= minUSD, "didnt sent enough eth");
        
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }

    function withdraw() public view returns(uint256) {

    }
}
