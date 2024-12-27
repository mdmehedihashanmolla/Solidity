// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract StructArrayExample{
    struct Player{
        string name;
        uint score;
    }

    // Array of Player Structs

    Player[] public players;

    // Add a new player

    function addPlayer(string memory _name, uint _score)public{
        players.push(Player(_name, _score));
    }
    // Get a player's details
    function getPlayer(uint index) public view returns (string memory, uint){
        require(index < players.length, "Index out of bounds");
        return(players[index].name, players[index].score);
    }
}