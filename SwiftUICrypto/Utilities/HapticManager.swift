//
//  HapticManager.swift
//  SwiftUICrypto
//
//  Created by CHI YU CHAN on 11/7/2023.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
