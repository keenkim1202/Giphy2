//
//  GiphyApiService.swift
//  Giphy2
//
//  Created by KEEN on 2021/02/14.
//

import Foundation
import Moya

enum GiphyApiType {
  case trending
}

extension GiphyApiType: TargetType {
  var baseURL: URL {
    return URL(string: "https://api.giphy.com/v1/gifs/trending")!
  }
  
  var path: String {
    switch self {
    case .trending:
      return "/trending"
    }
  }
  
  var method: Moya.Method {
      return .get
  }
  
  var sampleData: Data {
    return Data()
  }
  
  var task: Task {
    switch self {
    case .trending:
      return .requestParameters(
        parameters: [
          "api_key": Bundle.main.giphyApiKey,
          "limit":5,
          "offset": 8
        ],
        encoding: URLEncoding.default)
    }
  }
  
  var headers: [String : String]? {
    return nil
  }
}

protocol GiphyApiServiceType {
  func fetchTrending()
}

final class GiphyApiService: GiphyApiServiceType {
  
  private let provider = MoyaProvider<GiphyApiType>()
  
  func fetchTrending() {
    provider.request(.trending) { (result) in
      print("provider request end.")
    }
  }
}
