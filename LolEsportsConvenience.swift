//
//  LolEsportsConvenience.swift
//  eSportsKit
//
//  Created by Taylor Caldwell on 7/1/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

// MARK - Convenience Resource Methods

extension LolEsportsClient {
    
    // MARK: Get Leagues
    func getLeagues(completionHandler: (leagues: [League]?, error: NSError?) -> Void) {
    
        let parameters = [Parameters.Method : Constants.All]
        
        taskGET(Methods.League, parameters: parameters) { json, error in
            
            if let downloadError = error {
                completionHandler(leagues: nil, error: error)
            } else {
                let leagueJSON = json.valueForKey(LolEsportsClient.JSONKeys.Leagues) as? [[String : AnyObject]]
                let leagues = League.leaguesFromResults(leagueJSON!)
                completionHandler(leagues: leagues, error: nil)
            }
        }
    }
    
    // MARK: Get Matches
    // Returns the schedule of matches for the specified tournament
    func getMatches(tournamentId: Int, completionHandler: (matches: [Match]?, error: NSError?) -> Void) {
        
        let parameters: [String : AnyObject!] = [
            Parameters.TournamentId : tournamentId,
            Parameters.IncludeFinished : false
        ]
        
        taskGET(Methods.Schedule, parameters: parameters) { json, error in
            
            if let downloadError = error {
                completionHandler(matches: nil, error: error)
            } else {
                let matches = Match.matchesFromResults(json as! [String : AnyObject])
                completionHandler(matches: matches, error: nil)
            }
            
        }
    }
    
    // MARK: Get Series
    func getSeries(completionHandler: (series: [Series]?, error: NSError?) -> Void) {
        
        taskGET(Methods.Series, parameters: nil) { json, error in
            
            if let downloadError = error {
                completionHandler(series: nil, error: error)
            } else {
                let series = Series.seriesFromResults(json as! [AnyObject])
                completionHandler(series: series, error: nil)
            }
            
        }
    }
    
    // MARK: Get Standings
    func getStandings(tournamentId: Int, completionHandler: (standings: [Standing]?, error: NSError?) -> Void) {
        
        let parameters: [String : AnyObject!] = [
            Parameters.TournamentId : tournamentId
        ]
        
        taskGET(Methods.Standings, parameters: parameters) { json, error in
            
            if let downloadError = error {
                completionHandler(standings: nil, error: error)
            } else {
                let standings = Standing.standingsFromResults(json as! [AnyObject])
                completionHandler(standings: standings, error: nil)
            }
            
        }
    }
}