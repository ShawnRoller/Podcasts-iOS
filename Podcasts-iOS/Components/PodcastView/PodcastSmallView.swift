//
//  PodcastSmallView.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/16/21.
//

import SwiftUI

struct PodcastSmallView: View {
    var body: some View {
        HStack(spacing: 10) {
            Image("podcast1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(4)
            VStack(alignment: .leading, spacing: 4) {
                Text("NEW • MONDAY")
                    .font(.caption2)
                    .foregroundColor(.gray)
                Text("#82: Avoiding the Buzz Saw (Bret Weinstein & Heather Heying DarkHorse Livestream)")
                    .font(.body)
                    .lineLimit(2)
                HStack {
                    Image(systemName: "play.circle.fill")
                        .foregroundColor(.gray)
                        .padding(.all, -4)
                        .background(Color.purple)
                        .clipShape(Circle())
                        .font(.title)
                    Text("1 hr 10 min")
                        .font(.subheadline)
                        .foregroundColor(.purple)
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
        PodcastSmallView()
    }
}