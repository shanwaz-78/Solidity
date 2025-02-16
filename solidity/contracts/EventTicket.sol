// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

contract EventTicket {
    uint public totalTickets;
    uint public ticketPrice;
    uint public totalAmount;
    uint public startAt;
    uint public endAt;
    uint public timeRange;
    string public message = "Buy your first Event Ticket";

    constructor(uint _ticketPrice){
      ticketPrice = _ticketPrice;
      startAt = block.timestamp;
      endAt = block.timestamp;
      timeRange = (end - startAt) / 60 / 60 / 24
    }
}

