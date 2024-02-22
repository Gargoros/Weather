//
//  IntExtention.swift
//  Weather
//
//  Created by MIKHAIL ZHACHKO on 19.02.24.
//

import Foundation

//MARK: convert to date from Unix
extension Int {
    
    func getTimeStringFromUTC() -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(self))

        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.timeStyle = .short

        return dateFormatter.string(from: date)
    }
    
    func getDateStringFromUTC() -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(self))

        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.dateStyle = .medium

        return dateFormatter.string(from: date)
    }
    
    func getTimeAndDateStringFromUTC() -> String {
        let date = Date(timeIntervalSince1970: TimeInterval(self))

        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .short

        return dateFormatter.string(from: date)
    }
}
