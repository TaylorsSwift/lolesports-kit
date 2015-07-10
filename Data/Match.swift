//
//  Match.swift
//  eSportsKit
//
//  Created by Taylor Caldwell on 7/2/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct Match {
    
    var tournament: MatchTournament? // Tournament object this match belongs to
    var url: String? // URL to this match's page
    var dateTime: NSDate? // Timestamp of when this match is scheduled
    var winnerId: String? // Team ID of this match's winner.
    var matchId: String? // Unique numeric identifier of this match
    var maxGames: String? // Maximum number of games playable in this match
    var isLive: Bool? // Boolean if this match is currently airing in its stream
    var isFinished: String? // If this match has been completed
    var contestants: ContestantsRedBlue? // Teams playing in this match, keyed by their map position
    var liveStreams: LiveStreams? // Streams available for this match
    var polldaddyId: String? // Unique ID for this match's polldady poll
    var games: [Game]? // Games in this match
    var name: String? // Label of this match
    
    init(data: AnyObject) {
        
        if let matchTournament: AnyObject = data[LolEsportsClient.JSONKeys.Tournament] {
            tournament = MatchTournament(data: matchTournament)
        }
        url = data[LolEsportsClient.JSONKeys.URL] as? String
        let date = data[LolEsportsClient.JSONKeys.DateTime] as? String
        dateTime = date?.toNSDate()
        winnerId = data[LolEsportsClient.JSONKeys.WinnerId] as? String
        matchId = data[LolEsportsClient.JSONKeys.MatchId] as? String
        maxGames = data[LolEsportsClient.JSONKeys.MaxGames] as? String
        isLive = data[LolEsportsClient.JSONKeys.IsLive] as? Bool
        isFinished = data[LolEsportsClient.JSONKeys.IsFinished] as? String
        if let matchContestants: AnyObject = data[LolEsportsClient.JSONKeys.Contestants] {
            contestants = ContestantsRedBlue(data: matchContestants)
        }
        if let matchLiveStreams: AnyObject = data[LolEsportsClient.JSONKeys.LiveStreams] {
            liveStreams = LiveStreams(data: matchLiveStreams)
        }
        polldaddyId = data[LolEsportsClient.JSONKeys.PolldaddyId] as? String
        if let matchGames: [String : AnyObject] = data[LolEsportsClient.JSONKeys.Games] as? [String : AnyObject] {
            games = Game.gamesFromResults(matchGames)
        }
        name = data[LolEsportsClient.JSONKeys.Name] as? String
        
    }
    
    static func matchesFromResults(results: [String: AnyObject]) -> [Match] {
        
        var matches = [Match]()
        
        for (key, value) in results {
            matches.append(Match(data: value))
        }
        
        return matches
    }
    
}