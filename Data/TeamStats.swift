//
//  TeamStats.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/15/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct TeamStats {
    
    var tournaments: [TeamStatsTournament]? // Only present if the tournamentId parameter was omitted
    var kda: Double // Kill Death Ratio
    var gpm: Double // Gold Per Minute
    var totalGold: Int // Total gold accumulated
    var kills: Int // Total kills
    var deaths: Int // Total team player deaths
    var assists: Int // Total kill assists
    var minionsKilled: Int // Total minions killed
    var secondsPlayed: Int // Total seconds played
    var gamesPlayed: Int // Total games played
    
    init(data: [String : AnyObject]) {
        if let teamStatsTournament = data[LolEsportsClient.JSONKeys.Tournaments] as? [AnyObject] {
            tournaments = TeamStatsTournament.tournamentsFromResults(teamStatsTournament)
        }
        kda = data[LolEsportsClient.JSONKeys.KDA] as! Double
        gpm = data[LolEsportsClient.JSONKeys.GPM] as! Double
        totalGold = data[LolEsportsClient.JSONKeys.TotalGold] as! Int
        kills = data[LolEsportsClient.JSONKeys.Kills] as! Int
        deaths = data[LolEsportsClient.JSONKeys.Deaths] as! Int
        assists = data[LolEsportsClient.JSONKeys.Assists] as! Int
        minionsKilled = data[LolEsportsClient.JSONKeys.MinionsKilled] as! Int
        secondsPlayed = data[LolEsportsClient.JSONKeys.SecondsPlayed] as! Int
        gamesPlayed = data[LolEsportsClient.JSONKeys.GamesPlayed] as! Int
    }
}