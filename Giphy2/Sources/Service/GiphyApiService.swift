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
    return URL(string: "https://api.giphy.com/v1/gifs")!
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
      switch result {
      case .success(let response):
        guard let giphyRespose = try? JSONDecoder().decode(GiphyResponseType.self, from: response.data) else { return }
        print(giphyRespose.data)
        
      case .failure(let error):
        debugPrint(error.localizedDescription)
      }
      
    }
  }
}
