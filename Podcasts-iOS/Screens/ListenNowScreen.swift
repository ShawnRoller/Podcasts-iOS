//
//  ListenNowScreen.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/24/21.
//

import SwiftUI

struct ListenNowScreen: View {
    var podcasts: [Podcast]
    
    var body: some View {
        ForEach(podcasts) { podcast in
            List(podcast.episodes) { episode in
                PodcastView(podcast: podcast, podcastEpisode: episode, size: .Large)
            }
        }
    }
}

struct ListenNowScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListenNowScreen(podcasts: [Podcast.example, Podcast.example])
    }
}
