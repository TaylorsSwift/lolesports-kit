# eSportsKit

League of Legends eSports iOS client library for the lolesports.com API

## Info

This library was initially created for an iPhone app I created during a hackathon. Because the app didn't make use the whole lolesports.com API, a lot of the endpoints are missing. With that said this is currently a work in progress, and will support all the endpoints soon.

## Usage

Once the project is complete, it will be available via cocoapods. For now, add it directly to your own project.

## Example

```swift
	// Get Leagues and print their labels
        LolEsportsClient.sharedInstance().getLeagues() { leagues, error in
            if let leagues = leagues {
                for league in leagues {
                    println(league.label!)
                }
            }
        }
```
