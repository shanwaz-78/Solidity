// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract BalanceTracker {
    address public owner;
    mapping(address => uint) public balances;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Not authorized");
        _;
    }

    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    function setBalance(address userAddr, uint balance) public onlyOwner {
        balances[userAddr] = balance;
    }

    function getBalance(address userAddr) public view returns (uint) {
        return balances[userAddr];
    }

    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }
}
