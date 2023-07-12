//
//  CircleButtonAnimationView.swift
//  SwiftUICrypto
//
//  Created by CHI YU CHAN on 22/6/2023.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale(animate ? 1.0 : 0.0)
            .opacity(animate ? 0.0 : 1.0)
            .transaction { transaction in
                transaction.animation = animate ? transaction.animation : nil
            }
    }
}

struct CircleButtonAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonAnimationView(animate: .constant(true))
    }
}
