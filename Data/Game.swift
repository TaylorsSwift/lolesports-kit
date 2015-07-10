//
//  Game.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/10/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct Game {
    
    var id: String? // Unique numeric identifier for this game
    var winnerId: String? // Team ID of this game's winner
    var noVods: Bool? // This game will never contain any vods
    var hasVods: Bool? // Streams are available for this game
    
    init(data: AnyObject) {
        
        id = data[LolEsportsClient.JSONKeys.Id] as? String
        winnerId = data[LolEsportsClient.JSONKeys.WinnerId] as? String
        /*let noVodInt = data[LolEsportsClient.JSONKeys.NoVods] as? Int
        noVods = noVodInt?.toBool()
        let hasVodsInt = data[LolEsportsClient.JSONKeys.HasVods] as? Int
        hasVods = hasVodsInt?.toBool()*/
    }
    
    static func gamesFromResults(results: [String : AnyObject]) -> [Game] {

        var games = [Game]()
        
        for (key, value) in results {
            games.append(Game(data: value))
        }
        
        return games
    }
}