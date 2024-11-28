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
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.22;

import {ERC20} from "@openzeppelin/contracts@5.1.0/token/ERC20/ERC20.sol";
import {ERC20Burnable} from "@openzeppelin/contracts@5.1.0/token/ERC20/extensions/ERC20Burnable.sol";
import {ERC20Permit} from "@openzeppelin/contracts@5.1.0/token/ERC20/extensions/ERC20Permit.sol";
import {Ownable} from "@openzeppelin/contracts@5.1.0/access/Ownable.sol";

contract PinguToken is ERC20, ERC20Burnable, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("PinguToken", "NOOT")
        Ownable(initialOwner)
        ERC20Permit("PinguToken")
    {
        _mint(msg.sender, 1000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}


```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile PinguToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "PinguToken" contract from the dropdown menu, and copy the Account Address and paste it in the text area beside the deploy button, then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by copying the Account Address in the Deploy & Run Transactions" tab then go to Deployed contracts click the drop down arrow for the mint and paste the copied address the add your value then click transact to add value for your token. To see the token value the click the totalSupply below. then to see the symbol, decimal, and name of the token just click the following buttons. To add allowance you need click the drop down arrow of allowanceincrease then copy and paste the Account Address to the spender box then add your value below before clicking the transact. you can do the same steps to the decrease allowance. to check your allowance just copy and paste the address for both columns then click call it will show. to check your account balance you need to click the drop down arrow in balanceof to paste the address and click call it will automatically show. to transfer you just need to click the drop down arrow in transfer, you just need to copy the account address you want to transfer then add the amount then click transact. To burn click the drop down arrow then input the value you want to burn and click the button. To mint tokens you just need to click the drop down arrow of the mint button then paste the address and add the value you want to mint before clicking the button


## Authors
@Dracogray24

