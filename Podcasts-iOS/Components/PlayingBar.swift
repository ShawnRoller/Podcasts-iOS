//
//  PlayingBar.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/18/21.
//

import SwiftUI

struct PlayingBar: View {
    var body: some View {
        HStack(alignment: .center)
        {
            PlayButton()
            ProgressBar(progressPercent: 30)
            Text("10 min left")
                .font(.subheadline)
                .foregroundColor(ThemeColor.Primary)
        }
        .padding()
    }
}

struct PlayingBar_Previews: PreviewProvider {
    static var previews: some View {
        PlayingBar()
    }
}
