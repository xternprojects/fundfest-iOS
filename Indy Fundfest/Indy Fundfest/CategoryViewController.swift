//
//  CategoryViewController.swift
//  Indy Fundfest
//
//  Created by Andy Shi on 7/12/15.
//  Copyright © 2015 Indy Fundfest. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    
    @IBOutlet var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       scrollView.contentSize.height = 1000
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ChooseProject"
        {
            if let destinationVC = segue.destinationViewController as? ProjectViewController{
                destinationVC.resultData.text = "testing?"
            }
        }
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