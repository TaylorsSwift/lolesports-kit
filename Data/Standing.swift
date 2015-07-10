//
//  Standing.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/8/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct Standing {
    
    var teamId: Int? // Unique numeric of team
    var teamTitle: String? // Name of the team
    var wins: Int? // Number of match wins
    var losses: Int? // Number of match losses
    var teamRank: Int? // Rank of team in tournament
    
    init(data: AnyObject) {
        
        teamId = data[LolEsportsClient.JSONKeys.TeamId] as? Int
        teamTitle = data[LolEsportsClient.JSONKeys.TeamTitle] as? String
        wins = data[LolEsportsClient.JSONKeys.Wins] as? Int
        losses = data[LolEsportsClient.JSONKeys.Losses] as? Int
        teamRank = data[LolEsportsClient.JSONKeys.TeamRank] as? Int
        
    }
    
    static func standingsFromResults(results: [AnyObject]) -> [Standing] {
        
        var standings = [Standing]()
        
        for value in results {
            standings.append(Standing(data: value))
        }
        
        return standings
    }
    
}