//
//  FantasyStatsPlayerGame.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/15/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct FantasyStatsPlayerGame {
    
    var dateTime: NSDate? // Timestamp of when this game was played
    var matchId: Int? // Match ID
    var players: [PlayerFantasyStats]?
    
    init(data: [String : AnyObject]) {
        
        for (key, value) in data {
            switch(key) {
            case LolEsportsClient.JSONKeys.DateTime:
                let date = data[key] as? String
                dateTime = date?.toNSDate()
            case LolEsportsClient.JSONKeys.MatchId:
                let id = data[LolEsportsClient.JSONKeys.MatchId] as? String
                matchId = id?.toInt()
            default:
                if players == nil {
                    players = [PlayerFantasyStats]()
                }
                players?.append(PlayerFantasyStats(data: data[key]!))
            }
        }
    }
    
    static func playerStatsFromResults(results: [String : AnyObject]) -> [FantasyStatsPlayerGame] {
        
        var playerStats = [FantasyStatsPlayerGame]()
        
        for (key, value) in results {
            playerStats.append(FantasyStatsPlayerGame(data: value as! [String : AnyObject]))
        }
        
        return playerStats
    }
}