//
//  StringUtil.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 7/26/21.
//

import Swift

extension String {
    func leftPadding(toLength: Int, withPad character: Character) -> String {
        let stringLength = self.count
        if stringLength < toLength {
            return String(repeatElement(character, count: toLength - stringLength)) + self
        } else {
            return String(self.suffix(toLength))
        }
    }
    
    func toTime() -> String {
        let seconds = Int(self) ?? 0
        let hours = "\(seconds / 3600)".leftPadding(toLength: 2, withPad: "0")
        let minutes = "\(seconds % 3600 / 60)".leftPadding(toLength: 2, withPad: "0")
        let secondsRemaining = "\(seconds % 60)".leftPadding(toLength: 2, withPad: "0")
        return "\(hours):\(minutes):\(secondsRemaining)"
    }
    
}
