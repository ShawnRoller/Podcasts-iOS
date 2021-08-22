//
//  ThumbnailSection.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 7/26/21.
//

import SwiftUI

struct ThumbnailSection: View {
    var podcasts: [Podcast]
    var size: ThumbnailSize = .Large
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(podcasts) { podcast in
                    ForEach(podcast.episodes) { episode in
                        PodcastView(podcast: podcast, podcastEpisode: episode, size: size)
                    }
                }
            }
        }
    }
}

struct ThumbnailSection_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ThumbnailSection(podcasts: [Podcast.example, Podcast.example], size: .Large)
            ThumbnailSection(podcasts: [Podcast.example, Podcast.example], size: .Medium)
            ThumbnailSection(podcasts: [Podcast.example, Podcast.example], size: .Small)
        }
    }
}
