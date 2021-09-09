//
//  SectionModifier.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 9/9/21.
//

import SwiftUI


struct PodcastSection: ViewModifier {
    @Environment(\.colorScheme) var colorScheme
    
    func body(content: Content) -> some View {
        content
            .background(colorScheme == .light ?
                LinearGradient(gradient: Gradient(colors: [.white, .gray.opacity(0.1)]), startPoint: .top, endPoint: .bottom)
                : nil
            )
    }
}
