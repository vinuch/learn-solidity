// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract IfElse {
    function example(uint _x) external pure returns (uint) {
        if(_x < 10) {
            return 1;
        }else if (x < 20) {
            return 2;
        }
        return 3;
    }

    function ternary(uint _x) external pure returns (uint) {
        // if(_x < 10){
        //     return 1;
        // }
        // return 2;
        return _x < 10 ? 1 : 2;
    }
} 