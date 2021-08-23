//
//  SectionHeader.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 7/9/21.
//

import SwiftUI

struct SectionHeader: View {
    var title: String
    var subtitle: String?
    var ctaTitle: String?
    var onCTAPress: () -> Void = {}
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .bottom) {
                Text(title)
                    .font(.title)
                    .bold()
                    .kerning(0)
                Spacer()
                if let ctaTitle = ctaTitle {
                    Button(ctaTitle, action: onCTAPress)
                        .font(.title3)
                        .foregroundColor(ThemeColor.Primary)
                }
            }
            .frame(height: 40)
            if let subtitle = subtitle {
                Text(subtitle)
                .font(.title3)
                .foregroundColor(ThemeColor.Gray3)
            }
        }
    }
}

struct SectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
                SectionHeader(title: "More to Discover", subtitle: "Based on your listening.", ctaTitle: "See All", onCTAPress: { print("it was pressed")} )
                    .preferredColorScheme($0)
        }
    }
}
