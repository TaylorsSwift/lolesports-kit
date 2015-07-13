//
//  News.swift
//  eSportsKitProject
//
//  Created by Taylor Caldwell on 7/12/15.
//  Copyright (c) 2015 Rithms. All rights reserved.
//

import Foundation

struct News {
    
    var id: Int? // The unique numeric identifier for this article
    var headline: String? // Title of this article
    var language: String? // Language the article is written in. 'und' for undefined (default) language
    var nutgraf: String? // Short summary paragraph of this article
    var thumbUrl: String? // URL to the thumbnail of this article's main image
    var marquee: String? // URL to the article's marquee image
    var taxonomyId: Int? // ID of the tag on this article
    var taxonomyName: String? // Label of the tag on this article
    var imageUrl: String? // URL to this article's main image
    var imageMediumUrl: String? // URL to this article's medium-resized main image
    var articleUrl: String? // URL to this article's page
    var author: String? // Full name of this article's author
    var published: Int? // Is this article published
    var publishedDate: NSDate? // Timestamp of when this article was published
    var body: String? // HTML content of this article
    
    init(data: AnyObject) {
        
        id = data[LolEsportsClient.JSONKeys.Id] as? Int
        headline = data[LolEsportsClient.JSONKeys.Headline] as? String
        language = data[LolEsportsClient.JSONKeys.Language] as? String
        nutgraf = data[LolEsportsClient.JSONKeys.Nutgraph] as? String
        thumbUrl = data[LolEsportsClient.JSONKeys.ThumbURL] as? String
        marquee = data[LolEsportsClient.JSONKeys.Marquee] as? String
        taxonomyId = data[LolEsportsClient.JSONKeys.Id] as? Int
        taxonomyName = data[LolEsportsClient.JSONKeys.TaxonomyName] as? String
        imageUrl = data[LolEsportsClient.JSONKeys.ImageURL] as? String
        imageMediumUrl = data[LolEsportsClient.JSONKeys.ImageMediumURL] as? String
        articleUrl = data[LolEsportsClient.JSONKeys.ArticleURL] as? String
        author = data[LolEsportsClient.JSONKeys.Author] as? String
        published = data[LolEsportsClient.JSONKeys.Published] as? Int
        let publishedDateInt = data[LolEsportsClient.JSONKeys.PublishedDate] as? String
        publishedDate = publishedDateInt?.toNSDate()
        body = data[LolEsportsClient.JSONKeys.Body] as? String

    }
    
    static func newsFromResults(results: [String : AnyObject]) -> [News] {
        
        var news = [News]()
        
        for (key, value) in results {
            news.append(News(data: value))
        }
        
        return news
    }
}