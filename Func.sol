// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FunctionIntro {
    function add(uint x, uint y) external pure return (uint) {
        return x + y;
    }

    functiion sub(uint x, uint y) external pure returns (uint) {
        return x - y;
    }
}