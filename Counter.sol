pragma solidity ^0.6.0;

contract Counter {
    uint256 public count = 1;

    function incrementCount() public {
        count = count + 1;
    }
}
