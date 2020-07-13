pragma solidity ^0.6.0;

contract MyContract2 {
    // Array
    uint256[] public uintArray = [1, 2, 3];
    string[] public stringArray = ["apple", "banana", "orange"];
    string[] public myArray;
    uint256[][] public array2D = [[1, 2, 3], [4, 5, 6]];

    function addValue(string memory _value) public {
        myArray.push(_value);
    }

    function myArrayCount() public view returns (uint256) {
        return myArray.length;
    }
}
