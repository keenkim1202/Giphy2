//
//  GiphyType.swift
//  Giphy2
//
//  Created by KEEN on 2021/02/14.
//

import Foundation

struct GiphyType: Decodable {
  var id: String
  var username: String
  var title: String
//  var url: String
}

struct GiphyResponseType: Decodable {
  var data: [GiphyType]
}
