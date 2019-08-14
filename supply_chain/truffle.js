const HDWalletProvider = require('truffle-hdwallet-provider');
const infuraKey = "https://rinkeby.infura.io/v3/f79f4cd705e64bc588e4b07093020339";
const fs = require('fs');
const mnemonic = fs.readFileSync(".secret").toString().trim();

module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      //host: "172.17.0.2", //docker ip
      port: 8545,
      network_id: "*" // Match any network id
    },

    rinkeby: {
      provider: function() { 
        return new HDWalletProvider(mnemonic, infuraKey) 
      },
      network_id: 4,
      gas: 4500000,
      gasPrice: 10000000000,
    }
  }
};