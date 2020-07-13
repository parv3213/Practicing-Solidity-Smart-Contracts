pragma solidity ^0.6.0;

contract MyContract3 {
    // mapping
    mapping(uint256 => string) public names;
    mapping(uint256 => Book) public books;
    mapping(address => mapping(uint256 => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor() public {
        names[1] = "Ram";
        names[2] = "Shaym";
        names[3] = "BalaRam";
    }

    function addBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}
