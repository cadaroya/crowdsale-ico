pragma solidity >=0.5.0 <0.6.0;
import '../node_modules/openzeppelin-solidity/contracts/crowdsale/Crowdsale.sol';
import '../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol';
import '../node_modules/openzeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol';
import '../node_modules/openzeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol';
import '../node_modules/openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol';

contract CarlosCrowdsale is Crowdsale, TimedCrowdsale, CappedCrowdsale, MintedCrowdsale {
    constructor(
        uint256 rate, 
        address payable wallet, 
        IERC20 token,
        uint256 openingTime, 
        uint256 closingTime,
        uint256 cap
        )
        Crowdsale(rate, wallet, token)
        TimedCrowdsale(openingTime, closingTime)
        CappedCrowdsale(cap)
        public
    {

    }
}