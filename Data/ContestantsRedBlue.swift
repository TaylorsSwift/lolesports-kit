//
//  ContestantsRedBlue.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/10/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct ContestantsRedBlue {
    
    var blue: SingleContestant? // Information describing a single team.
    var red: SingleContestant? // Information describing a single team.

    init(data: AnyObject) {
        if let blueContestant: AnyObject = data[LolEsportsClient.JSONKeys.Blue] {
            blue = SingleContestant(data: blueContestant)
        }
        if let redContestant: AnyObject = data[LolEsportsClient.JSONKeys.Red] {
            red = SingleContestant(data: redContestant)
        }
    }
    
}