var HDWalletProvider = require("truffle-hdwallet-provider");

var mnemonic = "rough lesson polar learn entire talk sausage trash transfer other hurdle junk";

module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "*" // Match any network id
    }
  }
};


module.exports = {
  networks: {
    ropsten: {
      provider: function() {
        return new HDWalletProvider(mnemonic, "https://ropsten.infura.io/v3/3b50d645fa2445708984689e851f1484")
      },
      network_id: "*"
    }
  }
};
