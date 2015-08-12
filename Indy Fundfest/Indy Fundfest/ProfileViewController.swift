//
//  ProfileViewController.swift
//  Indy Fundfest
//
//  Created by Erin Leonhard on 8/12/15.
//  Copyright (c) 2015 Indy Fundfest. All rights reserved.
//

import UIKit
import Foundation

class ProfileViewController: UIViewController, ENSideMenuDelegate  {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var facebookLoginBtn: UIImageView!
    @IBOutlet weak var twitterLoginBtn: UIImageView!
    @IBOutlet weak var signUpBtn: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //scrollView.frame = CGRectMake(0, 0, 350, 1000);
        //scrollView.content.size = CGSizeMake(350, 1000);
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func toggleSideMenu(sender: AnyObject) {
        toggleSideMenuView()
    }
    
}

