//
//  TeamFantasyStats.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/15/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct TeamFantasyStats {
    
    var teamID: Int? // Team ID
    var teamName: String? // Team's name
    var matchVictory: Int? // Match ended in victory for this team
    var matchDefeat: Int? // Match ended in defeat for this team
    var baronsKilled: Int? // Number of times this team killed baron
    var dragonsKilled: Int? // Number of times this team killed dragon
    var firstBlood: Int? // This team got first blood
    var firstTower: Int? // This team took down the first tower of the game
    var firstInhibitor: Int? // This team took down the first inhibitor of the game
    var towersKilled: Int? // Total number of towers taken down by this team
    
    init(data: AnyObject) {
        
        teamID = data[LolEsportsClient.JSONKeys.TeamID] as? Int
        teamName = data[LolEsportsClient.JSONKeys.TeamName] as? String
        matchVictory = data[LolEsportsClient.JSONKeys.MatchVictory] as? Int
        matchDefeat = data[LolEsportsClient.JSONKeys.MatchDefeat] as? Int
        baronsKilled = data[LolEsportsClient.JSONKeys.BaronsKilled] as? Int
        dragonsKilled = data[LolEsportsClient.JSONKeys.DragonsKilled] as? Int
        firstBlood = data[LolEsportsClient.JSONKeys.FirstBlood] as? Int
        firstTower = data[LolEsportsClient.JSONKeys.FirstTower] as? Int
        firstInhibitor = data[LolEsportsClient.JSONKeys.FirstInhibitor] as? Int
        towersKilled = data[LolEsportsClient.JSONKeys.TowersKilled] as? Int
    }
}