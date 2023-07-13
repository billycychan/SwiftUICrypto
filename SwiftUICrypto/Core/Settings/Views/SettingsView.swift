//
//  SettingsView.swift
//  SwiftUICrypto
//
//  Created by CHI YU CHAN on 12/7/2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let defaultURL = URL(string: "https://www.google.com")!
    let youtubeURL = URL(string: "https://www.youtube.com/c/swiftfulthinking")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalWebsite = URL(string: "https://www.linkedin.com/in/billycychan/")!
    
    var body: some View {
        NavigationView {
            
            ZStack {
                Color.theme.background
                    .ignoresSafeArea()
                List {
                    swiftfulThinkingSection
                        .listRowBackground(Color.theme.background)
                    coinGeckoSection
                        .listRowBackground(Color.theme.background)
                    developerSection
                        .listRowBackground(Color.theme.background)
                    applicationSection
                        .listRowBackground(Color.theme.background)
                }
                .background(Color.clear)
                .scrollContentBackground(.hidden)
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    XMarkButton {
                        dismiss()
                    }
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

extension SettingsView {
    
    private var swiftfulThinkingSection: some View {
        Section(header: Text("Swiftful Thinking"),
                footer: Text("Thanks")) {
            VStack(alignment: .leading){
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was made by following a @Swiftfulthinking course on Youtube. It uses MVVM Architecture, Combine and CoreData")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Subscribe on Youtube 😄", destination: youtubeURL)
            
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading){
                Image("coingecko")
                    .resizable()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency data that is used in this app comes from a free API from CoinGecko! Prices may be slightly delayed")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit CoinGecko 😄", destination: coingeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading){
                HStack {
                    Spacer()
                    Image("profile")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                
                Text("This app was developer by Billy Chan. It uses SwiftUI and is written 100% in Swift. The project benefits from multi-threading., publishers/subscribers, and data persistance")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Visit my Linkedin 😄", destination: personalWebsite)
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link("Terms of Service", destination: defaultURL)
            Link("Privacy Policy", destination: defaultURL)
            Link("Company Website", destination: defaultURL)
            Link("Learn More", destination: defaultURL)
            
        }
    }
}
