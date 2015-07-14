//
//  StatLeader.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/13/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct StatLeader {
    
    var playerName: String? // Summoner name of this player
    var playerId: String? // Player ID of this player
    var value: Int? // Rounded value of this stat
    var rank: Int? // Rank of this player for this stat (starting from 1)
    var gamesPlayed: Int? // Total number of games played by this player when counting this stat
    
    init(data: AnyObject) {
        
        playerName = data[LolEsportsClient.JSONKeys.PlayerName] as? String
        playerId = data[LolEsportsClient.JSONKeys.PlayerId] as? String
        value = data[LolEsportsClient.JSONKeys.Value] as? Int
        rank = data[LolEsportsClient.JSONKeys.PlayerName] as? Int
        gamesPlayed = data[LolEsportsClient.JSONKeys.GamesPlayed] as? Int
    }
    
    static func statLeadersFromResults(results: [String : AnyObject]) -> [StatLeader] {
        
        var statLeaders = [StatLeader]()
        
        for (key, value) in results {
            statLeaders.append(StatLeader(data: value))
        }
        
        return statLeaders
    }
}