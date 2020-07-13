pragma solidity ^0.6.0;

contract HotelRoom {
    // ether -pay smart contracts
    // modifiers
    // events
    // enums
    // visibility

    enum Statuses {Vacant, Occupied}
    Statuses currentStatus;

    event Occupy(address _occupant, uint256 _value);

    address payable public owner;

    constructor() public {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently Occupied");
        _;
    }

    modifier costs(uint256 _amount) {
        require(msg.value >= _amount, "Not Enough ether provided!");
        _;
    }

    receive() external payable onlyWhileVacant costs(2 ether) {
        owner.transfer(msg.value);
        currentStatus = Statuses.Occupied;
        emit Occupy(msg.sender, msg.value);
    }
}
