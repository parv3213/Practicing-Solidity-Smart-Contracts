pragma solidity ^0.6.0;

contract Ownable {
    address public owner;
    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }

    constructor() public {
        owner = msg.sender;
    }
}

contract SecretVault {
    string secert;

    constructor(string memory _secret) public {
        secert = _secret;
    }

    function getSecret() public view returns (string memory) {
        return secert;
    }
}

contract MyContract4 is Ownable {
    // Inheritance
    // Factories
    // Working with other contracts- Smart Contract Interactions
    address secretVault;

    constructor(string memory _string) public {
        SecretVault _secretVault = new SecretVault(_string);
        secretVault = address(_secretVault);
        super;
    }

    function getSecret() public view onlyOwner returns (string memory) {
        SecretVault _secretVault = SecretVault(secretVault);
        return _secretVault.getSecret();
    }
}
