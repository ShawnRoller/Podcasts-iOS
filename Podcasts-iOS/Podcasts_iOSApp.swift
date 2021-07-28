//
//  Podcasts_iOSApp.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/15/21.
//

import SwiftUI

@main
struct Podcasts_iOSApp: App {
    var podcasts: [Podcast] = [Podcast.example, Podcast.example]
    
    var body: some Scene {
        WindowGroup {
            ContentView(podcasts: podcasts)
//                .onAppear() {
//                    UITabBar.appearance().shadowImage = UIImage()
//                    UITabBar.appearance().backgroundImage = UIImage()
//                    UITabBar.appearance().isTranslucent = true
//                    UITabBar.appearance().backgroundColor = .black
//                }
        }
    }
}
