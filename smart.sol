// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DigitalSignatureBoard {
    address[] public signatures;
    mapping(address => bool) public hasSigned;

    function signPetition() external {
        require(!hasSigned[msg.sender], "You have already signed the petition.");
        
        hasSigned[msg.sender] = true;
        signatures.push(msg.sender);
    }

    function getSignatures() external view returns (address[] memory) {
        return signatures;
    }
}
