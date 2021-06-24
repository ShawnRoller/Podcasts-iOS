//
//  ListenNowScreen.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/24/21.
//

import SwiftUI

struct ListenNowScreen: View {
    var body: some View {
        VStack {
            PodcastView(size: .Large)
            PodcastView(size: .Large)
            PodcastView(size: .Large)
            PodcastView(size: .Large)
            PodcastView(size: .Large)
            PodcastView(size: .Large)
            PodcastView(size: .Large)
            PodcastView(size: .Large)
        }
    }
}

struct ListenNowScreen_Previews: PreviewProvider {
    static var previews: some View {
        ListenNowScreen()
    }
}
