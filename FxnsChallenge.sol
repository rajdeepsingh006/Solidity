pragma solidity ^0.8.15;

contract Details
{
    uint Accountbalance=0;

    function deposit(uint amt) public payable 
    {
       uint store;
       store = Accountbalance+amt;
        Accountbalance = store;
    }

    function EMICalculator(uint Itemprice,uint Timeperiod) public pure returns(uint)
    {
    
        return Itemprice/Timeperiod;
    }

    function display() external view returns(uint)
    {
        return Accountbalance;
    }
