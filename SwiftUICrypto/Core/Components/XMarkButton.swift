//
//  XmarkButton.swift
//  SwiftUICrypto
//
//  Created by CHI YU CHAN on 5/7/2023.
//

import SwiftUI

struct XMarkButton: View {
    
    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
    
    struct XMarkButton_Previews: PreviewProvider {
        static var previews: some View {
            XMarkButton(action: {})
        }
    }
}
