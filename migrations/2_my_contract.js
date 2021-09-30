const Dai = artifacts.require("Dai");
const MyDeFiProject = artifacts.require("MyDeFiProject");
// when we need to deploy MyDeFiproject we need to wait for Dai to deploy so will have to use await

// make it an async function so that I can use await keyword
module.exports = async function (deployer, _network, accounts) {
  await deployer.deploy(Dai);
  const dai = await Dai.deployed();
  await deployer.deploy(MyDeFiProject, dai.address);

  // making a pointer to our smart contract/defi project
  const myDeFiProject = await MyDeFiProject.deployed();
  
  await dai.faucet(myDeFiProject.address, 100);
  //calling foo function to see what happens - this below will give an error if we dont have Dai for our sending address
  await myDeFiProject.foo(accounts[1], 100);

  //checking Dai balance

  // should be 0
  const balance0 = await dai.balanceOf(myDeFiProject.address);
  // should be 100
  const balance1 = await dai.balanceOf(accounts[1]);

  console.log(balance0.toString());
  console.log(balance1.toString());
};
