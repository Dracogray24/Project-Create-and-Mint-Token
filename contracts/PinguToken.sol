// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";


contract PinguToken is ERC20{

    constructor() ERC20("PinguToken", "NOOT"){
        _mint(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 1000000);
        _burn(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 50000);
        _transfer(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2, 100);
    }

}
