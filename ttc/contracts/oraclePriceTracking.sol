pragma solidity ^0.8.21;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract CryptoPriceTrackerBTC {
    AggregatorV3Interface internal priceFeed;

    constructor(address 0xf4030086522a5beea4988f8ca5b36dbc97bee88c) {
        priceFeed = AggregatorV3Interface(0xf4030086522a5beea4988f8ca5b36dbc97bee88c);
    }

    function getLatestPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return (price, timeStamp);
    }

contract CryptoPriceTrackerETH {
    AggregatorV3Interface internal priceFeed;

    constructor(address 0x5f4ec3df9cbd43714fe2740f5e3616155c5b8419) {
        priceFeed = AggregatorV3Interface(0x5f4ec3df9cbd43714fe2740f5e3616155c5b8419);
    }

    function getLatestPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return (price, timeStamp);
    }

contract CryptoPriceTrackerLINK {
    AggregatorV3Interface internal priceFeed;

    constructor(address 0x2c1d072e956affc0d435cb7ac38ef18d24d9127c) {
        priceFeed = AggregatorV3Interface(0x2c1d072e956affc0d435cb7ac38ef18d24d9127c);
    }

    function getLatestPrice() public view returns (int) {
        (
            uint80 roundID, 
            int price,
            uint startedAt,
            uint timeStamp,
            uint80 answeredInRound
        ) = priceFeed.latestRoundData();
        return (price, timeStamp);
    }
}
