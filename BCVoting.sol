// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;


import '/Users/zouvier/projects/openzeppelin-contracts/contracts/access/Ownable.sol';

// added Ownable.sol 
contract votingChain is Ownable {


uint _voterNumber;
constructor(){
_voterNumber = 0;
}

// variable for voter address
address Voter = msg.sender;

struct VotingPage2options {
    bool VoteCasted;
    bool option1;
    bool option2;
    bool HasVoted;
    uint VoterNumber;
}


// emit the address of the voter and their options
event finishedVoting (address indexed _user, bool _option1, bool _option2 , uint indexed Voter_Number);


// will not allow voter to submit if they have already voted
modifier Voted {
    StartingPoint[Voter].HasVoted == false;
_;
}

// mapping of the address of the voter to the struct for holding the votes
mapping(address => VotingPage2options) StartingPoint;


function voting( bool _option1, bool _option2, bool _votecasted) public Voted {

if ((_option1 == true) || (_option1 == false)){
StartingPoint[Voter].option1 = _option1;
}

if ((_option2 == true) || (_option2 == false)){
StartingPoint[Voter].option2 = _option2;
}


// sets Has voted to true, then increases the VoterNumber and assigns it the the Voter. 
// at the end an emit tells us who the Voter is (address), the options they chose, and their voter Number 
// this will allow for easy to gather data  
if (_votecasted == true) {
    StartingPoint[Voter].HasVoted == _votecasted;
    _voterNumber ++;
    StartingPoint[Voter].VoterNumber = _voterNumber;
    emit finishedVoting(Voter, StartingPoint[Voter].option1,StartingPoint[Voter].option2, _voterNumber );

}

}

}


