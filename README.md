# Test Foundry

Small repo to test the Foundry framework. 2 contracts with a simple function and 2 Test contract.

## Creating a NFT with Solmate with Solidity Scripting

```bash
source .env
forge script script/NFT.s.sol:MyScript --rpc-url $RPC_URL  --private-key $PRIVATE_KEY_CHROME_MM --broadcast --verify --etherscan-api-key $ETHERSCAN_TOKEN -vvvv
```

---

# How to start

- `forge init` to initialize a repo
- create a contract StakeContract.sol
- `forge build` to compile contract
- `forge install Openzeppelin/openzeppelin-contracts` to install contract from github
- add remmaping to foundry.toml to import contract in our own contract
- create test contract StakeContract.t.sol
- `forge test` to run tests
- create Makefile
- `yarn add hardhat`

