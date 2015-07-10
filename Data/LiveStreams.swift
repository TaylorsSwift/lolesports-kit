//
//  LiveStreams.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/10/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct LiveStreams {
    
    var type: String? // Provider of this stream
    var URL: String? // URL to this stream
    var embedCode: String? // Embed code, if the provider is Azubu
    
    init(data: AnyObject) {
        
        type = data[LolEsportsClient.JSONKeys.Type] as? String
        URL = data[LolEsportsClient.JSONKeys.URL] as? String
        embedCode = data[LolEsportsClient.JSONKeys.EmbedCode] as? String
    }
}