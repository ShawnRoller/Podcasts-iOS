//
//  PodcastMediumView.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/16/21.
//

import SwiftUI

struct PodcastMediumView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Image("podcast1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
            Text("Bret Weinstein & Heather Heying DarkHorse Livestream")
                .font(.body)
                .lineLimit(1)
            Text("DarkHorse Podcast")
                .font(.body)
                .foregroundColor(ThemeColor.Gray3)
        }
        .padding()
        .frame(width: 200, height: 250)
    }
}

struct PodcastMediumView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastMediumView()
    }
}
