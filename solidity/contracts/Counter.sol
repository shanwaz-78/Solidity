// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract Counter {
    uint private count;

    function increment() public {
        count++;
    }

    function decrement() public {
        require(count > 0, "Counter cannot be negative");
        count--;
    }

    function getCount() public view returns (uint) {
        return count;
    }
}
