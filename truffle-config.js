const path = require("path");
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
    }
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