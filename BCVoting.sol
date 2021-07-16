// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


import '/Users/zouvier/projects/openzeppelin-contracts/contracts/access/Ownable.sol';

contract votingChain {

struct VotingPage2options {
    uint256 currentPageHash;
    uint256 nextPageHash;
    bool option1;
    bool option2;
    bool isLastPage;
    mapping(uint256 => VotingPage2options) nextpage;
}


}


