var ERC20ERT = artifacts.require("../contracts/ERC20ERT.sol");
var BasicERT = artifacts.require("../contracts/BasicERT.sol");
var Admin = artifacts.require("../contracts/Admin.sol");
// var CourseTokenV2 = artifacts.require("../contracts/CourseTokenV2.sol");

module.exports = function(deployer) {
  deployer.deploy(BasicERT,1000);
  deployer.deploy(ERC20ERT,1000);  
  deployer.deploy(Admin,1000);
  // deployer.deploy(CourseTokenV2);
};
