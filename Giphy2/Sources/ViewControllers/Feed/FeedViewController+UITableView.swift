//
//  FeedViewController+UITableView.swift
//  Giphy2
//
//  Created by KEEN on 2021/01/30.
//

import UIKit 

extension FeedViewController: UITableViewDelegate {
}

extension FeedViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return userRepository.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "FeedViewCell", for: indexPath) as! FeedTableViewCell
    if let user = userRepository.user(userRow: indexPath.row) {
      cell.configure(user: user)
    }
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    guard let userType = userRepository.user(userRow: indexPath.row) else { return }
      let vc = DetailViewController(userType: userType)
    
    navigationController?.pushViewController(vc, animated: true)
    
  }
}
