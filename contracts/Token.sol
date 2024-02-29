// SPDX-License-Identifier: MIT
pragma solidity 0.8.22;


contract MyToken {

    // public variables here
    string public tokenName="Metatoken";
    string public tokenAbbreviation="MT";
    uint public totalTokens=0;

    // mapping variable here
    mapping(address => uint)public balance;


    // mint function
    function mint (address _address,uint _tokens)public {
        totalTokens += _tokens;
        balance[_address]+=_tokens;
    }

    // burn function
    function burn(address _address,uint _tokens)public {
        if(balance[_address]>=_tokens){
        totalTokens -= _tokens;
        balance[_address] -=_tokens;}
    }
}
