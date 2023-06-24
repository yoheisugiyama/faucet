// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

// It's a way for a designer to say that "any child of the abstract contract has to impliment specified methods"

abstract contract Logger {
    uint public testNum;

    constructor() {
        testNum = 1000;
    }

    // functions without implementation should include "virtual"
    function emitLog() public pure virtual returns (bytes32);

    function test3() internal pure returns (uint) {
        return 100;
    }
}
