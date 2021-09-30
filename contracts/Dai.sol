pragma solidity >=0.4.21 <=0.8.7;

//creating a ERC20 token to represent a DAI token
import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract Dai is ERC20{
    // provide a name, symbol
    constructor() public ERC20('Dai Stablecoin', 'DAI'){}

    // using faucet function to preallocate some Dai so that we can run our smart contract's foo function
    function faucet(address recepient, uint amount) external {
        // using mint function from ERC20 implementation
        // will create this amount of token for recepient address
        _mint(recepient, amount);
    }
}