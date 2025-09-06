// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract NFTCase is ERC721URIStorage, AccessControl {
    bytes32 public constant ISSUER_ROLE = keccak256("ISSUER_ROLE"); // Σ-Audit/DAO
    uint256 private _id;

    constructor() ERC721("FDL Case", "FDLC") {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    function mint(address to, string memory uri) external onlyRole(ISSUER_ROLE) returns (uint256) {
        _id += 1;
        _safeMint(to, _id);
        _setTokenURI(_id, uri); // URI содержит хэши актов и KPI
        return _id;
    }
}
