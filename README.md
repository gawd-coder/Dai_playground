# Dai_playground
Transferring Dai Token using Solidity and Web3

# Install

This project uses Node Version Manager : `nvm`, `Node`,`Node Package Manager` : `npm`, `Web3`, `Truffle`. Go check them out if you don't have them locally installed.

$ `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash`

$ `nvm install node`

$ `npm install -g web3`

$ `npm install -g truffle`

https://github.com/makerdao/developerguides/blob/master/dai/dai-token/dai-token.md

# Interpretation :

You need to accept some sort of payment for your DeFi app but the issue with Ether is its volatility. Dai is a token on ethereum blockchain with the same value.


Adding OpenZeppelin contracts :-

`$ truffle init`

`$ npm init -y`

`$ npm install @openzeppelin/contracts`

`$ cat package.json`


First we need to set up a mock for a DAI token. Mark represents some entity that we can access during development, but we still need to interact with this entity. eg useful when we need to interact with an API while doing local development. Here we are working on local development blockchain with truffle. We can interact with a real smart contract of DAI on mainnet/public testnet so marking this token locally.     

Finally done with a mock dai token on local development blockchain

<img width="1440" alt="Screenshot 2021-09-30 at 2 41 37 PM" src="https://user-images.githubusercontent.com/57283161/135425170-9186cdb4-d243-4d0b-9ea2-8b8aab6b7f34.png">


# Contributing

Feel free to dive in! Open an issue or submit PRs.
