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
    
    init(dictionary: AnyObject) {
        
        language = dictionary[LolEsportsClient.JSONKeys.Language] as? String
        displayLanguage = dictionary[LolEsportsClient.JSONKeys.DisplayLanguage] as? String
        
        if let livestreams = dictionary[LolEsportsClient.JSONKeys.Streams] as? [AnyObject] {
            streams = LiveStream.streamsFromResults(livestreams)
        }
    }
    
    static func internationalLiveStreamFromResults(results: [AnyObject]) -> [LiveStreamLanguage] {
        
        var internationalLiveStream = [LiveStreamLanguage]()
        
        for value in results {
            internationalLiveStream.append(LiveStreamLanguage(dictionary: value))
        }
        
        return internationalLiveStream
    }
    
}