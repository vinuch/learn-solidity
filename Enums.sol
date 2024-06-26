// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Enum {
    enum Status {
        None, 
        Pending, 
        Shipped, 
        Completed,
        Rejected,
        Canceled
    }

    Status public status;

    struct order {
        address buyer;
        Status status;
    }

    Order[] public orders;

    function get() view returns (Status) {
        return status;
    }

    function set(Status _status) external {
        status = _status
    }

    function ship() external {
        status = Status.Shipped;
    }

    function reset() external {
        delete status;
    }
}