// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Tokens is ERC20, Ownable {
    constructor(
        uint256 initialSupply
    ) ERC20("Austin", "JJ") Ownable(msg.sender) {
        _mint(msg.sender, initialSupply);
    }

    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }

    function burn(address from, uint256 amount) external {
        _burn(from, amount);

    function transfer(address _from, address _to, uint256 _amount)external {
        _transfer(_from, _to, _amount);
    }
}
