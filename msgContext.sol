// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >=0.4.22<0.9.0;

contract message
{
     function sender() view public returns(address x)
     {
         return msg.sender;
     }

     function value() public payable returns(uint x)
     {
         return msg.value;
     }

      function gaslft() view public returns(uint)
      {
         return gasleft();
      }
}
