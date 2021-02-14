//
//  Giphy2+Bunde.swift
//  Giphy2
//
//  Created by KEEN on 2021/02/14.
//

import Foundation

extension Bundle {
  var giphyApiKey: String {
    guard let path = Bundle.main.path(forResource: "Giphy", ofType: "plist") else { return "" }
    guard let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else { return "" }
    guard let plist = try? PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: .none) as? [String:String] else { return "" }
    
    return plist["APIKEY"]!
  }
}
