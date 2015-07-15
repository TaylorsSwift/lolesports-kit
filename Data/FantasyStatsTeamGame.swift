//
//  FantasyStatsTeamGame.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/15/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct FantasyStatsTeamGame {
    
    var dateTime: NSDate? // Timestamp of when this game was played
    //var team1: TeamFantasyStats? // Team fantasy stats. '0' object key will be id of the team
    //var team2: TeamFantasyStats? // Team fantasy stats. '1' object key will be id of the team
    var timePlayed: Int? // Time played in seconds
    var matchId: Int? // Match ID
    
    init(data: [String : AnyObject]) {

        let date = data[LolEsportsClient.JSONKeys.DateTime] as? String
        dateTime = date?.toNSDate()
        timePlayed = data[LolEsportsClient.JSONKeys.TimePlayed] as? Int
        matchId = data[LolEsportsClient.JSONKeys.MatchId] as? Int
        
    }
    
    static func teamStatsFromResults(results: [String : AnyObject]) -> [FantasyStatsTeamGame] {
        
        var teamStats = [FantasyStatsTeamGame]()
        
        for (key, value) in results {
            teamStats.append(FantasyStatsTeamGame(data: value as! [String : AnyObject]))
        }
        
        return teamStats
    }
}