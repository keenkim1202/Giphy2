//
//  AppDelegate.swift
//  Giphy2
//
//  Created by Heyziin on 2021/01/10.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  private var userRepository: UserRepositoryType? = nil
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    let rect = UIScreen.main.bounds
    let window = UIWindow(frame: CGRect(x: 0, y: 0, width: rect.width, height: rect.height))
    let userRepository = UserRepository()
    let rootVC = FeedViewController(userRepository: userRepository)
    let nvc = UINavigationController(rootViewController: rootVC)
    window.rootViewController = nvc
    
    window.makeKeyAndVisible()
    
    self.window = window
    self.userRepository = userRepository
    return true
  }

  private func loadAPIKey() -> String? {
    guard let path = Bundle.main.path(forResource: "Giphy", ofType: "plist") else { return nil }
    guard let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else { return nil }
    guard let plist = try? PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: .none) as? [String:String] else { return nil }
    guard let apiKey = plist["APIKEY"] else { return nil }
    
    return apiKey
  }
}

