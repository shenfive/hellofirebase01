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
    
    var mAuth:Auth!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mAuth = Auth.auth()
        mAuth.addStateDidChangeListener { (auth, user) in
            if let user = user{
                print("======================")
            }else{
                print("0000000000000000000000")
            }
        }
        
        
    }
    @IBAction func login01(_ sender: Any) {
        mAuth.signInAnonymously { (user, error) in
            if error != nil {
                print(error?.localizedDescription)
            }
        }
    }
    
    @IBAction func logout(_ sender: Any) {
        do {
            try mAuth.signOut()
        } catch  {
            print(error.localizedDescription)
        }
    }
    
    
    
}

