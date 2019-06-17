//
//  ViewController.swift
//  ServerDemo
//
//  Created by Sam Meech-Ward on 2019-06-17.
//  Copyright © 2019 meech-ward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let networkManager = NetworkManager()

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    networkManager.getCoffees { coffees, error in
      coffees?.forEach { coffee in
        print(coffee)
      }
    }
  }


}

