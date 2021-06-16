//
//  PodcastView.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/16/21.
//

import SwiftUI

struct PodcastView: View {
    var size: ThumbnailSize
    
    var body: some View {
        if size == .Large {
           PodcastLargeView()
        } else if size == .Medium {
            PodcastMediumView()
        } else if size == .Small {
            PodcastSmallView()
        } else {
            PodcastLargeView()
        }
    }
}

struct PodcastView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PodcastView(size: .Large)
            PodcastView(size: .Medium)
            PodcastView(size: .Small)
        }
    }
}
