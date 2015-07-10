//
//  LolEsportsConstants.swift
//  eSportsKit
//
//  Created by Taylor Caldwell on 7/1/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

extension LolEsportsClient {
    
    // MARK: - Constants
    struct Constants {
        
        // MARK: Base URL
        static let BaseURL: String = "http://na.lolesports.com:80/api/"
        
    }
    
    // MARK: - Methods
    struct Methods {
        
        // MARK: League
        static let League: String = "league.json"
        
        // MARK: Schedule
        static let Schedule: String = "schedule.json"
        
        // MARK: Series
        static let Series: String = "series.json"
        
        // MARK: Standings
        static let Standings: String = "standings.json"
        
    }
    
    // MARK: - Parameters
    struct Parameters {
        
        // MARK: League
        static let Method: String = "parameters[method]"
        static let Published: String = "parameters[published]"
        
        // MARK: Schedule
        static let TournamentId: String = "tournamentId"
        static let TeamId: String = "teamId"
        static let IncludeFinished: String = "includeFinished"
        static let IncludeFuture: String = "includeFuture"
        static let IncludeLive: String = "includeLive"
        
    }
    
    // MARK: - JSON Keys
    struct JSONKeys {
        
        // MARK: League
        static let Leagues: String = "leagues"
        static let Color: String = "color"
        static let LeagueImage: String = "leagueImage"
        static let TournamentId: String = "defaultTournamentId"
        static let SeriesId: String = "defaultSeriesId"
        static let ShortName: String = "shortName"
        static let LeagueTournaments: String = "leagueTournaments"
        static let NoVods: String = "noVods"
        static let MenuWeight: String = "menuWeight"
        static let InternationalLiveStream: String = "internationalLiveStream"
        static let Published: String = "published"
        
        // MARK: LiveStreamLanguage
        static let Language: String = "language"
        static let DisplayLanguage: String = "display_language"
        static let Streams: String = "streams"
        
        // MARK: LiveStream
        static let Title: String = "title"
        
        // MARK: Match
        static let DateTime: String = "dateTime"
        static let WinnerId: String = "winnerId"
        static let MatchId: String = "matchId"
        static let MaxGames: String = "maxGames"
        static let IsLive: String = "isLive"
        static let IsFinished: String = "isFinished"
        static let LiveStreams: String = "liveStreams"
        static let PolldaddyId: String = "polldaddyId"
        static let Name: String = "name"
        static let Tournament: String = "tournament"
        static let Contestants: String = "contestants"
        static let Games: String = "games"
        
        // MARK: MatchTournament
        static let Round: String = "round"
        
        // MARK: ContestantsRedBlue
        static let Blue: String = "blue"
        static let Red: String = "red"
        
        // MARK: SingleContestant
        static let LogoURL: String = "logoURL"
        static let Acronym: String = "acronym"
        
        // MARK: LiveStreams
        static let Type: String = "type"
        static let EmbedCode: String = "embedCode"
        
        // MARK: Game
        static let HasVods: String = "hasVods"
        
        // MARK: Series
        static let LabelPublic: String = "labelPublic"
        static let Season: String = "season"
        static let Tournaments: String = "tournaments"
        
        // MARK: Standings
        static let TeamId: String = "teamId"
        static let TeamTitle: String = "teamTitle"
        static let Wins: String = "wins"
        static let Losses: String = "losses"
        static let TeamRank: String = "teamRank"
        
        // MARK: Shared
        static let URL: String = "url"
        static let Id: String = "id"
        static let Label: String = "label"
        
    }
    
}