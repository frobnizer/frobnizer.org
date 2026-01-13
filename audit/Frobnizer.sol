// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/// @title Frobnizer Token (FBZR)
/// @notice Standard ERC-20 token with fixed supply, no administrative control
contract Frobnizer is ERC20 {
    constructor() ERC20("Frobnizer", "FBZR") {
        // Mint initial supply (420,000,000 tokens) to the deployer
        _mint(msg.sender, 420_000_000 * 10 ** decimals());
    }
}