// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "forge-std/Test.sol";

import "../src/PriceFeedConsumerV3.sol";
import "./mocks/MockV3Aggregator.sol";

contract PriceFeedConsumerTest is Test {
    uint8 public constant DECIMALS = 18;
    int256 public constant INITIAL_ANSWER = 1 * 10**18;
    PriceFeedConsumerV3 public priceFeedConsumer;
    MockV3Aggregator public mockV3Aggregator;

    function setUp() public {
        mockV3Aggregator = new MockV3Aggregator(DECIMALS, INITIAL_ANSWER);
        priceFeedConsumer = new PriceFeedConsumerV3(address(mockV3Aggregator));
    }

    function test_consumer_returns_starting_value() public {
        int256 price = priceFeedConsumer.getLatestPrice();
        assertTrue(price == INITIAL_ANSWER);
    }
}
