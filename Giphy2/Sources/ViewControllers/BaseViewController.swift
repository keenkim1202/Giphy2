//
//  BaseViewController.swift
//  Giphy2
//
//  Created by KEEN on 2021/01/30.
//

import UIKit

class BaseViewController: UIViewController {
  
  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  @available(*, unavailable)
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
