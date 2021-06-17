//
//  ContentView.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            PodcastView(size: .Large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
