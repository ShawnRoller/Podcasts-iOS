//
//  PlayButton.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/18/21.
//

import SwiftUI

struct PlayButton: View {
    var body: some View {
        Image(systemName: "play.circle.fill")
            .foregroundColor(.gray)
            .padding(.all, -4)
            .background(Color.purple)
            .clipShape(Circle())
            .font(.title)
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        PlayButton()
    }
}
