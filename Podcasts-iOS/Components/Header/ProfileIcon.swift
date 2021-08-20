//
//  ProfileIcon.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 8/20/21.
//

import SwiftUI

struct ProfileIcon: View {
    let image: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .padding()
    }
}

struct ProfileIcon_Previews: PreviewProvider {
    static var previews: some View {
        ProfileIcon(image: "podcast1")
    }
}
