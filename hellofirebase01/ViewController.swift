//
//  ViewController.swift
//  hellofirebase01
//
//  Created by 申潤五 on 2019/12/14.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Auth.auth().signInAnonymously { (user, error) in
            if error != nil {
                print(error?.localizedDescription)
            }else{
                print(user.debugDescription)
            }
        }
    }
}

