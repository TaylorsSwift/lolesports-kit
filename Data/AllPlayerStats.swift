//
//  AllPlayerStats.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/15/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct AllPlayerStats {
    
    var kda: Double? // (Kills + assists) / deaths
    var averageTotalGold: Double? // Average total gold by the end of this player's games
    var gpm: Double? // Average gold earned per minute by this player
    
    init(data: AnyObject) {
        kda = data[LolEsportsClient.JSONKeys.KDA] as? Double
        averageTotalGold = data[LolEsportsClient.JSONKeys.AverageTotalGold] as? Double
        gpm = data[LolEsportsClient.JSONKeys.GPM] as? Double
    }
    
    static func playerStatsFromResults(results: [String : AnyObject]) -> [String : AllPlayerStats] {
        
        var allPlayerStats = [String : AllPlayerStats]()
        
        for (key, value) in results {
            allPlayerStats[key] = AllPlayerStats(data: value)
        }
        
        return allPlayerStats
    }
}