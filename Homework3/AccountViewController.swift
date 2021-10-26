//
//  AccountViewController.swift
//  Homework3
//
//  Created by Tipachel on 26.10.2021.
//

import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet var greetings: UILabel!
    var username:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetings.text = "Congratulations, \(username ?? "")!"
    }
    
    @IBAction func logOutButtonPressed() {
        
    }
}
