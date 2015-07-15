//
//  FantasyStats.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/15/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct FantasyStats {
    
    var teamStats: [FantasyStatsTeamGame]?
    var playerStats: [FantasyStatsPlayerGame]?
    
    init(data: [String : AnyObject]) {
        
        if let fantasyStatsTeamGame = data[LolEsportsClient.JSONKeys.TeamStats] as? [String : AnyObject]{
            teamStats = FantasyStatsTeamGame.teamStatsFromResults(fantasyStatsTeamGame)
        }
        if let fantasyStatsPlayerGame = data[LolEsportsClient.JSONKeys.PlayerStats] as? [String : AnyObject]{
            playerStats = FantasyStatsPlayerGame.playerStatsFromResults(fantasyStatsPlayerGame)
        }
        
    }
}