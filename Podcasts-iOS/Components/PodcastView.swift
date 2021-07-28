//
//  PodcastView.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/16/21.
//

import SwiftUI

struct PodcastView: View {
    var podcast: Podcast
    var podcastEpisode: PodcastEpisode
    var size: ThumbnailSize
    
    var body: some View {
        if size == .Large {
            PodcastLargeView(podcast: podcast, podcastEpisode: podcastEpisode)
        } else if size == .Medium {
            PodcastMediumView(podcast: podcast, podcastEpisode: podcastEpisode)
        } else if size == .Small {
            PodcastSmallView(podcast: podcast, podcastEpisode: podcastEpisode)
        } else {
            PodcastLargeView(podcast: podcast, podcastEpisode: podcastEpisode)
        }
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            VStack {
                PodcastView(podcast: Podcast.example, podcastEpisode: PodcastEpisode.example, size: .Large)
                PodcastView(podcast: Podcast.example, podcastEpisode: PodcastEpisode.example, size: .Medium)
                PodcastView(podcast: Podcast.example, podcastEpisode: PodcastEpisode.example, size: .Small)
            }.preferredColorScheme($0)
        }
    }
}
