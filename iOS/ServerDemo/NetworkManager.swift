//
//  NetworkManager.swift
//  ServerDemo
//
//  Created by Sam Meech-Ward on 2019-06-17.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import Foundation

struct Coffee: Codable {
  var cream: Int
  var sugar: Int
}


class NetworkManager {
  
  func getCoffees(_ completion: @escaping ([Coffee]?, Error?) -> Void) {
    let url = URL(string: "http://localhost:4000/coffees")!
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
      if let error = error {
        completion(nil, error)
        return
      }
      
      let decoder = JSONDecoder()
      guard let data = data else {
        completion(nil, nil)
        return
      }
      guard let coffees = try? decoder.decode([Coffee].self, from: data) else {
        completion(nil, nil)
        return
      }
      completion(coffees, nil)
    }
    task.resume()
  }
}
