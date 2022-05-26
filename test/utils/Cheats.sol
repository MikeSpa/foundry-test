pragma solidity ^0.8.0;

abstract contract Cheats {
    function warp(uint256 x) public virtual;

    function roll(uint256 x) public virtual;
}
