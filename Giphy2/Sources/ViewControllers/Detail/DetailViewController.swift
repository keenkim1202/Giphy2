//
//  DetailViewController.swift
//  Giphy2
//
//  Created by KEEN on 2021/01/30.
//

import UIKit

final class DetailViewController: BaseViewController {
  
  private let userType: UserType
  
  init(userType: UserType) {
    self.userType = userType
    
    super.init()
  }

}
