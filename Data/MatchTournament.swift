//
//  MatchTournament.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/10/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct MatchTournament {
    
    var id: String? // Numeric identifier for tournament
    var name: String? // Numeric identifier for tournament
    var round: String? // Numeric identifier for the round this match is in
    
    init(data: AnyObject) {
        
        id = data[LolEsportsClient.JSONKeys.Id] as? String
        name = data[LolEsportsClient.JSONKeys.Name] as? String
        round = data[LolEsportsClient.JSONKeys.Round] as? String
    }
    
}