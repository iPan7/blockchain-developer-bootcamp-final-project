const path = require("path");
require('dotenv').config({path: './.env'});
const HDWalletProvider = require("@truffle/hdwallet-provider");
const MetaMaskAccountIndex = 0;

module.exports = {
contracts_build_directory: path.join(__dirname, "client/src/contracts"),
networks: {
    develop: {
    provider: function() {
        return new HDWalletProvider(process.env.MNEMONIC, "http://127.0.0.1:7545", MetaMaskAccountIndex )
    },
    port: 7545,
    network_id: "*",
    host: "127.0.0.1"
    },
    ropsten_infura: {
      provider: function() {
        return new HDWalletProvider(process.env.MNEMONIC, "https://ropsten.infura.io/v3/c89e1902724d4ec7ada3264eee142d33", MetaMaskAccountIndex)
      },
      network_id: 3
    },
    goerli_infura: {
      provider: function() {
        return new HDWalletProvider(process.env.MNEMONIC, "https://goerli.infura.io/v3/c89e1902724d4ec7ada3264eee142d33", MetaMaskAccountIndex)
      },
      network_id: 5
    },
},
compilers: {
    solc: {
    version: "0.6.1",
    optimizer: {
      enabled: true,
      runs: 200
    }
    }
}
};