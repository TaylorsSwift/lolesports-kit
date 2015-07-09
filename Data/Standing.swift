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
    
    init(dictionary: AnyObject) {
        
        teamId = dictionary[LolEsportsClient.JSONKeys.TeamId] as? Int
        teamTitle = dictionary[LolEsportsClient.JSONKeys.TeamTitle] as? String
        wins = dictionary[LolEsportsClient.JSONKeys.Wins] as? Int
        losses = dictionary[LolEsportsClient.JSONKeys.Losses] as? Int
        teamRank = dictionary[LolEsportsClient.JSONKeys.TeamRank] as? Int
        
    }
    
    static func standingsFromResults(results: [AnyObject]) -> [Standing] {
        
        var standings = [Standing]()
        
        for value in results {
            standings.append(Standing(dictionary: value))
        }
        
        return standings
    }
    
}