//
//  ViewController.swift
//  Indy Fundfest
//
//  Created by Andy Shi on 7/1/15.
//  Copyright (c) 2015 Indy Fundfest. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ENSideMenuDelegate  {
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
    // MARK: - ENSideMenu Delegate
    func sideMenuWillOpen() {
        print("sideMenuWillOpen")
    }
    func sideMenuWillClose() {
        print("sideMenuWillClose")
    }
    func sideMenuShouldOpenSideMenu() -> Bool {
        print("sideMenuShouldOpenSideMenu")
        return true
    }


}

