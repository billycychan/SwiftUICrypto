//
//  MarketDataModel.swift
//  SwiftUICrypto
//
//  Created by CHI YU CHAN on 5/7/2023.
//

import Foundation

/*
 URL: https://api.coingecko.com/api/v3/global
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 9873,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 773,
     "total_market_cap": {
       "btc": 40416836.33116007,
       "eth": 645266578.1793143,
       "ltc": 12190160259.55021,
       "bch": 4838313969.135262,
       "bnb": 5148830112.215275,
       "eos": 1712888453184.6516,
       "xrp": 2585273220768.6313,
       "xlm": 12229431881668.262,
       "link": 195954920684.5652,
       "dot": 235571954318.4769,
       "yfi": 179030752.6336123,
       "usd": 1231217009664.4458,
       "aed": 4522297013007.807,
       "ars": 319585891103291.6,
       "aud": 1849739805158.5466,
       "bdt": 133479412557607.7,
       "bhd": 464126951265.1662,
       "bmd": 1231217009664.4458,
       "brl": 5965862020329.083,
       "cad": 1635404623248.1206,
       "chf": 1106791449884.768,
       "clp": 981624697465267.9,
       "cny": 8923245277543.094,
       "czk": 26966114945670.71,
       "dkk": 8450472720436.041,
       "eur": 1134501219904.2751,
       "gbp": 969937985609.5353,
       "hkd": 9629409793436.129,
       "huf": 431443064526616.2,
       "idr": 18576786924368600,
       "ils": 4552634200125.947,
       "inr": 101406971579177.67,
       "jpy": 178126936481708.47,
       "krw": 1606063189042638.2,
       "kwd": 378402235750.27075,
       "lkr": 379106612539065.9,
       "mmk": 2584740233558724,
       "mxn": 20965778849071.03,
       "myr": 5728852745968.66,
       "ngn": 954808790994779.4,
       "nok": 13158548068032.102,
       "nzd": 1992212543865.8882,
       "php": 68481527450631.06,
       "pkr": 341478037630434.25,
       "pln": 5061767057962.381,
       "rub": 111302010286363.81,
       "sar": 4618019210641.155,
       "sek": 13476865682493.766,
       "sgd": 1666450991363.8174,
       "thb": 43091364121246.055,
       "try": 32115188833005.41,
       "twd": 38413355093025.88,
       "uah": 45456029660271.414,
       "vef": 123281759177.70091,
       "vnd": 29259872234675556,
       "zar": 23132917780802.008,
       "xdr": 925392554199.8755,
       "xag": 53233760481.75884,
       "xau": 642424411.3027154,
       "bits": 40416836331160.07,
       "sats": 4041683633116007
     },
     "total_volume": {
       "btc": 1346596.943643475,
       "eth": 21498812.89302309,
       "ltc": 406148378.69877636,
       "bch": 161201602.96173456,
       "bnb": 171547293.69807586,
       "eos": 57069542429.33558,
       "xrp": 86135416167.80074,
       "xlm": 407456819712.88214,
       "link": 6528771701.071962,
       "dot": 7848721040.266445,
       "yfi": 5964896.963712786,
       "usd": 41021346861.27755,
       "aed": 150672637661.8785,
       "ars": 10647874085569.643,
       "aud": 61629117819.937035,
       "bdt": 4447230048306.008,
       "bhd": 15463653040.90831,
       "bmd": 41021346861.27755,
       "brl": 198768936216.32074,
       "cad": 54487957672.93838,
       "chf": 36875770568.82375,
       "clp": 32705499425559.312,
       "cny": 297302211377.1098,
       "czk": 898449538955.7015,
       "dkk": 281550506438.54083,
       "eur": 37798997001.28364,
       "gbp": 32316124801.152145,
       "hkd": 320830004869.39526,
       "huf": 14374700367128.914,
       "idr": 618936234644984.5,
       "ils": 151683403648.54068,
       "inr": 3378649354783.428,
       "jpy": 5934783867828.758,
       "krw": 53510367905657.24,
       "kwd": 12607500744.345041,
       "lkr": 12630968974841.69,
       "mmk": 86117658247760.16,
       "mxn": 698532005027.2653,
       "myr": 190872326945.52423,
       "ngn": 31812054490920.793,
       "nok": 438412855128.3171,
       "nzd": 66375985014.683525,
       "php": 2281648538877.8486,
       "pkr": 11377270551975.336,
       "pln": 168646551002.6159,
       "rub": 3708329510131.408,
       "sar": 153861883294.95462,
       "sek": 449018473124.4858,
       "sgd": 55522351955.39229,
       "thb": 1435706118797.857,
       "try": 1070004954685.5975,
       "twd": 1279845511398.4292,
       "uah": 1514491389408.8484,
       "vef": 4107467461.2197194,
       "vnd": 974872308158261,
       "zar": 770736138918.6118,
       "xdr": 30831972471.711117,
       "xag": 1773627667.8370025,
       "xau": 21404118.36527743,
       "bits": 1346596943643.4749,
       "sats": 134659694364347.5
     },
     "market_cap_percentage": {
       "btc": 48.051306739778596,
       "eth": 18.625993914479505,
       "usdt": 6.766080721659817,
       "bnb": 3.0273933063155853,
       "usdc": 2.243656694618854,
       "xrp": 2.0209952996272715,
       "steth": 1.16962258395326,
       "ada": 0.8082725357460947,
       "doge": 0.7584820125012195,
       "sol": 0.6084634561743808
     },
     "market_cap_change_percentage_24h_usd": -1.7981934782502447,
     "updated_at": 1688582586
   }
 }
 */

// MARK: - Welcome
struct GlobalData: Codable {
    let data: MarketDataModel?
}

// MARK: - DataClass
struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        
        return ""
    }
}
