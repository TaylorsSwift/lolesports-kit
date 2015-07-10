//
//  SingleContestant.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/10/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct SingleContestant {
    
    var id: String // Unique numeric identifier for this team
    var name: String? // Name of the team
    var logoURL: String? // URL to the team logo
    var acronym: String? // Short label for this team
    var wins: Int? // Total game wins in this match
    var losses: Int? // Total game losses in this match
    
    init(data: AnyObject) {
        
        id = data[LolEsportsClient.JSONKeys.Id] as! String
        name = data[LolEsportsClient.JSONKeys.Name] as? String
        logoURL = data[LolEsportsClient.JSONKeys.LogoURL] as? String
        acronym = data[LolEsportsClient.JSONKeys.Acronym] as? String
        wins = data[LolEsportsClient.JSONKeys.Wins] as? Int
        losses = data[LolEsportsClient.JSONKeys.Losses] as? Int
        
        
    }
    
}