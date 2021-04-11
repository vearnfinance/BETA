// contracts/BetaToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.6.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
 * @title BetaToken
 * All Beta Tokens are pre-assigned to the creator.
 * Creator can distribute Beta Tokens using `transfer` and other `ERC20` functions.
 */
contract BetaToken is ERC20 {
    /**
     * Constructor that gives msg.sender all of existing tokens.
     */
    constructor(
        string memory name,
        string memory symbol,
        uint256 initialSupply
    ) public ERC20(name, symbol) {
        _mint(msg.sender, initialSupply);
    }
}
