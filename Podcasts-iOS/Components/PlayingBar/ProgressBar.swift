//
//  ProgressBar.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/18/21.
//

import SwiftUI

struct ProgressBar: View {
    var progressPercent: Double
    
    var body: some View {
        ProgressView(value: progressPercent, total: 100.0)
            .accentColor(ThemeColor.Primary)
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progressPercent: 50)
    }
}
