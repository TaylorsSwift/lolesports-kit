# LoL eSports Kit

League of Legends eSports iOS client library for acessing the lolesports.com REST API

## Info

This library was initially created for an iPhone app I created during a hackathon. Because the app didn't make use the whole lolesports.com API, a lot of the endpoints are missing. With that said this is currently a work in progress. The lolesports.com API is constantly being updated and changed, as it is not an officially supported API, so keeping this updated could be a challenge. ;o

## Examples

```swift
// Get Leagues
LolEsportsClient.sharedInstance().getLeagues(published: LolEsportsClient.Published.No) {
    (leagues, error) -> Void in
    // handle the response or error
}

// Get Leagues - default to published only
LolEsportsClient.sharedInstance().getLeagues() {
    (leagues, error) -> Void in
    // handle the response or error
}

// Get Series
LolEsportsClient.sharedInstance().getSeries { 
    (series, error) -> Void in
    // handle the response or error
}

// Get Schedule
let tournamentId: Int = 226
LolEsportsClient.sharedInstance().getSchedule(tournamentId, includeFinished: false, includeFuture: true, includeLive: false) { 
    (matches, error) -> Void in
    // handle the response or error
}

// Get Schedule - default to include finished, future, and live matches
let tournamentId: Int = 226
LolEsportsClient.sharedInstance().getSchedule(tournamentId) { 
    (matches, error) -> Void in
    // handle the response or error
}

// Get Standings
let tournamentId: Int = 226
LolEsportsClient.sharedInstance().getStandings(tournamentId) { 
    (standings, error) -> Void in
    // handle the response or error
}

// Get Tournaments
LolEsportsClient.sharedInstance().getTournaments(published: LolEsportsClient.Published.No) { 
    (tournaments, error) -> Void in
    // handle the response or error
}

//Get Tournaments - default to published only
LolEsportsClient.sharedInstance().getTournaments() { 
    (tournaments, error) -> Void in
    // handle the response or error
}

// Get News
LolEsportsClient.sharedInstance().getNews(limit: 10, offset: 0, published: LolEsportsClient.Published.No) { 
    (news, error) -> Void in
    // handle the response or error
}

// Get News - default to published only
LolEsportsClient.sharedInstance().getNews { 
    (news, error) -> Void in
    // handle the response or error
}

// Get Stat Leaders
let tournamentId = 226
LolEsportsClient.sharedInstance().getStatLeaders(LolEsportsClient.Stat.Kills, tournamentId: tournamentId) { 
    (statLeaders, error) -> Void in
    // handle the response or error
}

```