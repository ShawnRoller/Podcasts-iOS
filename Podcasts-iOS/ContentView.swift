//
//  ContentView.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/15/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListenNowScreen()
                .tabItem {
                    Label("Listen Now", systemImage: "play.circle.fill")
                }
            BrowseScreen()
                .tabItem {
                    Label("Browse", systemImage: "square.grid.2x2.fill")
                }
            LibraryScreen()
                .tabItem {
                    Label("Library", systemImage: "square.stack.fill")
                }
            SearchScreen()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
        .accentColor(ThemeColor.Primary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
