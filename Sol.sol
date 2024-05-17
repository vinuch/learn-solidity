/*
Solidity 0.8 
*  safe math 
* functions outside contract 
* import {symbol1 as alias, symbol2} from "filename";
*  Salted contract creations / create2
*/


// SPDX-License=Identifier: MIT
pragma solidity ^0.8;

// safe math 
contract SafeMath {
    function testUnderflow() public pure returns (uint) {
        uint x = 0;
        x--;
        return x;
    }
    // running the above function should fail

    function testUncheckedUnderflow() public pure returns (uint) {
        uint x = 0;
        unchecked { x--; }
        return x;
    } 
}

// custom error

contract VendingMachine {
    address payable owner = payable(msg.sender);

    // custom error
    error Unauthorized(address caller); 

    function withdraw() public {
        if (msg.sender != owner)
        // 23642 gas
        // revert("error");
        // 23678 gas 
        // revert Unauthorized(msg.sender);
       
        // running this function the longer the error message the higher the amount of gas to be used


        owner.transfer(address(this).balance)
    }
}


// functions outside contract

function helper(uint x) view returns (uint) {
    return x * 2;
}

contract TestHelper {
    function test() external view returns (uint) {
        return helper(123);
    }
}


// syntax to import function from another contract
// import { symbol1 as alias, symbol2 } from "filename";
import { Unauthorized, helper } from "./Sol.sol";

contract Import {

}



// salted contract creations / create2
contract D {
    uint public x; 
    constructor(uint a) {
        x = a;
    }
}

contract Create2 {
    function getBytes32(uint salt) external pure returns (byte32) {
        return byte32(salt);
    }

    function getAddress(byte32 salt, uint arg) external view returns (address) {
        address addr = address(uint160(uint(keccak256(abi.encodePacked(
            bytes1(0xff),
            address(this),
            salt,
            keccak256(abi.encodePacked(
                type(D).creationCode,
                arg
            ))
        )))));

        return addr;
    }

    address public deployedAddr;

    function createDSalted(bytes32 salt, uint arg) public {
        D d = new D{salt: salt}(arg);
        deployedAddr = address(d);
    }
}