//
//  UserRepository.swift
//  Giphy2
//
//  Created by KEEN on 2021/01/23.
//

import Foundation

protocol UserRepositoryType {
  var count: Int { get }
  func user(userRow: Int) -> UserType?
  func add(userType: UserType)
  func fetch() -> [UserType]
}

class UserRepository: UserRepositoryType {
  private var items: [UserType]
  
  init() {
    items = []
  }
  
  var count: Int {
    return items.count
  }
  
  func add(userType: UserType) {
    items.append(userType)
  }
  
  func fetch() -> [UserType] {
    return []
  }
  
  func user(userRow: Int) -> UserType? {
    guard userRow < count else { return nil }
    return items[userRow]
  }
}
