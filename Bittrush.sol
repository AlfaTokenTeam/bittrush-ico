pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract Bittrush is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function Bittrush(address _owner)  UpgradeableToken(_owner) {
    name = "Bittrush";
    symbol = "BTR";
    totalSupply = 3500000000000000;
    decimals = 8;

    balances[_owner] = totalSupply;
  }
}