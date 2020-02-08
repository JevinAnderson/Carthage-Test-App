//
//  ViewController.swift
//  Sample app
//
//  Created by Anderson, Jevin on 2/7/20.
//  Copyright © 2020 Anderson, Jevin. All rights reserved.
//

import UIKit
import Carthage_Test_Framework

class ViewController: UIViewController {
  @IBOutlet var header: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    header.text = cftRandomString(100)
  }


}

