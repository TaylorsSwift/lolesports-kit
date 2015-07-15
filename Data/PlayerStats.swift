//
//  PlayerStats.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/15/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct PlayerStats {
    
    var tournaments: [PlayerStatsTournament]? // An array of tournaments this player has played in, each containing its own collection of stats
    var tournamentId: Int? // The unique numeric identifier for the tournament these stats are associated with for this player
    var kda: Double? // (Kills + assists) / deaths
    var killParticipation: Double? // Percentage of kills by team this player was a part of
    var gpm: Double? // Average gold earned per minute
    var totalGold: Int? // Sum of total gold earned
    var kills: Int? // Total number of kills
    var deaths: Int? // Total number of deaths
    var assists: Int? // Total number of assists
    var minionsKilled: Int? // Total number of minions last-hitted
    var secondsPlayed: Int? // Total amount of time played in seconds
    var gamesPlayed: Int? // Total number of games playng in
    
    init(data: [String : AnyObject]) {
        
        if let playerStatsTournament = data[LolEsportsClient.JSONKeys.Tournaments] as? [AnyObject] {
            tournaments = PlayerStatsTournament.tournamentsFromResults(playerStatsTournament)
        }
        tournamentId = data[LolEsportsClient.JSONKeys.TournamentId] as? Int
        kda = data[LolEsportsClient.JSONKeys.KDA] as? Double
        killParticipation = data[LolEsportsClient.JSONKeys.KillParticipation] as? Double
        gpm = data[LolEsportsClient.JSONKeys.GPM] as? Double
        totalGold = data[LolEsportsClient.JSONKeys.TotalGold] as? Int
        kills = data[LolEsportsClient.JSONKeys.Kills] as? Int
        deaths = data[LolEsportsClient.JSONKeys.Deaths] as? Int
        assists = data[LolEsportsClient.JSONKeys.Assists] as? Int
        minionsKilled = data[LolEsportsClient.JSONKeys.MinionsKilled] as? Int
        secondsPlayed = data[LolEsportsClient.JSONKeys.SecondsPlayed] as? Int
        gamesPlayed = data[LolEsportsClient.JSONKeys.GamesPlayed] as? Int
    }
}