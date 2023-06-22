//
//  ContentView.swift
//  SwiftUICrypto
//
//  Created by CHI YU CHAN on 22/6/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Text("AccentColor")
                    .foregroundColor(Color.theme.accent)
                Text("Secondary Text Color")
                    .foregroundColor(Color.theme.secondaryText)
                Text("Red Color")
                    .foregroundColor(Color.theme.red)
                Text("Green color")
                    .foregroundColor(Color.theme.green)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
