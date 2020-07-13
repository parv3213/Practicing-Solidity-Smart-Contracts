pragma solidity ^0.6.0;

contract MyContract {
    string public myString = "Hello World";
    bytes32 public myButyes32 = "Hello World"; //More efficient then string
    int256 public myInt = 1;
    uint256 public myUint = 1; //Similar to uint256
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;
    address public myAddress = 0xB695c6cEbBf296f98d47E65bA3a6111AA13D69f1;

    struct MyStruct {
        uint256 myInt;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello World");

    function getValue() public pure returns (uint256) {
        uint256 value = 1;
        return value;
    }
}
