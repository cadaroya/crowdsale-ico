const CarlosToken = artifacts.require("CarlosToken");
const CarlosCrowdsale = artifacts.require("CarlosCrowdsale");

const duration = {
    seconds: function (val) { return val; },
    minutes: function (val) { return val * this.seconds(60); },
    hours: function (val) { return val * this.minutes(60); },
    days: function (val) { return val * this.hours(24); },
    weeks: function (val) { return val * this.days(7); },
    years: function (val) { return val * this.days(365); },
};

module.exports = async function(deployer, network, accounts) {
  await deployer.deploy(CarlosToken, "CarlosToken", "CT", 18);
  const deployedToken = await CarlosToken.deployed();
  const rate = 1000; // 1 eth = 1000 CTs
  const wallet = accounts[0];
  const timeNow = Math.floor(Date.now()/ 1000);
  const openingTime = timeNow + duration.seconds(30);
  const closingTime = timeNow + duration.years(1);
  const cap = web3.utils.toWei("100");

  await deployer.deploy(CarlosCrowdsale, rate, wallet, deployedToken.address, openingTime, closingTime,cap);
  //const deployedCrowdsale = await CarlosCrowdsale.deployed();
  //await deployedToken.transferOwnership(deployedCrowdsale.address)
  

};
