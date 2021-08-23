//
//  ListenNowScreen.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/24/21.
//

import SwiftUI

struct ListenNowScreen: View {
    var headerTitle: String
    var headerImage: String
    var upNextPodcasts: [Podcast]
    var likePodcasts: [Podcast]
    var discoverPodcasts: [Podcast]
    var recentPodcasts: [Podcast]
    
    
    // TODO: - add gradient to the VStacks
    // TODO: - "more to discover" needs to be 3 podcasts high but horizontal scrolling
    var body: some View {
        ScrollView {
            Header(title: headerTitle, image: headerImage)
            VStack {
                SectionHeader(title: "Up Next", ctaTitle: "See All", onCTAPress: {print("up next see all pressed")})
                ThumbnailSection(podcasts: upNextPodcasts, size: .Large)
            }
            
            VStack {
                SectionHeader(title: "You Might Like", ctaTitle: "See All", onCTAPress: {print("you might like see all pressed")})
                ThumbnailSection(podcasts: upNextPodcasts, size: .Medium)
            }
            
            VStack {
                SectionHeader(title: "More to Discover", ctaTitle: "See All", onCTAPress: {print("more to discover see all pressed")})
                ThumbnailSection(podcasts: upNextPodcasts, size: .Small)
            }
            
            VStack {
                SectionHeader(title: "Recently Played", ctaTitle: "See All", onCTAPress: {print("recently played see all pressed")})
                ThumbnailSection(podcasts: upNextPodcasts, size: .Small)
            }
        }
    }
}

struct ListenNowScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListenNowScreen(
            headerTitle: "Listen Now",
            headerImage: "podcast1",
            upNextPodcasts: [Podcast.example, Podcast.example],
            likePodcasts: [Podcast.example, Podcast.example],
            discoverPodcasts: [Podcast.example, Podcast.example],
            recentPodcasts: [Podcast.example, Podcast.example]
        )
    }
}
