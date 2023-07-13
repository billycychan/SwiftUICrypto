//
//  Date.swift
//  SwiftUICrypto
//
//  Created by CHI YU CHAN on 12/7/2023.
//

import Foundation

extension Date {
    
    // "2021-05-09T04:06:09.766Z"
    init(coinGeckoString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGeckoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private var shortFormmater: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    func asShortDateString() -> String {
        return shortFormmater.string(from: self)
    }
    
}
