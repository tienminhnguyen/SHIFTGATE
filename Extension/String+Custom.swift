//
//  String+Custom.swift
//  Koupenchan
//
//  Created by Dima on 16.01.2020.
//  Copyright © 2020 CHISW. All rights reserved.
//

import Foundation
import UIKit

extension String {
    static func className(aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).components(separatedBy: ".").last!
    }
    
    var url: URL? {
        return URL(string: self)
    }
    
    func localized(comment: String = "") -> String {
        return NSLocalizedString(self, comment: comment)
    }
    
    func attributed(size: CGFloat, color: UIColor) -> NSAttributedString {
        let multipleAttributes: [NSAttributedString.Key : Any] = [
            NSAttributedString.Key.font: UIFont(name: "HiraginoSans-W6", size: size) as Any,
            NSAttributedString.Key.foregroundColor: color]
        let finalAttibutedString = NSAttributedString(string: self, attributes: multipleAttributes)
        return finalAttibutedString
    }
    func setDateForProfile() -> String {
        let year = (self[self.index(self.startIndex, offsetBy: 0)...self.index(self.startIndex, offsetBy: 3)]) + "年" // "YEAR"
        var month = (self[self.index(self.startIndex, offsetBy: 5)...self.index(self.startIndex, offsetBy: 6)]) + "月" // "MONTH"
        var day = (self[self.index(self.startIndex, offsetBy: 8)...self.index(self.startIndex, offsetBy: 9)]) + "日" // "MONTH"
        
        if month.prefix(1)=="0" {
            month = month[month.index(after: month.startIndex)..<month.endIndex]
        }
        if String(day.prefix(1))=="0" {
            day = day[day.index(after: day.startIndex)..<day.endIndex]
        }
        
        let finalDate = "\(year)\n" + "\(month)" + "\(day)"
        return finalDate
    }
    
    func dateOneLine() -> String {
        let year = (self[self.index(self.startIndex, offsetBy: 0)...self.index(self.startIndex, offsetBy: 3)]) + "年" // "YEAR"
        var month = (self[self.index(self.startIndex, offsetBy: 5)...self.index(self.startIndex, offsetBy: 6)]) + "月" // "MONTH"
        var day = (self[self.index(self.startIndex, offsetBy: 8)...self.index(self.startIndex, offsetBy: 9)]) + "日" // "MONTH"
        
        if month.prefix(1)=="0" {
            month = month[month.index(after: month.startIndex)..<month.endIndex]
        }
        if String(day.prefix(1))=="0" {
            day = day[day.index(after: day.startIndex)..<day.endIndex]
        }
        
        let finalDate = "\(year)" + "\(month)" + "\(day)"
        return finalDate
    }
}
