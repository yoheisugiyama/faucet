// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Storage {
    mapping(uint => uint) public aa; //  slot 0
    mapping(address => uint) public bb; // slot 1

    uint8 public a = 7; //1 byte
    uint16 public b = 10; //2 bytes
    address public c = 0xFC64356386d7Ab871fd256c26A0b7C8742d94Ad9;
    bool d = true; //1 byte
    uint64 public e = 15; // 8bytes
    // 32 bytes, all values will be stored in slot 2

    uint256 public f = 200;
    uint8 public g = 40;
    uint256 public h = 789;

    constructor() {
        aa[2] = 4;
        aa[3] = 10;

        bb[0xFC64356386d7Ab871fd256c26A0b7C8742d94Ad9] = 100;
    }
}

// 0x00000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000000000000000000000000000000000000000

// web3.eth.getStorageAt()
