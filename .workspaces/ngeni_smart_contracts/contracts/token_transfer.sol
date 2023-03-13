// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract tokens{
    mapping(address => uint256) private balances;
    uint256 private totalTokens;

    constructor(uint _totalTokens){
        balances[msg.sender] = _totalTokens;
        totalTokens = _totalTokens;
    }

function tokenBal(address _owner) public view returns(uint256){
    return balances[_owner];
}

function transferTokens(address _to, uint256 _value) public returns (bool){
    require(_value > 0, "value must be greater than zero");
    require(balances[msg.sender] >= _value, "insufficient token balance");
    balances[msg.sender] -= _value;
    balances[_to] += _value;

    return true;
}
function getTokenTransfered() public view returns(uint256){
    return totalTokens;
}
}