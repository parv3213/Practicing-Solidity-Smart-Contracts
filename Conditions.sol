pragma solidity ^0.6.0;

contract Conditionals {
    // Conditionals - Control Flow
    // Loop

    address public owner;
    uint256[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    constructor() public {
        owner = msg.sender;
    }

    function isEvenNumber(uint256 _number) public view returns (bool) {
        if (_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function countEvenNumber() public view returns (uint256) {
        uint256 count = 0;
        for (uint256 i; i < numbers.length; i++) {
            if (isEvenNumber(numbers[i])) {
                count++;
            }
        }
        return count;
    }

    function isOwner() public view returns (bool) {
        return (owner == msg.sender);
    }
}
