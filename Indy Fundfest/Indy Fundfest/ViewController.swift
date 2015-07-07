//
//  ViewController.swift
//  Indy Fundfest
//
//  Created by Andy Shi on 7/1/15.
//  Copyright (c) 2015 Indy Fundfest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var scroller: UIScrollView!

    override func viewDidLoad() {        
        super.viewDidLoad()
        scroller.contentSize.height = 1000
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

