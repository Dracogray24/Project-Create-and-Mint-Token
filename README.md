# Create and Mint Token

This Solidity program is a simple "Create and a Token" program that demonstrates the basic syntax and functionality of the Solidity programming language.


## Description
This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has 2 functions that will add or subtract the value of the token.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, click the ERC20 in the homepage to create all the necessary files for ERC20 token, then create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";


contract PinguToken is ERC20{

    constructor() ERC20("PinguToken", "NOOT"){
        _mint(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 1000000);
        _burn(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 500000);
        _transfer(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, 1000);
    }

}

```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile PinguToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "PinguToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by copying the Account Address in the Deploy & Run Transactions" tab then go to Deployed contracts click the drop down arrow for the mint and paste the copied address the add your value then click transact to add value for your token. To see the token value the click the totalSupply below. then to see the symbol, decimal, and name of the token just click the following buttons.
## Authors
@Dracogray24

