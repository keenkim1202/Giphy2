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
//    window.rootViewController = FeedViewController(userRepository: userRepository)
    window.rootViewController = DetailViewController(userType: UserType(name: "kim", address: "서울시", thumbnailUrl: "https://canary.contestimg.wish.com/api/webimage/5c00dfcd4f16317ea1468191-large.jpg?cache_buster=dc87a0da75df8260586095d5254fdf63"))
    window.makeKeyAndVisible()
    
    self.window = window
    self.userRepository = userRepository
    return true
  }
  
}

