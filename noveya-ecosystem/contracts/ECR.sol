// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

interface IOracle {
    function energyIndex() external view returns (uint256); // индекс энерго-корзины
}

contract ECR is ERC20, AccessControl {
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE"); // Σ-Audit
    IOracle public oracle;

    constructor(address oracle_) ERC20("ENERGON Credit", "ECR") {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        oracle = IOracle(oracle_);
    }

    function mint(address to, uint256 amount) external onlyRole(MINTER_ROLE) {
        _mint(to, amount);
    }

    function energyIndex() external view returns (uint256) {
        return oracle.energyIndex();
    }
}
