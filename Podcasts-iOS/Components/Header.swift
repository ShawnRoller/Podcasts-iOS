//
//  Header.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 8/20/21.
//

import SwiftUI

struct Header: View {
    let title: String
    let image: String?
    
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .bold()
            Spacer()
            if let image = image {
                ProfileIcon(image: image)
            }
        }
        .frame(height: 80)
        .padding()
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(title: "Listen Now", image: "podcast1")
    }
}
