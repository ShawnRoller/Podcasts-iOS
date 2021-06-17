//
//  PodcastLargeView.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/15/21.
//

import SwiftUI

struct PodcastLargeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Image("podcast1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
                .padding(.bottom, 10)
            HStack {
                VisualAudioView(isPlaying: true)
                Text("NEW • MONDAY")
                    .font(.caption2)
                    .foregroundColor(.gray)
            }
            Text("#82: Avoiding the Buzz Saw (Bret Weinstein & Heather Heying DarkHorse Livestream)")
                .font(.body)
                .lineLimit(2)
            Text("3 Newer Episodes")
                .font(.subheadline)
                .foregroundColor(.purple)
        }
        .padding()
        .frame(width: 250, height: 350)
    }
}

struct PodcastLargeView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastLargeView()
    }
}
