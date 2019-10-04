//
//  ViewController.swift
//  Facebook Login
//
//  Created by Mohamed on 10/4/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit
import FacebookCore
import FacebookLogin
import FacebookShare

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_FacebookLogin(_ sender: Any) {
        
        let manger = LoginManager()
        
        manger.logIn(permissions: [.publicProfile , .email], viewController: self) { (result) in
            
            switch result{
                
            case .cancelled:
                print("user cancelled")
                break
            case .failed(let error):
                print(error.localizedDescription)
                break
            case .success(let grantedpermission , let declinedPermission , let accessToken):
                print("accessToken:\(accessToken)")
                
                
            }
        }
        
        
        
    }
}

