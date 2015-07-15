//
//  ProgrammingBody.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/15/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct ProgrammingBody {
    
    var bodyTitle: String? // Title of body entry
    var body: String? // HTML content of body entry
    var bodyTime: NSDate? // Timestamp of body entry
    
    init(data: AnyObject) {
        bodyTitle = data[LolEsportsClient.JSONKeys.BodyTitle] as? String
        body = data[LolEsportsClient.JSONKeys.Body] as? String
        let date = data[LolEsportsClient.JSONKeys.BodyTime] as? String
        bodyTime = date?.toNSDate()
    }
    
    static func programmingBodiesFromResults(results: [AnyObject]) -> [ProgrammingBody] {
        
        var bodies = [ProgrammingBody]()
        
        for value in results {
            bodies.append(ProgrammingBody(data: value))
        }
        
        return bodies
    }
}