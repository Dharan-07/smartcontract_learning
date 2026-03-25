// get fund from the user
// withdraw funds
// set a minimum funding vaule in usd

//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

interface AggregatorV3Interface {
  function decimals() external view returns (uint8);

  function description() external view returns (string memory);

  function version() external view returns (uint256);

  function getRoundData(
    uint80 _roundId
  ) external view returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);

  function latestRoundData()
    external
    view
    returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound);
} 

contract FundMe {
    uint256 public minimumUSD = 5;
    function fund() public payable{
        // allow users to send $
        // have a mini value $
        // how we send ETH ?
        require(msg.value >= minimumUSD, "ur sending low value"/*error msg*/); // 1e18 = 1 ETH = 1000000000000000000 (wei) = 1*10^18 0r in code 1*10**18
    }

    function withdraw() public {}
    function getPrice() public {}
    function getConvertionRate() public {}

    function getVersion() public view returns(uint256) {

       return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version(); //

    }
}

// what is revert ?
// undo any action that have been done and send the remaining gas back
