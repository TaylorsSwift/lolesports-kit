//
//  LiveStreamLanguage.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/9/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct LiveStreamLanguage {
    
    var language: String? // Name of this language. May only contain english characters.
    var displayLanguage: String? // Text that should appear in the menu list. May include international characters.
    var streams: [LiveStream]?
    
    init(data: AnyObject) {
        
        language = data[LolEsportsClient.JSONKeys.Language] as? String
        displayLanguage = data[LolEsportsClient.JSONKeys.DisplayLanguage] as? String
        
        if let livestreams = data[LolEsportsClient.JSONKeys.Streams] as? [AnyObject] {
            streams = LiveStream.streamsFromResults(livestreams)
        }
    }
    
    static func internationalLiveStreamFromResults(results: [AnyObject]) -> [LiveStreamLanguage] {
        
        var internationalLiveStream = [LiveStreamLanguage]()
        
        for value in results {
            internationalLiveStream.append(LiveStreamLanguage(data: value))
        }
        
        return internationalLiveStream
    }
    
}