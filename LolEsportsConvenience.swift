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
    func getLeagues(published: Published = Published.Yes, completionHandler: (leagues: [League]?, error: NSError?) -> Void) {
    
        var parameters: [String : AnyObject!] = [
            Parameters.ParametersMethod : Method.All.rawValue,
            Parameters.ParametersPublished: published.rawValue
            
        ]
        
        taskGET(Methods.League, parameters: parameters) { (json, error) -> Void in
            
            if let downloadError = error {
                completionHandler(leagues: nil, error: error)
            } else {
                let leagueJSON = json.valueForKey(LolEsportsClient.JSONKeys.Leagues) as? [[String : AnyObject]]
                let leagues = League.leaguesFromResults(leagueJSON!)
                completionHandler(leagues: leagues, error: nil)
            }
        }
    }
    
    // MARK: Get Schedule
    // Returns the schedule of matches for the specified tournament
    func getSchedule(tournamentId: Int, teamId: Int? = nil, includeFinished: Bool = true, includeFuture: Bool = true, includeLive: Bool = true, completionHandler: (matches: [Match]?, error: NSError?) -> Void) {
        
        var parameters: [String : AnyObject!] = [
            Parameters.TournamentId : tournamentId,
            Parameters.IncludeFinished : includeFinished,
            Parameters.IncludeFuture : includeFuture,
            Parameters.IncludeLive : includeLive
        ]
        
        if let teamIdPara = teamId {
            parameters[Parameters.TeamId] = teamIdPara
        }
        
        taskGET(Methods.Schedule, parameters: parameters) { (json, error) -> Void in
            
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
        
        taskGET(Methods.Series, parameters: nil) { (json, error) -> Void in
            
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
        
        taskGET(Methods.Standings, parameters: parameters) { (json, error) -> Void in
            
            if let downloadError = error {
                completionHandler(standings: nil, error: error)
            } else {
                let standings = Standing.standingsFromResults(json as! [AnyObject])
                completionHandler(standings: standings, error: nil)
            }
            
        }
    }
    
    // MARK: Get Tournaments
    func getTournaments(published: Published = Published.Yes, completionHandler: (tournaments: [Tournament]?, error: NSError?) -> Void) {
        
        var parameters: [String : AnyObject!] = [
            Parameters.Published : published.rawValue
        ]
        
        taskGET(Methods.Tournament, parameters: parameters) { (json, error) -> Void in
            
            if let downloadError = error {
                completionHandler(tournaments: nil, error: error)
            } else {
                let tournaments = Tournament.tournamentsFromResults(json as! [String : AnyObject])
                completionHandler(tournaments: tournaments, error: nil)
            }
        }
    }
    
    // MARK: Get News
    func getNews(limit: Int = 10, offset: Int? = nil, taxonomyId: Int? = nil, lang: String? = nil, published: Published = Published.Yes, completionHandler: (news: [News]?, error: NSError?) -> Void) {
        
        var parameters: [String : AnyObject!] = [
            Parameters.Published : published.rawValue
        ]
        
        if(limit < 1 || limit > 50 ) {
            parameters[Parameters.Limit] = 10
        } else {
            parameters[Parameters.Limit] = limit
        }
        if let offsetPara = offset {
            parameters[Parameters.Offset] = offsetPara
        }
        if let taxonomyIdPara = taxonomyId {
            parameters[Parameters.TaxonomyId] = taxonomyIdPara
        }
        if let langPara = lang {
            parameters[Parameters.Lang] = langPara
        }
        
        taskGET(Methods.News, parameters: parameters) { (json, error) -> Void in
            
            if let downloadError = error {
                completionHandler(news: nil, error: error)
            } else {
                let news = News.newsFromResults(json as! [String : AnyObject])
                completionHandler(news: news, error: nil)
            }
        }
    }
    
    // MARK: Get Stat Leaders
    func getStatLeaders(stat: Stat, tournamentId: Int? = nil, completionHandler: (statLeaders: [StatLeader]?, error: NSError?) -> Void) {
        
        var parameters: [String : AnyObject!] = [
            Parameters.Stat : stat.rawValue
        ]
        
        if let tournamentIdPara = tournamentId {
            parameters[Parameters.TournamentId] = tournamentIdPara
        }
        
        taskGET(Methods.StatLeaders, parameters: parameters) { (json, error) -> Void in
            
            if let downloadError = error {
                completionHandler(statLeaders: nil, error: error)
            } else {
                let statLeaders = StatLeader.statLeadersFromResults(json as! [String : AnyObject])
                completionHandler(statLeaders: statLeaders, error: nil)
            }
        }
    }
    
    // MARK: Get Player Stats
    func getPlayerStats(playerId: Int, tournamentId: Int? = nil, completionHandler: (playerStats: PlayerStats?, error: NSError?) -> Void) {
        
        var parameters: [String : AnyObject!] = [
            Parameters.PlayerId : playerId
        ]
        
        if let tournamentIdPara = tournamentId {
            parameters[Parameters.TournamentId] = tournamentIdPara
        }
        
        taskGET(Methods.PlayerStats, parameters: parameters) { (json, error) -> Void in
            
            if let downloadError = error {
                completionHandler(playerStats: nil, error: error)
            } else {
                let playerStats = PlayerStats(data: json as! [String : AnyObject])
                completionHandler(playerStats: playerStats, error: nil)
            }
        }
    }
    
    // MARK: Get Team Stats
    func getTeamStats(teamId: Int, tournamentId: Int? = nil, completionHandler: (teamStats: TeamStats?, error: NSError?) -> Void) {
        
        var parameters: [String : AnyObject!] = [
            Parameters.TeamId : teamId
        ]
        
        if let tournamentIdPara = tournamentId {
            parameters[Parameters.TournamentId] = tournamentIdPara
        }
        
        taskGET(Methods.TeamStats, parameters: parameters) { (json, error) -> Void in
            
            if let downloadError = error {
                completionHandler(teamStats: nil, error: error)
            } else {
                let teamStats = TeamStats(data: json as! [String : AnyObject])
                completionHandler(teamStats: teamStats, error: nil)
            }
        }
    }
    
    // MARK: Get All Player Stats
    func getAllPlayerStats(tournamentId: Int? = nil, completionHandler: (allPlayerStats: [String : AllPlayerStats]?, error: NSError?) -> Void) {
        
        var parameters: [String : AnyObject!] = [String : AnyObject]()
        
        if let tournamentIdPara = tournamentId {
            parameters[Parameters.TournamentId] = tournamentIdPara
        }
        
        taskGET(Methods.AllPlayerStats, parameters: parameters) { (json, error) -> Void in
            
            if let downloadError = error {
                completionHandler(allPlayerStats: nil, error: error)
            } else {
                let allPlayerStats = AllPlayerStats.playerStatsFromResults(json as! [String : AnyObject])
                completionHandler(allPlayerStats: allPlayerStats, error: nil)
            }
        }
    }
    
    // MARK: Get Game Stats Fantasy
    func getGameStatsFantasy(tournamentId: Int, dateBegin: Int? = nil, dateEnd: Int? = nil, completionHandler: (fantasyStats: FantasyStats?, error: NSError?) -> Void) {
        
        var parameters: [String : AnyObject!] = [
            Parameters.TournamentId : tournamentId
        ]
        
        taskGET(Methods.GameStatsFantasy, parameters: parameters) { (json, error) -> Void in
            
            if let downloadError = error {
                completionHandler(fantasyStats: nil, error: error)
            } else {
                let fantasyStats = FantasyStats(data: json as! [String : AnyObject])
                completionHandler(fantasyStats: fantasyStats, error: nil)
            }
        }
    }
    
    // MARK: Get Programming
    func getProgramming(tournamentId: Int, dateBegin: Int? = nil, dateEnd: Int? = nil, completionHandler: (programming: Programming?, error: NSError?) -> Void) {
        
        var parameters: [String : AnyObject!] = [
            Parameters.TournamentId : tournamentId
        ]
        
        taskGET(Methods.Programming, parameters: parameters) { (json, error) -> Void in
            
            if let downloadError = error {
                completionHandler(programming: nil, error: error)
            } else {
                let programming = Programming(data: json as! [String : AnyObject])
                completionHandler(programming: programming, error: nil)
            }
        }
    }
 
}