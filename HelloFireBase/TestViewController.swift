//
//  TestViewController.swift
//  HelloFireBase
//
//  Created by Sushant Kumar on 16/12/19.
//  Copyright © 2019 Sushant Kumar. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "test"
        // Do any additional setup after loading the view.
    }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("viewWillAppear")
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("viewDidAppear")
  }

}
