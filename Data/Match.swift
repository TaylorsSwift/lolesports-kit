//
//  Match.swift
//  eSportsKit
//
//  Created by Taylor Caldwell on 7/2/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct Match {
    
    var dateTime: String?
    var winnerId: String?
    var matchId: String?
    var url: String?
    var maxGames: String?
    var isLive: Bool?
    var isFinished: String?
    var liveStreams: Bool?
    var polldaddyId: String?
    var name: String?
    
    init(dictionary: AnyObject) {
        
        dateTime = dictionary[LolEsportsClient.JSONKeys.DateTime] as? String
        winnerId = dictionary[LolEsportsClient.JSONKeys.WinnerId] as? String
        matchId = dictionary[LolEsportsClient.JSONKeys.MatchId] as? String
        url = dictionary[LolEsportsClient.JSONKeys.URL] as? String
        maxGames = dictionary[LolEsportsClient.JSONKeys.MaxGames] as? String
        isLive = dictionary[LolEsportsClient.JSONKeys.IsLive] as? Bool
        isFinished = dictionary[LolEsportsClient.JSONKeys.IsFinished] as? String
        liveStreams = dictionary[LolEsportsClient.JSONKeys.LiveStreams] as? Bool
        polldaddyId = dictionary[LolEsportsClient.JSONKeys.PolldaddyId] as? String
        name = dictionary[LolEsportsClient.JSONKeys.Name] as? String
        
    }
    
    static func matchesFromResults(results: [String: AnyObject]) -> [Match] {
        
        var matches = [Match]()
        
        for (key, value) in results {
            matches.append(Match(dictionary: value))
        }
        
        return matches
    }
    
}