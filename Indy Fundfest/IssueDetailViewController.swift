//
//  ProjectDetailsVC.swift
//  Indy Fundfest
//
//  Created by Andy Shi on 7/1/15.
//  Copyright (c) 2015 Indy Fundfest. All rights reserved.
//

import UIKit
class ProjectDetailsVC: UIViewController {
    
    @IBOutlet var issueNameLabel: UILabel!
    @IBOutlet var issueDescriptionLabel: UILabel!
    
    var issueName = ""
    var issueDescription = ""
    
    override func viewWillAppear(animated: Bool) {
        issueNameLabel.text = issueName
        issueDescriptionLabel.text = issueDescription
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
