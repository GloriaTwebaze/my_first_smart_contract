// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract myNumber{
    uint public num;

    function setNumber(uint _number)public{
        num = _number;
    }

    function getNmuber() public view returns(uint){
        return num;
    }
}