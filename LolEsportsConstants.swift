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
        
        // MARK: Stat Leaders
        static let StatLeaders: String = "statLeaders.json"
        
        // MARK: Player Stats
        static let PlayerStats: String = "playerStats.json"
        
        // MARK: Team Stats
        static let TeamStats: String = "teamStats.json"
        
        // MARK: All Player Stats
        static let AllPlayerStats: String = "all-player-stats.json"
        
        // MARK: Game Stats Fantasy
        static let GameStatsFantasy: String = "gameStatsFantasy.json"
        
        // MARK: Programming
        static let Programming: String = "programming.json"
        
    }
    
    // MARK: - Parameters
    struct Parameters {
        
        // MARK: Schedule
        static let IncludeFinished: String = "includeFinished"
        static let IncludeFuture: String = "includeFuture"
        static let IncludeLive: String = "includeLive"
        
        // MARK: News
        static let Limit: String = "limit"
        static let Offset: String = "offset"
        static let TaxonomyId: String = "taxonomyId"
        static let Lang: String = "lang"
        
        // MARK: Stat Leaders
        static let Stat: String = "stat"
        
        // MARK: Player Stats
        static let PlayerId: String = "playerId"
        
        // MARK: Game Stats Fantasy
        static let DateBegin: String = "dateBegin"
        static let DateEnd: String = "dateEnd"
        
        // MARK: Programming
        static let ParametersWinner: String = "parameters[winner]"
        static let ParametersExpandMatches: String = "parameters[expand_matches]"
        static let ParametersTime: String = "parameters[time]"
        static let ParametersLimit: String = "parameters[limit]"
        static let ParametersTournament: String = "parameters[tournament]"
        
        // MARK: Shared
        static let Published: String = "published"
        static let TournamentId: String = "tournamentId"
        static let TeamId: String = "teamId"
        static let ParametersMethod: String = "parameters[method]"
        static let ParametersPublished: String = "parameters[published]"
        
    }
    
    // MARK: - JSON Keys
    struct JSONKeys {
        
        // MARK: League
        static let Leagues: String = "leagues"
        static let Color: String = "color"
        static let LeagueImage: String = "leagueImage"
        static let DefaultTournamentId: String = "defaultTournamentId"
        static let DefaultSeriesId: String = "defaultSeriesId"
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
        static let WinnerId: String = "winnerId"
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
        
        // MARK: Stat Leaders
        static let Value: String = "value"
        static let Rank: String = "rank"
        
        // MARK: Player Stats
        static let KillParticipation: String = "killParticipation"
        
        // MARK: Team Stats
        static let Stats: String = "stats"
        
        // MARK: All Player Stats
        static let AverageTotalGold: String = "average total_gold"
        
        // MARK: Game Stats Fantasy
        static let TeamStats: String = "teamStats"
        static let PlayerStats: String = "playerStats"
        static let Team1: String = "team0"
        static let Team2: String = "team1"
        static let TimePlayed: String = "timePlayed"
        static let TeamName: String = "teamName"
        static let TeamID: String = "teamID"
        static let MatchVictory: String = "matchVictory"
        static let MatchDefeat: String = "matchDefeat"
        static let BaronsKilled: String = "baronsKilled"
        static let DragonsKilled: String = "dragonsKilled"
        static let FirstBlood: String = "firstBlood"
        static let FirstTower: String = "firstTower"
        static let FirstInhibitor: String = "firstInhibitor"
        static let TowersKilled: String = "towersKilled"
        static let MinionKills: String = "minionKills"
        static let DoubleKills: String = "doubleKills"
        static let TripleKills: String = "tripleKills"
        static let QuadraKills: String = "quadraKills"
        static let PentaKills: String = "pentaKills"
        static let Role: String = "role"
        
        // MARK: Programming
        
        static let BlockId: String = "blockId"
        static let Tickets: String = "tickets"
        static let Matches: String = "matches"
        static let LeagueId: String = "leagueId"
        static let Significance: String = "significance"
        static let TBDTime: String = "tbdTime"
        static let LeagueColor: String = "leagueColor"
        static let Week: String = "week"
        static let RebroadcastDate: String = "rebroadcastDate"
        static let BodyTitle: String = "bodyTitle"
        static let BodyTime: String = "bodyTime"
        
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
        static let GamesPlayed: String = "gamesPlayed"
        static let Tournaments: String = "tournaments"
        static let GPM: String = "gpm"
        static let TotalGold: String = "totalGold"
        static let Kills: String = "kills"
        static let Deaths: String = "deaths"
        static let Assists: String = "assists"
        static let MinionsKilled: String = "minionsKilled"
        static let SecondsPlayed: String = "secondsPlayed"
        static let KDA: String = "kda"
        static let TournamentId: String = "tournamentId"
        static let TournamentName: String = "tournamentName"
        static let DateTime: String = "dateTime"
        static let MatchId: String = "matchId"
        static let PlayerId: String = "playerId"
        static let PlayerName: String = "playerName"
        static let Body: String = "body"
        
    }
    
}