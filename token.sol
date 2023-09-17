// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Token {

    // public variables here
    string public tokenName = "MXVLIK";
    string public tokenAbbrv = "MXV";
    uint public tokenSupply = 0;

    // mapping variable here
    mapping (address => uint) public balances;

    // minting function
    function mint(address _address, uint _value) public {
      tokenSupply += _value;
      balances[_address] += _value;
    }

        // burning function
    function burn(address _address, uint _value) public {
       if (balances[_address] >= _value) {
          tokenSupply -= _value;
         balances[_address] -= _value;
       }
   }
}
