# Final project - SALT COIN

## Deployed version url:



## How to run this project locally:

### Prerequisites

- Node.js
- Truffle
- Ganache

### Contracts

- Run `truffle unbox react` in project root to install Truffle build and smart contract dependencies
- Run local testnet in port `7545` with an Ethereum client, e.g. Ganache
- `truffle migrate --network develop`
- `truffle console --network develop`
- Run tests in Truffle console: `test`
- `develop` network id is 5777, remember to change it in Metamask as well!

### Frontend

- `cd client`
- npm run start
- Open `http://localhost:3000`

### How to use the app

- `truffle migrate --network develop`
- `truffle console --network develop`

- Open local ui from `http://localhost:3000`
- Make sure your Metamask localhost network is in port `7545` and chain id is `5777`.

## Screencast link



## Public Ethereum wallet for certification:

0xEca0e951Db45a369f97dc765b955C38F227f632a

## Project description

Simple dApp that creates a new crypto currency and has a Payment-layer on top of the Ethereum Network.

## Simple workflow

1. Enter service web site
2. Login with Metamask
3. Add Metamask account to whitelist.
4. Purchase Salt Coin.

## Directory structure

- `client`: Project's React frontend.
- `contracts`: Smart contracts that are deployed in the Ropsten testnet.
- `migrations`: Migration files for deploying contracts in `contracts` directory.
- `test`: Tests for smart contracts.


## TODO features

- Convert SALT Coin to another cryptocurrency.
- Make the UI nicer in general.