
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract CrowdFund {
    struct Campaign {
        address creator;
        uint256 goal;
        uint256 pledged;
        uint32 startAt;
        uint32 endAt;
        bool claimed;
    }

    uint256 public count;

    mapping(uint256 => Campaign) public campaigns;

    mapping(uint256 => mapping(address => uint256)) public pledgedAmount;
}
