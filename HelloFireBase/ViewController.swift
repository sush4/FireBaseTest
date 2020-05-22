//
//  ViewController.swift
//  HelloFireBase
//
//  Created by Sushant Kumar on 11/12/19.
//  Copyright © 2019 Sushant Kumar. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import Login

class ViewController: UIViewController {

  var button: UIButton = UIButton()

  @IBOutlet weak var signIn: UIButton!
  @IBOutlet weak var signOut: UIButton!

  override func viewDidLoad() {
    super.viewDidLoad()
    setupView()

  }

  private func setupView() {
    button.backgroundColor = UIColor.red
    button.translatesAutoresizingMaskIntoConstraints = false
    button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    view.addSubview(button)
    button.widthAnchor.constraint(equalToConstant: 200).isActive = true
    button.heightAnchor.constraint(equalToConstant: 40).isActive = true
    button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
//    let testView = TestView()
//    print(testView)
    let test = Database.database().reference(withPath: "users")
//    let ref = Database.database().reference()
    test.observe(.value) { snapshot in
//      snapshot.key
      print(snapshot.value)
    }
    print(test)
//    Data
  }

  @objc private func tapButton() {
    let test = Database.database().reference(withPath: "users")
    test.setValue(["4": "test4"])
  }

}

