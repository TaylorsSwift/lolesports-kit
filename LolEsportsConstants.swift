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
        
        // MARK: Tournament
        static let Tournament: String = "tournament.json"
        
        // MARK: News
        static let News: String = "news.json"
        
    }
    
    // MARK: - Parameters
    struct Parameters {
        
        // MARK: League
        static let ParametersMethod: String = "parameters[method]"
        static let ParametersPublished: String = "parameters[published]"
        
        // MARK: Schedule
        static let TournamentId: String = "tournamentId"
        static let TeamId: String = "teamId"
        static let IncludeFinished: String = "includeFinished"
        static let IncludeFuture: String = "includeFuture"
        static let IncludeLive: String = "includeLive"
        
        // MARK: News
        static let Limit: String = "limit"
        static let Offset: String = "offset"
        static let TaxonomyId: String = "taxonomyId"
        static let Lang: String = "lang"
        
        // MARK: Shared
        static let Published: String = "published"
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
        static let MenuWeight: String = "menuWeight"
        static let InternationalLiveStream: String = "internationalLiveStream"
        
        // MARK: LiveStreamLanguage
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
        static let LiveStreams: String = "liveStreams"
        static let PolldaddyId: String = "polldaddyId"
        static let Tournament: String = "tournament"
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
        static let Tournaments: String = "tournaments"
        
        // MARK: Standings
        static let TeamId: String = "teamId"
        static let TeamTitle: String = "teamTitle"
        static let Wins: String = "wins"
        static let Losses: String = "losses"
        static let TeamRank: String = "teamRank"
        
        // MARK: Tournament
        
        static let NamePublic: String = "namePublic"
        static let DateBegin: String = "dateBegin"
        static let DateEnd: String = "dateEnd"
        static let Winner: String = "winner"
        static let TournamentName: String = "tournamentName"
        
        // MARK: News
        
        static let Headline: String = "headline"
        static let Nutgraph: String = "Nutgraph"
        static let ThumbURL: String = "thumbUrl"
        static let Marquee: String = "marquee"
        static let TaxonomyId: String = "taxonomyId"
        static let TaxonomyName: String = "taxonomyName"
        static let ImageURL: String = "imageUrl"
        static let ImageMediumURL: String = "imageMediumUrl"
        static let ArticleURL: String = "articleUrl"
        static let Author: String = "author"
        static let PublishedDate: String = "publishedDate"
        static let Body: String = "body"
        
        // MARK: Shared
        static let URL: String = "url"
        static let Id: String = "id"
        static let Label: String = "label"
        static let Name: String = "name"
        static let Contestants: String = "contestants"
        static let IsFinished: String = "isFinished"
        static let NoVods: String = "noVods"
        static let Season: String = "season"
        static let Published: String = "published"
        static let Language: String = "language"
        
    }
    
}