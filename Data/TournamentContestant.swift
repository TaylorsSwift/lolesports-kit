//
//  TournamentContestant.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/11/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct TournamentContestant {
    
    var id: String // Unique numeric identifier for this team
    var name: String? // Name of the team
    var acronym: String? // Short label for this team
    
    init(data: AnyObject) {
        id = data[LolEsportsClient.JSONKeys.Id] as! String
        name = data[LolEsportsClient.JSONKeys.Name] as? String
        acronym = data[LolEsportsClient.JSONKeys.Acronym] as? String
    }
    
    static func contestantsFromResults(results: [String : AnyObject]) -> [TournamentContestant] {
        
        var contestants = [TournamentContestant]()
        
        for (key, value) in results {
            contestants.append(TournamentContestant(data: value))
        }
        
        return contestants
    }
}