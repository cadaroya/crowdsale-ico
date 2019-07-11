pragma solidity >=0.5.0 <0.6.0;
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol';
//import '../node_modules/openzeppelin-solidity/contracts/ownership/Ownable.sol';

contract CarlosToken is ERC20Mintable, ERC20Detailed {
    constructor(string memory name, string memory symbol, uint8 decimals)
        ERC20Detailed(name, symbol, decimals)
        public
    {

    }
}