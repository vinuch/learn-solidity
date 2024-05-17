// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

interface ICounter {
    function count() external view returns (uint);
    function inc() external;
}

contract CallInterface {
    function examples(address _counter) external {
        ICounter(_counter).inc();
        count = ICounter(_counter).count();
    }
}