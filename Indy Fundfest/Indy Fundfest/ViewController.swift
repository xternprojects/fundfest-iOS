//
//  ViewController.swift
//  Indy Fundfest
//
//  Created by Andy Shi on 7/1/15.
//  Copyright (c) 2015 Indy Fundfest. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ENSideMenuDelegate  {
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {        
        super.viewDidLoad()
      //  scrollView.contentSize.height = 1000 // change programmatically
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

