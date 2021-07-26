//
//  PodcastModels.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 7/26/21.
//

import Foundation

struct Podcast {
    let showName: String
    let showImage: String
    let episodes: [PodcastEpisode]
}

struct PodcastEpisode {
    let title: String
    let episodeLength: Int
    let currentPosition: Int
    var timeRemaining: Int {
        return episodeLength - currentPosition
    }
    var formattedTimeRemaining: String {
        return "\(timeRemaining)".toTime()
    }
}
