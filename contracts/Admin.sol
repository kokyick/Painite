pragma solidity ^0.4.4;

import "./ERC20ERT.sol";

contract Admin is ERC20ERT {
    function Admin(uint256 initSupply) ERC20ERT(initSupply) {
      // constructor
      // we have invoked the constructor for the V1, so we are good
    }
    function decreaseSupply(uint value, address from) public returns (bool) {
        balances[from] = safeSub(balances[from], value);
        totalSupply = safeSub(totalSupply, value);  
        Transfer(from, 0, value);
        return true;
    }
    function safeSub(uint a, uint b) internal returns (uint) {
        if (b > a) { throw; }
            return a - b;
    }
}

