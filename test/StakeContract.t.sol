// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "../src/StakeContract.sol";
import "./mocks/MockERC20.sol";
import "./utils/Cheats.sol";

contract StakeContractTest is Test {
    StakeContract public stakeContract;
    MockERC20 public mockERC20;
    Cheats internal constant cheats = Cheats(HEVM_ADDRESS);

    function setUp() public {
        stakeContract = new StakeContract();
        mockERC20 = new MockERC20();
    }

    function testStake(uint8 amount) public {
        mockERC20.approve(address(stakeContract), amount);
        bool stakePassed = stakeContract.stake(amount, address(mockERC20));
        assertTrue(stakePassed);
    }
}
