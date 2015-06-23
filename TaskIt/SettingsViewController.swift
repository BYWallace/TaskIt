//
//  SettingsViewController.swift
//  TaskIt
//
//  Created by Brett Wallace on 6/23/15.
//  Copyright (c) 2015 Brett Wallace. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var capitalizeTableView: UITableView!
    @IBOutlet weak var completeNewTodoTableView: UITableView!
    @IBOutlet weak var versionLabel: UILabel!
    
    let kVersionNumber = "1.0"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.capitalizeTableView.delegate = self
        self.capitalizeTableView.dataSource = self
        self.capitalizeTableView.scrollEnabled = false
        
        self.completeNewTodoTableView.delegate = self
        self.completeNewTodoTableView.dataSource = self
        self.completeNewTodoTableView.scrollEnabled = false
        
        self.title = "Settings"
        
        self.versionLabel.text = kVersionNumber
        
        var doneButton = UIBarButtonItem(title: "Done", style: UIBarButtonItemStyle.Plain, target: self, action: Selector("doneBarButtonItemPressed:"))
        self.navigationItem.leftBarButtonItem = doneButton
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doneBarButtonItemPressed(barButtonItem: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}
