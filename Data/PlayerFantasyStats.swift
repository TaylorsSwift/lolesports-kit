//
//  PlayerFantasyStats.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/15/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct PlayerFantasyStats {
    
    var playerId: Int? // Player ID
    var kills: Int? // Total number of kills
    var deaths: Int? // Total number of deaths
    var assists: Int? // Total number of assists
    var minionKills: Int? // Total number of last-hitted minions
    var doubleKills: Int? // Total number of double kills
    var tripleKills: Int? // Total number of triple kills
    var quadraKills: Int? // Total number of quadra kills
    var pentaKills: Int? // Total number of penta kills
    var playerName: String? // Player's summoner name
    var role: String? // Player's role on team
    
    init(data: AnyObject) {
        
        playerId = data[LolEsportsClient.JSONKeys.PlayerId] as? Int
        kills = data[LolEsportsClient.JSONKeys.Kills] as? Int
        deaths = data[LolEsportsClient.JSONKeys.Deaths] as? Int
        assists = data[LolEsportsClient.JSONKeys.Assists] as? Int
        minionKills = data[LolEsportsClient.JSONKeys.MinionsKilled] as? Int
        doubleKills = data[LolEsportsClient.JSONKeys.DoubleKills] as? Int
        tripleKills = data[LolEsportsClient.JSONKeys.TripleKills] as? Int
        quadraKills = data[LolEsportsClient.JSONKeys.QuadraKills] as? Int
        pentaKills = data[LolEsportsClient.JSONKeys.PentaKills] as? Int
        playerName = data[LolEsportsClient.JSONKeys.PlayerName] as? String
        role = data[LolEsportsClient.JSONKeys.Role] as? String
    }
}