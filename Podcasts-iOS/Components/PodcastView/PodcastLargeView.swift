//
//  PodcastLargeView.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/15/21.
//

import SwiftUI

struct PodcastLargeView: View {
    var podcast: Podcast
    var podcastEpisode: PodcastEpisode
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Image("podcast1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
                .padding(.bottom, 10)
            HStack {
                VisualAudioView(isPlaying: true)
                Text(podcastEpisode.relativeReleaseDate)
                    .font(.caption2)
                    .foregroundColor(ThemeColor.Gray3)
            }
            Text("\(podcastEpisode.title) (\(podcast.showName)")
                .font(.body)
                .lineLimit(2)
            Text(podcast.newerEpisodes)
                .font(.subheadline)
                .foregroundColor(ThemeColor.Primary)
        }
        .padding()
        .frame(width: 250, height: 350)
    }
}

struct PodcastLargeView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastLargeView(podcast: Podcast.example, podcastEpisode: PodcastEpisode.example)
    }
}
