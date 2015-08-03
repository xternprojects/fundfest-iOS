//
//  CategoryViewController.swift
//  Indy Fundfest
//
//  Created by Andy Shi on 7/12/15.
//  Copyright © 2015 Indy Fundfest. All rights reserved.
//

import UIKit

class CategoryViewController: UIViewController {
    //@IBOutlet var scrollView: UIScrollView!
   
    let url = NSURL(string: "https://fundfest-backend.herokuapp.com/projects")
    var jsonData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // scrollView.contentSize.height = 1000
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) in NSString(data: data!, encoding: NSUTF8StringEncoding)
            if error != "nil" {
                self.jsonData = String(NSString(data: data!, encoding: NSUTF8StringEncoding)!)
                //print(self.jsonData)
            }
            else
            {
                print(error)
            }
        }
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowTech"
        {
            if let destinationVC = segue.destinationViewController as? ProjectViewController{
                // destinationVC.segueData = "Showing Tech"
            }
        } else if segue.identifier == "ShowSocial"
        {
            if let destinationVC = segue.destinationViewController as? ProjectViewController{
               // destinationVC.segueData = "Showing Social"
            }
        } else if segue.identifier == "ShowArt"
        {
            if let destinationVC = segue.destinationViewController as? ProjectViewController{
               /// destinationVC.segueData = "Art"
            }
        } else if segue.identifier == "ShowEducation"
        {
            if let destinationVC = segue.destinationViewController as? ProjectViewController{
              //  destinationVC.segueData = "Showing Education"
            }
        } else if segue.identifier == "ShowMisc"
        {
            if let destinationVC = segue.destinationViewController as? ProjectViewController{
              //  destinationVC.segueData = "Showing Misc"
            }
        } else if segue.identifier == "ShowFood"
        {
            if let destinationVC = segue.destinationViewController as? ProjectViewController{
              //  destinationVC.segueData = "Showing Food"
            }
        }
    }
}