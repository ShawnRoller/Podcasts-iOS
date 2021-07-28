//
//  PodcastModels.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 7/26/21.
//

import Foundation

struct Podcast: Codable, Identifiable {
    let id: UUID
    let showName: String
    let showImage: String
    let episodes: [PodcastEpisode]
    var newerEpisodes: String {
        let newer = episodes.reduce(0) { (acc: Int, value: PodcastEpisode) -> Int in
            let isNew = value.isNew ? 1 : 0
            return acc + isNew
        }
        let s = newer > 1 ? "s" : ""
        return newer > 0 ? "\(newer) newer episode\(s)" : ""
    }
    
    #if DEBUG
    static let example = Podcast(id: UUID(), showName: "Bret Weinstein | DarkHorse Podcast", showImage: "https://pbcdn1.podbean.com/imglogo/dir-logo/624159/624159_300x300.jpg", episodes: [PodcastEpisode.example, PodcastEpisode.example])
    #endif
}

struct PodcastEpisode: Codable, Identifiable {
    let id: UUID
    let title: String
    let episodeLength: Int
    let currentPosition: Int
    var isComplete: Bool
    var isNew: Bool
    var releaseDate: Date
    var timeRemaining: Int {
        return episodeLength - currentPosition
    }
    var formattedTimeRemaining: String {
        return "\(timeRemaining)".toTime()
    }
    var stringTimeRemaining: String {
        return "\(timeRemaining)".toTime()
    }
    var relativeReleaseDate: String {
        let dateString = releaseDate.toElapsedInterval()
        let prefix = isNew ? "NEW • " : ""
        return "\(prefix)\(dateString)"
    }
    
    #if DEBUG
    static let example = PodcastEpisode(id: UUID(), title: "#82 - Avoiding the Buzz Saw", episodeLength: 8041, currentPosition: 0, isComplete: false, isNew: true, releaseDate: Date().addingTimeInterval(-999999))
    #endif
}
