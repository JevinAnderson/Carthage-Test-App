//
//  ViewController.swift
//  Carthage Test App
//
//  Created by Anderson, Jevin on 2/7/20.
//  Copyright © 2020 Anderson, Jevin. All rights reserved.
//

import UIKit
import Alamofire
import Carthage_Test_Framework

class ViewController: UIViewController {
  @IBOutlet var header: UILabel!
  @IBOutlet var details: UILabel!
  
  var fetching: Bool = false
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    header.text = "Hello Jevin, and World!"
    randomizeDetails()
  }
  
  func randomizeDetails() {
    details.text = "Random content: \(cftRandomString(Int.random(in: 100...1000)))"
  }
  
  @IBAction func onClick(_ sender: UIButton, forEvent event: UIEvent) {
    randomizeDetails()
    if(!fetching) {
      fetch()
    }
  }
  
  func fetch() {
    fetching = true
    AF.request("https://httpbin.org/get").response { [weak self] response in
      debugPrint(response)
      self?.fetching = false
    }
  }
}

