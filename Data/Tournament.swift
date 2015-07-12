//
//  Tournament.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/11/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct Tournament {
    
    var name: String // Name of tournament for administrative purposes
    var namePublic: String? // Name of tournament suitable for public consumption
    var contestants: [TournamentContestant]? // List of teams participating in tournament
    var isFinished: Bool // Indicates if the tournament is finished or still being played
    var dateBegin: NSDate? // Date that the first game of tournament was played (Y-m-d\TH:i\Z)
    var dateEnd: NSDate? // Date that the last game of tournament was played (Y-m-d\TH:i\Z)
    var noVods: Bool // Indicates that no vods will ever exist for this tournament
    var season: String // ['2014' or 'Season 3']: Season this tournament is in
    var published: Bool // Published or hidden.
    var winner: String //Winner of this tournament, or empty string. Use isFinished to determine if tournament is finished or not.
    
    init(data: AnyObject) {
        name = data[LolEsportsClient.JSONKeys.TournamentName] as! String
        namePublic = data[LolEsportsClient.JSONKeys.NamePublic] as? String
        if let tournamentContestants: [String : AnyObject] = data[LolEsportsClient.JSONKeys.Contestants] as? [String : AnyObject] {
            contestants = TournamentContestant.contestantsFromResults(tournamentContestants)
        }
        isFinished = data[LolEsportsClient.JSONKeys.IsFinished] as! Bool
        let beginDate = data[LolEsportsClient.JSONKeys.DateBegin] as? String
        dateBegin = beginDate?.toNSDate()
        let endDate = data[LolEsportsClient.JSONKeys.DateEnd] as? String
        dateEnd = endDate?.toNSDate()
        let noVodsInt = data[LolEsportsClient.JSONKeys.NoVods] as! Int
        noVods = noVodsInt.toBool()!
        season = data[LolEsportsClient.JSONKeys.Season] as! String
        published = data[LolEsportsClient.JSONKeys.Published] as! Bool
        winner = data[LolEsportsClient.JSONKeys.Winner] as! String
    }
    
    static func tournamentsFromResults(results: [String : AnyObject]) -> [Tournament] {
        
        var tournaments = [Tournament]()
        
        for (key, value) in results {
            tournaments.append(Tournament(data: value))
        }
        
        return tournaments
    }
}