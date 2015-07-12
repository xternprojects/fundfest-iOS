//
//  ProjectViewController.swift
//  Indy Fundfest
//
//  Created by Andy Shi on 7/12/15.
//  Copyright © 2015 Indy Fundfest. All rights reserved.
//

import UIKit

class  ProjectViewController: UIViewController {
    
    @IBOutlet var resultData: UILabel!
    var segueData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultData.text = segueData
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
