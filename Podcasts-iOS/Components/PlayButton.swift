//
//  PlayButton.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/18/21.
//

import SwiftUI

struct PlayButton: View {
    var isPlaying = true
    private var icon: String {
        return isPlaying ? "play.circle.fill" : "pause.circle.fill"
    }
    var body: some View {
        Image(systemName: icon)
            .foregroundColor(ThemeColor.Gray2)
            .padding(.all, -4)
            .background(ThemeColor.Primary)
            .clipShape(Circle())
            .font(.title)
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            PlayButton(isPlaying: true)
            PlayButton(isPlaying: false)
        }
    }
}
