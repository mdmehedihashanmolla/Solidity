// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract VotingSystem {
    // Mapping to store the votes for each candidate (candidate name -> vote count)
    mapping(string => uint256) public votes;

    // Mapping to track whether a user has voted (user address -> has voted or not)
    mapping(address => bool) public hasVoted;

    // Mapping to store which candidate each user voted for
    mapping(address => string) public userVotes;

    // Array to store the addresses of all voters (for iteration)
    address[] public voters;

    // List of candidates
    string[] public candidates;

    // Constructor to initialize the candidates
    constructor(string[] memory _candidates) {
        candidates = _candidates;
    }

    // Function to vote for a candidate
    function vote(string memory candidate) public {
        require(!hasVoted[msg.sender], "You have already voted.");
        require(isValidCandidate(candidate), "Invalid candidate.");

        // Update the mapping to reflect the vote
        votes[candidate]++;

        // Mark the sender as having voted and store their choice
        hasVoted[msg.sender] = true;
        userVotes[msg.sender] = candidate;

        // Add voter address to the voters list
        voters.push(msg.sender);
    }

    // Function to check if a candidate is valid
    function isValidCandidate(
        string memory candidate
    ) private view returns (bool) {
        for (uint i = 0; i < candidates.length; i++) {
            if (
                keccak256(bytes(candidates[i])) == keccak256(bytes(candidate))
            ) {
                return true;
            }
        }
        return false;
    }

    // Function to get the number of votes for a specific candidate
    function getVotesForCandidate(
        string memory candidate
    ) public view returns (uint256) {
        return votes[candidate];
    }

    // Function to get the list of all voters
    function getVoters() public view returns (address[] memory) {
        return voters;
    }

    // Function to reset a user's vote
    function resetVote() public {
        require(hasVoted[msg.sender], "You have not voted.");

        // Get the candidate the user voted for
        string memory votedCandidate = userVotes[msg.sender];

        // Reduce the vote count for that candidate
        votes[votedCandidate]--;

        // Remove the voter from the voters array
        for (uint i = 0; i < voters.length; i++) {
            if (voters[i] == msg.sender) {
                // Move the last element to this position and pop the last element
                voters[i] = voters[voters.length - 1];
                voters.pop();
                break;
            }
        }

        // Reset the user's vote status and clear their vote
        hasVoted[msg.sender] = false;
        delete userVotes[msg.sender];
    }
}
