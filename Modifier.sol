 // SPDX-License-Identifier: MIT
pragma solidity >=0.4.22<0.9.0;

contract Calculator
{

    uint a;
    uint b;
    address owner;

    constructor()
    {
        owner=msg.sender;
    }

    modifier OnlyOwner()
    {
        require(owner==msg.sender,"Only Owner Can Access");
        _;
    }

    function set(uint _a,uint _b) public OnlyOwner
    {
        a=_a;
        b=_b;
    }


    function add() view public OnlyOwner returns(uint) 
    {
        return a+b;
    }

    function Diff() view public OnlyOwner returns(uint) 
    {
        return a-b;
    }

    function Product() view public OnlyOwner returns(uint) 
    {
        return a*b;
    }

    function Div() view public OnlyOwner returns(uint) 
    {
        return a/b;
    }

}

