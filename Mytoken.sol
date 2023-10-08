// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract MyToken{
    string public TokenName="RAJ";
    string public TokenAbbr="RJ";
    uint public TotalSupply=0;


    mapping(address => uint) public Balance;


    function mint(address _address,uint _value)public {
        TotalSupply+=_value;
        Balance[_address]+=_value;
    }


    function burn(address _address,uint _value)public {
        if(Balance[_address]>=_value)
        TotalSupply-=_value;
        Balance[_address]-=_value;
    }


}