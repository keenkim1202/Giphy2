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
    
    GiphyApiService().fetchTrending()
    
    self.window = window
    self.userRepository = userRepository
    return true
  }
}

