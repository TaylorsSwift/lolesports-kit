//
//  LiveStream.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/9/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct LiveStream {
    
    
    var title: String? // Display name of the provider.
    var url: String? // URL of the provider's stream.
    
    init(data: AnyObject) {
        
        title = data[LolEsportsClient.JSONKeys.Title] as? String
        url = data[LolEsportsClient.JSONKeys.URL] as? String
        
    }
    
    static func streamsFromResults(results: [AnyObject]) -> [LiveStream] {
        
        var streams = [LiveStream]()
        
        for value in results {
            streams.append(LiveStream(data: value))
        }
        
        return streams
    }
    
}