# ERC20 Austin Token (JJ)

Austin Token (symbol: `JJ`) is an ERC20 token deployed on the Ethereum blockchain. The smart contract is built using OpenZeppelin's ERC20 standard and offers features like minting, burning, and controlled transfers.

## Overview

- **Token Name:** Austin
- **Token Symbol:** JJ
- **Initial Supply:** Defined at contract deployment.

## Features

- **Minting:** The contract owner can mint additional tokens to any address.
- **Burning:** Tokens can be burned (removed from circulation) by the owner.
- **Controlled Transfers:** Allows specified transfers between addresses.

## Smart Contract Functions

### Constructor

Initializes the contract with:

- **Name:** Austin
- **Symbol:** JJ
- **Initial Supply:** Mints the specified `initialSupply` to the contract owner’s address.

```solidity
constructor(uint256 initialSupply)
```

### Mint

Mints new tokens to a specified address. Only the contract owner can execute this function.

```solidity
function mint(address to, uint256 amount) external onlyOwner
```

### Burn

Burns a specified amount of tokens from an address, reducing the total supply.

```solidity
function burn(address from, uint256 amount) external
```

### Transfer

Transfers a specified amount of tokens from one address to another.

```solidity
function transfer(address _from, address _to, uint256 _amount) external
```

## Deployment Instructions

1. **Install OpenZeppelin Contracts:**
   ```bash
   npm install @openzeppelin/contracts
   ```
2. **Compile the Smart Contract:** Use a Solidity compiler.
3. **Deploy the Contract:** Deploy using Remix, Hardhat, Truffle, or any preferred Ethereum deployment tool, providing the `initialSupply` as a constructor argument.

## License

This project is licensed under the MIT License.
