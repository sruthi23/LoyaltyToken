/*var Tokensale = artifacts.require("./TokenSale.sol");

module.exports = function(deployer, network, accounts) {
	
	deployer.deploy(Tokensale).then(async () => {
		const instance = await Tokensale.deployed();
		const token = await instance.ltoken.call();
		console.log('Token Address', token);
	});
};*/

var Tokensale = artifacts.require("./TokenSale.sol");
var Loyaltoken = artifacts.require("./LoyalToken.sol");

module.exports = function(deployer) {
	deployer.deploy(Loyaltoken).then(async () => {
		const instance = await Loyaltoken.deployed();
		console.log(instance.address);
		return deployer.deploy(Tokensale,instance.address);
	})
};

