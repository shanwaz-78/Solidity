// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;

contract ItemManager {
    string[] private items;

    function addItem(string memory _item) public {
        items.push(_item);
    }

    function removeItem(uint index) public {
        require(index < items.length, "Index is out of bounds.");

        items[index] = items[items.length - 1];

        items.pop();
    }

    function getItem(uint index) public view returns (string memory) {
        require(index < items.length, "Index is out of bounds.");
        return items[index];
    }

    function getItems() public view returns (string[] memory) {
        return items;
    }

    function getItemCount() public view returns (uint) {
        return items.length;
    }
}
