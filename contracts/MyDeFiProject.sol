pragma solidity >=0.4.21 <=0.8.7;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

contract MyDeFiProject {
    // defining the type of variable as interface of ERC20
    IERC20 dai;

    // need to inject the address of DAI inside the contract
    constructor (address daiAddress) public {
        // creating a pointer to DAI token and storing address to it in a state variable called Dai
        dai = IERC20(daiAddress);
    }

    function foo(address recepient, uint amount) external {
        // transfer dai, specify recepient address and the amount in elemntary unit of dai
        // dai works exactly like ether and has 18 decimals.
        dai.transfer(recepient, amount);

        
    }
}