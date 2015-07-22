//
//  ProjectViewController.swift
//  Indy Fundfest
//
//  Created by Andy Shi on 7/12/15.
//  Copyright © 2015 Indy Fundfest. All rights reserved.
//
import UIKit

class CustomTableViewCell : UITableViewCell {
    @IBOutlet var issueImage: UIImageView?
    @IBOutlet var issueTitle: UILabel?
    @IBOutlet var issueDescription: UILabel?
    @IBOutlet var issueLocation: UILabel?
    
    func loadItem(#title: String, description: String, location: String) {
        issueTitle!.text = title
        issueDescription!.text = description
        issueLocation!.text = location
    }
    
    func loadItemWithImage(#title: String, description: String, image: UIImage, location: String) {
        issueTitle!.text = title
        issueDescription!.text = description
        issueImage!.image = image
        issueLocation!.text = location
    }
}

class  ProjectViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var tableView: UITableView!
    var items = NSMutableArray()
    var imageArray = NSMutableArray()
    var issueNameToPass = String()
    var issueDescriptionToPass = String()

    override func viewDidLoad() {
        getJSON()
        let cell = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableView.registerNib(cell, forCellReuseIdentifier: "customCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getJSON() {
        APICall.sharedInstance.getProjects { json in let results = json
            sleep(1)
            for (index: String, subJson: JSON) in results {
                let issue: AnyObject = subJson.object
                self.items.addObject(issue)
                self.retrieveImage(issue["picture"] as! String)
            }
            dispatch_async(dispatch_get_main_queue(),{
                self.tableView?.reloadData()
            })
        }
    }
    
    func retrieveImage(urlString: String){
        var issueImage = UIImageView();
        let url = NSURL(string: urlString)
        if (url != nil)
        {
            let data = NSData(contentsOfURL: url!)
            issueImage.image = UIImage(data: data!)
            self.imageArray.addObject(issueImage);
        }
        else {
            self.imageArray.addObject(0)
        }
    }
    
    func retrieveImages(){
        for (var x=0; x<self.items.count; x++) {
            var issueImage = UIImageView();
            let url = NSURL(string: self.items[x]["picture"]!!.string)
            if(url != nil)
            {
                let data = NSData(contentsOfURL: url!) //make sure image in this url does exist, otherwise unwrap
                issueImage.image = UIImage(data: data!)
                self.imageArray.addObject(issueImage);
                NSLog("picture in")
            }
            else{
                self.imageArray.addObject(issueImage)
            }
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:CustomTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("customCell") as! CustomTableViewCell
        let issue:JSON = JSON(self.items[indexPath.row])
        let picURL = issue["picture"].string
        var issueImage = UIImageView();
        let url = NSURL(string: picURL!)
        if(url != nil)
        {
            issueImage = self.imageArray[indexPath.row] as! UIImageView
            cell.loadItemWithImage(title: issue["name"].string!, description: issue["description"].string!, image: issueImage.image!, location: issue["description"].string!)
        }
        else {
            cell.loadItem(title: issue["name"].string!, description: issue["description"].string!, location: issue["description"].string!)
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        issueNameToPass = self.items[indexPath.row]["name"] as! String
        issueDescriptionToPass = self.items[indexPath.row]["description"] as! String
        performSegueWithIdentifier("showIssueDetail", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        if (segue.identifier == "showIssueDetail") {
            var viewController = segue.destinationViewController as! ProjectDetailsVC
            viewController.issueName = issueNameToPass
            viewController.issueDescription = issueDescriptionToPass
        }
    }

}
