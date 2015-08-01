//
//  TeamStatsTournament.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/15/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct TeamStatsTournament {
    
    var tournamentId: Int // Unique identifier for this tournament
    var stats: TeamStat // Collection of team stats
    
    init(data: AnyObject) {
        let teamStat: [String : AnyObject] = data[LolEsportsClient.JSONKeys.Stats] as! [String : AnyObject]
        stats = TeamStat(data : teamStat)
        tournamentId = data[LolEsportsClient.JSONKeys.TournamentId] as! Int
    }
    
    static func tournamentsFromResults(results: [AnyObject]) -> [TeamStatsTournament] {
        
        var tournaments = [TeamStatsTournament]()
        
        for value in results {
            tournaments.append(TeamStatsTournament(data: value))
        }
        
        return tournaments
    }
}