// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Enum {
  enum Status {
    pending,
    shipped
    accepted,
    rejected,
    canceled,
  };

  Status public status;

  function set(uint _index) public {
    status = Status(_index);
  };

  function get() public view returns (Status){
    return status;
  }
}