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
    var team1: TeamFantasyStats? // Team fantasy stats. '0' object key will be id of the team
    var team2: TeamFantasyStats? // Team fantasy stats. '1' object key will be id of the team
    var timePlayed: Int? // Time played in seconds
    var matchId: Int? // Match ID
    
    init(data: [String : AnyObject]) {
        for(key, value) in data {
            switch(key) {
            case LolEsportsClient.JSONKeys.DateTime:
                let date = data[key] as? String
                dateTime = date?.toNSDate()
            case LolEsportsClient.JSONKeys.TimePlayed:
                timePlayed = data[key] as? Int
            case LolEsportsClient.JSONKeys.MatchId:
                let id = data[key] as? String
                matchId = id?.toInt()
            default:
                if let firstTeam = team1 {
                    team2 = TeamFantasyStats(data: data[key]!)
                } else {
                    team1 = TeamFantasyStats(data: data[key]!)
                }
            }
        }
    }
    
    static func teamStatsFromResults(results: [String : AnyObject]) -> [FantasyStatsTeamGame] {
        
        var teamStats = [FantasyStatsTeamGame]()
        
        for (key, value) in results {
            teamStats.append(FantasyStatsTeamGame(data: value as! [String : AnyObject]))
        }
        
        return teamStats
    }
}