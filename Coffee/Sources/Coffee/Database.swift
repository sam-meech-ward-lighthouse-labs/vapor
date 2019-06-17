//
//  Database.swift
//  Async
//
//  Created by Sam Meech-Ward on 2019-06-17.
//

import Foundation

class Database {
  
  private var coffees = [Coffee]()
  
  func save(coffee: Coffee) {
    coffees.append(coffee)
  }
  
  func get() -> [Coffee] {
    return coffees
  }
  
  func get(id: Int) -> Coffee {
    return coffees[id]
  }
}
