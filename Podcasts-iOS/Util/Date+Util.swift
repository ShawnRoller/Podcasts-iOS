//
//  Date+Util.swift
//  Podcasts-iOS
//
//  Created by Shawn Roller on 7/28/21.
//

import Foundation

extension Date {
    func toElapsedInterval() -> String {
        // TODO: maybe replace this with RelativeDateTimeFormatter implementation?
        let interval = Calendar.current.dateComponents([.year, .month, .day], from: self, to: Date())
        
        if let year = interval.year, year > 0 {
            return year == 1 ? "\(year)" + " " + "year ago" :
                "\(year)" + " " + "years ago"
        } else if let month = interval.month, month > 0 {
            return month == 1 ? "\(month)" + " " + "month ago" :
                "\(month)" + " " + "months ago"
        } else if let day = interval.day, day > 7 {
            let weeks = day / 7
            return weeks == 1 ? "\(weeks)" + " " + "week ago" :
                "\(weeks)" + " " + "weeks ago"
        } else if let day = interval.day, day > 0 {
            return day == 1 ? "\(day)" + " " + "day ago" :
                "\(day)" + " " + "days ago"
        } else {
            return "a moment ago"
            
        }
    }
}
