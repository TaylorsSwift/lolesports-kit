//
//  Series.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/8/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct Series {
    
    var labelPublic: String?
    var season: String?
    var label: String?
    var id: String?
    var url: String?
    
    init(dictionary: AnyObject) {
        
        labelPublic = dictionary[LolEsportsClient.JSONKeys.LabelPublic] as? String
        season = dictionary[LolEsportsClient.JSONKeys.Season] as? String
        label = dictionary[LolEsportsClient.JSONKeys.Label] as? String
        id = dictionary[LolEsportsClient.JSONKeys.Id] as? String
        url = dictionary[LolEsportsClient.JSONKeys.URL] as? String
        
    }
    
    static func seriesFromResults(results: [AnyObject]) -> [Series] {
        
        var series = [Series]()
        
        for value in results {
            series.append(Series(dictionary: value))
        }
        
        return series
    }
    
}