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
    var matchId: String? // Match ID
    //var players: [PlayerFantasyStats]?
    
    init(data: [String : AnyObject]) {
        
        let date = data[LolEsportsClient.JSONKeys.DateTime] as? String
        dateTime = date?.toNSDate()
        matchId = data[LolEsportsClient.JSONKeys.MatchId] as? String
    }
    
    static func playerStatsFromResults(results: [String : AnyObject]) -> [FantasyStatsPlayerGame] {
        
        var playerStats = [FantasyStatsPlayerGame]()
        
        for (key, value) in results {
            playerStats.append(FantasyStatsPlayerGame(data: value as! [String : AnyObject]))
        }
        
        return playerStats
    }
}