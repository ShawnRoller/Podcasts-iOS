//
//  PodcastSmallView.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/16/21.
//

import SwiftUI

struct PodcastSmallView: View {
    var podcast: Podcast
    var podcastEpisode: PodcastEpisode
    
    var body: some View {
        HStack(spacing: 10) {
//            use AsyncImage in iOS 15
            Image("podcast1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(4)
            VStack(alignment: .leading, spacing: 4) {
                Text(podcastEpisode.relativeReleaseDate)
                    .font(.caption2)
                    .foregroundColor(ThemeColor.Gray3)
                Text("\(podcastEpisode.title) (\(podcast.showName)")
                    .font(.body)
                    .lineLimit(2)
                HStack {
                    PlayButton()
                    Text(podcastEpisode.formattedTimeRemaining)
                        .font(.subheadline)
                        .foregroundColor(ThemeColor.Primary)
                    Spacer()
                    // TODO: replace with ellipsis
                    Text("...")
                        .foregroundColor(ThemeColor.Gray3)
                }
                .frame(height: 30)
            }
        }
        .padding()
        .frame(height: 130)
    }
}

struct PodcastSmallView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastSmallView(podcast: Podcast.example, podcastEpisode: PodcastEpisode.example)
    }
}
