// SPDX-License-Identifier: MIT
pragma solidity ^0.87;

// Data types - values and references

contract ValueTypes {
    bool public b = true;
    uint public u = 123; // uint = uint256 = 0 to 2**256 - 1
                         //         uint8 0 to 2**8 - 1
                         //         uint8 0 to 2**16- 1
    int public i = -123; // int = int256    -2**255 to 2**255 - 1
                         //        int256   -2**127 to 2**127 - 1
    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x....
    bytes32 public b32 = 0x...(32 bytes)
}
