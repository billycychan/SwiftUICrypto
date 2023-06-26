//
//  UIApplication.swift
//  SwiftUICrypto
//
//  Created by CHI YU CHAN on 26/6/2023.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
