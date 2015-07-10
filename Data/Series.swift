//
//  Series.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/8/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct Series {
    
    var labelPublic: String? // Name of series suitable for public consumption
    var season: String? // Season this series is in
    var label: String? // Name of the series for administrative purposes
    var id: String? // Unique numeric identifier for this series
    var url: String? //  URL to this series's page
    var tournaments: [String]? //  IDs of the tournaments belonging to this series
    
    init(data: AnyObject) {
        
        labelPublic = data[LolEsportsClient.JSONKeys.LabelPublic] as? String
        season = data[LolEsportsClient.JSONKeys.Season] as? String
        label = data[LolEsportsClient.JSONKeys.Label] as? String
        id = data[LolEsportsClient.JSONKeys.Id] as? String
        url = data[LolEsportsClient.JSONKeys.URL] as? String
        tournaments = data[LolEsportsClient.JSONKeys.Tournaments] as? [String]
        
    }
    
    static func seriesFromResults(results: [AnyObject]) -> [Series] {
        
        var series = [Series]()
        
        for value in results {
            series.append(Series(data: value))
        }
        
        return series
    }
    
}