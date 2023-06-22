//
//  SwiftUICryptoApp.swift
//  SwiftUICrypto
//
//  Created by CHI YU CHAN on 22/6/2023.
//

import SwiftUI

@main
struct SwiftUICryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
