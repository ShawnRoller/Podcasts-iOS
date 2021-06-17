//
//  VisualAudioView.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 6/17/21.
//

import SwiftUI

struct VisualAudioView: View {
    var isPlaying = false
    
    private let minHeight: CGFloat = 3
    private let maxHeight: CGFloat = 12
    private var width: CGFloat {
        return self.maxHeight / 3
    }
    
    private var firstMaxHeight: CGFloat {
        return maxHeight * 0.5
    }
    private var secondMaxHeight: CGFloat {
        return maxHeight * 1
    }
    private var thirdMaxHeight: CGFloat {
        return maxHeight * 0.9
    }
    private var fourthMaxHeight: CGFloat {
        return maxHeight * 0.6
    }
    
    @State private var firstHeight: CGFloat = 2
    @State private var secondHeight: CGFloat = 2
    @State private var thirdHeight: CGFloat = 2
    @State private var fourthHeight: CGFloat = 2
    
    private let animation = Animation.linear(duration: 0.5).repeatForever()
    private let animation2 = Animation.linear(duration: 0.56).repeatForever()
    private let animation3 = Animation.linear(duration: 0.53).repeatForever()
    private let animation4 = Animation.linear(duration: 0.45).repeatForever()
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 2) {
            Text("")
            Rectangle()
                .fill(Color.gray)
                .frame(width: self.width, height: self.firstHeight)
                .onAppear {
                    if self.isPlaying {
                        withAnimation(self.animation) {
                            self.firstHeight = self.firstHeight == self.firstMaxHeight ? self.minHeight : self.firstMaxHeight
                        }
                    }
                }
            Rectangle()
                .fill(Color.gray)
                .frame(width: self.width, height: self.secondHeight)
                .onAppear {
                    if self.isPlaying {
                        withAnimation(self.animation2.speed(2)) {
                            self.secondHeight = self.secondHeight == self.secondMaxHeight ? self.minHeight : self.secondMaxHeight
                        }
                    }
                }
            Rectangle()
                .fill(Color.gray)
                .frame(width: self.width, height: self.thirdHeight)
                .onAppear {
                    if self.isPlaying {
                        withAnimation(self.animation3.speed(2)) {
                            self.thirdHeight = self.thirdHeight == self.thirdMaxHeight ? self.minHeight : self.thirdMaxHeight
                        }
                    }
                }
            Rectangle()
                .fill(Color.gray)
                .frame(width: self.width, height: self.fourthHeight)
                .onAppear {
                    if self.isPlaying {
                        withAnimation(self.animation4) {
                            self.fourthHeight = self.fourthHeight == self.fourthMaxHeight ? self.minHeight : self.fourthMaxHeight
                        }
                    }
                }
        }
    }
}

struct VisualAudioView_Previews: PreviewProvider {
    static var previews: some View {
        VisualAudioView(isPlaying: true)
    }
}
