//
//  Programming.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/15/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct Programming {
    
    var blockId: String? // The unique numeric identifier for this programming block
    var dateTime: NSDate? // Timestamp for this programming block
    var tickets: String? // URL for page to puchase tickets for this programming block
    var matches: [String]? // Match IDs for matches in this programming block
    var leagueId: String? // League ID for the league this programming block belongs to
    var tournamentId: String? // Tournament ID for the tournament this programming block belongs to
    var tournamentName: String? // Name of the tournament this programming block belongs to
    var significance: String? // ['0' or '1']: This programming block has been marked significant
    var tbdTime: String? // ['0' or '1']: Display this programming block with a TBD time
    var leagueColor: String? // Hex color code to be used when printing the name of the league this programming block belongs to
    var week: String? // Week number or name of this programming block
    var body: [ProgrammingBody]? // Entries written for programming block
    var rebroadcastDate: String? // Time this broadcast will be re-aired
    var label: String? // Label for this programming block
    
    init(data: AnyObject) {
        
        blockId = data[LolEsportsClient.JSONKeys.BlockId] as? String
        let date = data[LolEsportsClient.JSONKeys.DateTime] as? String
        dateTime = date?.toNSDate()
        tickets = data[LolEsportsClient.JSONKeys.Tickets] as? String
        matches = data[LolEsportsClient.JSONKeys.Matches] as? [String]
        leagueId = data[LolEsportsClient.JSONKeys.LeagueId] as? String
        tournamentId = data[LolEsportsClient.JSONKeys.TournamentId] as? String
        tournamentName = data[LolEsportsClient.JSONKeys.TournamentName] as? String
        significance = data[LolEsportsClient.JSONKeys.Significance] as? String
        tbdTime = data[LolEsportsClient.JSONKeys.TBDTime] as? String
        leagueColor = data[LolEsportsClient.JSONKeys.LeagueColor] as?
        String
        week = data[LolEsportsClient.JSONKeys.Week] as? String
        rebroadcastDate = data[LolEsportsClient.JSONKeys.RebroadcastDate] as? String
        label = data[LolEsportsClient.JSONKeys.Label] as? String
        body = ProgrammingBody.programmingBodiesFromResults(data[LolEsportsClient.JSONKeys.Body] as! [AnyObject])
    }
}