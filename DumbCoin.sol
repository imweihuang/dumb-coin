pragma solidity ^0.4.0;

contract DumbCoin{
  address deployer;
  mapping(address=>uint) balances;

  function DumbCoin() {
    // main
    deployer = msg.sender;
  }

  function giveCoins(uint amount, address receiver) {
    // gives coins to a receiver address
    if (msg.sender == deployer) {
        balances[receiver] += amount;
      } else {
        throw;
      }
  }

  function viewBalance() returns (uint) {
      return balances[msg.sender];
  }
}
