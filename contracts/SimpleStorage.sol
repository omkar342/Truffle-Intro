// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.16 <0.9.0;

contract SimpleStorage {
    uint256 storedData;

    event Set(address indexed from, uint256 value);

    function set(uint256 x) public {
        storedData = x;
        emit Set(msg.sender, x);
    }

    function get() public view returns (uint256) {
        return storedData;
    }
}
