# crowdsale-ico

A simple ICO for the token "CT" (CarlosToken) that was made by utilizing openzeppelin interfaces.

Features of the ICO are the following:

1. Basic Crowdsale functionality (transfer
2. Timed Crowdsale - initial and ending time where you can contribute.
3. Capped Crowdsale - has a maximum amount of ether that can be accepted.

The contract is deployed at Kovan test network. It also uses env variables (which are not pushed to the repository) to connect to infura and its metamask account.


## Setup
1. Clone the repository
2. Navigate to ICO/
3. `npm install`
4. Open Ganache or testrpc
5. `truffle migrate --reset` to deploy in the ganache network
