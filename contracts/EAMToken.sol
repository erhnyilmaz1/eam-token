// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract EAMToken is ERC20, ERC20Burnable, ERC20Pausable, Ownable, ERC20Permit {
    constructor(address initialOwner)
        ERC20("EAMToken", "EAM")
        Ownable(initialOwner)
        ERC20Permit("EAMToken")
    {}

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // The following functions are overrides required by Solidity.

    function _update(
        address from,
        address to,
        uint256 value
    ) internal override(ERC20, ERC20Pausable) {
        super._update(from, to, value);
    }

    function addEmployer(address) public {}

    function removeEmployer(address) public {}

    function borrowingCoffee(
        address fromAddress,
        address toAddress,
        uint256 amount
    ) public {}

    function lendingCoffee(
        address fromAddress,
        address toAddress,
        uint256 amount
    ) public {}

    function deliverCoffee() public {}

    function randomMethdod() public {}

    function voting() public {}

    function burn() public {}
}
