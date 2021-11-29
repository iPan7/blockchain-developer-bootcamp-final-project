# Final project - SALT COIN

## How to run this project locally:

### Prerequisites

- Node.js
- Truffle
- Ganache
- .env file with declared MNEMONIC = `enter seed phrase`

### Contracts

- Run local testnet in port `7545` with an Ethereum client, e.g. Ganache
- `truffle migrate --network develop`
- `truffle console --network develop`
- Run tests in Truffle console: `test`
- `develop` network id is 5777, remember to change it in Metamask as well!

### Frontend

- npm run start
- Open `http://localhost:3000`

### How to use the app

- `truffle migrate --network develop`
- `truffle console --network develop`

- Open local ui from `http://localhost:3000`
- Make sure your Metamask localhost network is in port `7545` and chain id is `5777`.

## Screencast link

https://youtu.be/FJfWQKXyWXc - Video of app running on Goerli network.
https://youtu.be/t1QzNfeVjgM - Video of app running on local Ganache network.
testspassing.png - Shows all 5 unit tests passing for smart contracts.

## Public Ethereum wallet for certification:

0xEca0e951Db45a369f97dc765b955C38F227f632a

## Project description

Simple dApp that creates a new crypto currency and has a Payment-layer on top of the Ethereum Network.

## Simple workflow

1. Enter service web site
2. Login with Metamask
3. Add Metamask account to whitelist.
4. Purchase Salt Coin by clicking on `Buy a Token`. Note that the Metamask transaction will show 0 ETH being traded but this is because 1 SALT coin is equal to 1 wei, and 1 wei is worth 0.000000000000000001 ETH. 

## Directory structure

- `src`: React front end App.js is here.
- `contracts`: Smart contracts that are deployed in the Ropsten testnet.
- `migrations`: Migration files for deploying contracts in `contracts` directory.
- `test`: Tests for smart contracts.

## Deployed version url:

https://my-app-blockchain-test.herokuapp.com/

## TODO features

- Convert SALT Coin to another cryptocurrency.
- Make the UI nicer in general.