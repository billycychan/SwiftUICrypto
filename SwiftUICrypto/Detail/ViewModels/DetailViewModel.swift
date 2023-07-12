//
//  DetailViewModel.swift
//  SwiftUICrypto
//
//  Created by CHI YU CHAN on 12/7/2023.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailService: CoinDetailDataService
    private var cancellable = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailService = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    
    private func addSubscribers() {
        
        coinDetailService.$coinDetails
            .sink { returnedCoinDetails in
                print("RECEIVED COIN DETAIL")
                print(returnedCoinDetails)
            }
            .store(in: &cancellable)
        
    }
}
