// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


import '/Users/zouvier/projects/openzeppelin-contracts/contracts/access/Ownable.sol';

contract votingChain {


address Voter = msg.sender;
uint256 PageHash;

struct VotingPage2options {
    uint256 currentPageHash;
    uint256 nextPageHash;
    bool VoteCasted;
    bool option1;
    bool option2;
    bool isLastPage;
    mapping(uint256 => VotingPage2options) nextpage;
}


// emit the page number, the hash and the address of the 
event finishedVoting (

);


// will check to see if the user is on the last page and then emit the first page hash 
modifier checkIfLastPage {
require(StartingPoint[msg.sender].isLastPage == false);
emit finishedVoting();
    _;
}

mapping(address => VotingPage2options) StartingPoint;

function voting(address _currentVoter, uint256 _pageHash, uint256 _nextPageHash, bool _option1, bool _option2, bool _lastpage) public checkIfLastPage {
StartingPoint[_currentVoter].currentPageHash = _pageHash;
StartingPoint[_currentVoter].nextPageHash = _nextPageHash;

if ((_option1 == true) || (_option1 == false)){
StartingPoint[_currentVoter].option1 = _option1;
}

if ((_option2 == true) || (_option2 == false)){
StartingPoint[_currentVoter].option2 = _option2;
}

if (_lastpage == true) {
    StartingPoint[_currentVoter].isLastPage == _lastpage;
}

}

}


