// SPDX-License-Identifier: MIT 
pragma solidity >0.8.17;

contract Store {
  uint private value;
  function set(uint newNum)public {
    value = newNum;
  };

  function get()public view returns (uint){
    return value;
  };
}
