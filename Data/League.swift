//
//  League.swift
//  eSportsKit
//
//  Created by Taylor Caldwell on 7/1/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct League {
    
    var id: String // The unique numeric identifier for this league
    var color: String? //Color to be used when printing league name
    var leagueImage: String? // Image to be used as a representation of this league
    var tournamentId: String? // Default, or current, tournament being played
    var seriesId: String? // Default, or current, series being played
    var shortName: String? // Short league name
    var leagueTournaments: [Int]? // Tournament IDs that belong to this league
    var url: String? // URL to overview of league
    var longName: String? // Long league name
    var noVods: Int? // This league will never contain any vods
    var menuWeight: String? // Position of this league in the league menu
    var internationalLiveStream: [LiveStreamLanguage]?
    var published: Bool // Published or hidden
    
    init(dictionary: [String : AnyObject]) {
        
        id = dictionary[LolEsportsClient.JSONKeys.Id] as! String
        color = dictionary[LolEsportsClient.JSONKeys.Color] as? String
        leagueImage = dictionary[LolEsportsClient.JSONKeys.LeagueImage] as? String
        tournamentId = dictionary[LolEsportsClient.JSONKeys.TournamentId] as? String
        seriesId = dictionary[LolEsportsClient.JSONKeys.SeriesId] as? String
        shortName = dictionary[LolEsportsClient.JSONKeys.ShortName] as? String
        leagueTournaments = dictionary[LolEsportsClient.JSONKeys.LeagueTournaments] as? [Int]
        url = dictionary[LolEsportsClient.JSONKeys.URL] as? String
        longName = dictionary[LolEsportsClient.JSONKeys.Label] as? String
        noVods = dictionary[LolEsportsClient.JSONKeys.NoVods] as? Int
        menuWeight = dictionary[LolEsportsClient.JSONKeys.MenuWeight] as? String
        published = dictionary[LolEsportsClient.JSONKeys.Published] as! Bool
        
        if let livestream = dictionary[LolEsportsClient.JSONKeys.InternationalLiveStream] as? [AnyObject]{
            internationalLiveStream = LiveStreamLanguage.internationalLiveStreamFromResults(livestream)
        }
    }
    
    static func leaguesFromResults(results: [[String: AnyObject]]) -> [League] {
        
        var leagues = [League]()
        
        for result in results {
            leagues.append(League(dictionary: result))
        }
        
        return leagues
    }
}