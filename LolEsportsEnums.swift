//
//  LolEsportsEnums.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/10/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

extension LolEsportsClient {
    
    // Values for query parameter, parameters[published]
    enum Published : String {
        
        case Yes = "1"
        case No = "0"
        case All = "1,0"
    }

    // Values for query parameter, parameters[method]
    enum Method : String {
        
        case All = "all"
    }
}