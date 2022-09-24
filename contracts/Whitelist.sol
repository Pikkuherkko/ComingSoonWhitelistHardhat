//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Whitelist {

    mapping(address => bool) public whitelistAddresses;
    uint256 public numberOfAddresses;

    function addWhitelistAddress() public {
        require(!whitelistAddresses[msg.sender], "already whitelisted");
        whitelistAddresses[msg.sender] = true;
        numberOfAddresses++;
    }

    function getWhitelisted(address _sender) public view returns(bool) {
        return whitelistAddresses[_sender];
    }
}