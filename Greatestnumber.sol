// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >=0.4.22<0.9.0;

contract greatestnum{
    //state variables stored in storage
    uint a;
    uint b;
    uint c;
    uint d;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner { 
        require (owner == msg.sender, "only owner can access");
        _;
    }

    //function parameters stored in stack
    function set (uint _a, uint _b, uint _c, uint _d) public onlyOwner{
        //function variables stored in memory
        a = _a;
        b = _b;
        c = _c;
        d = _d;
    }

    function get() public view onlyOwner returns(uint){
        if ((a > b) && (a > c) && (a > d)){
        return(a);
        }
        else if ((b >c ) && (b > d) && (b > a)){
            return(b);
        }
        else if ((c > d) && (c > a) && (c > b)){
            return(c);
        }
        else {
            return(d);
        }
    }
}
