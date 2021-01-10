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

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    let rect = UIScreen.main.bounds
    let window = UIWindow(frame: CGRect(x: 0, y: 0, width: rect.width, height: rect.height))
    window.rootViewController = ViewController()
    
    window.makeKeyAndVisible()
    
    self.window = window
    return true
  }

  // MARK: UISceneSession Lifecycle

  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
    return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }

  func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
  }


}

