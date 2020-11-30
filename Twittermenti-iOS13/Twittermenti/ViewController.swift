//
//  ViewController.swift
//  Twittermenti
//
//  Created by Angela Yu on 17/07/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit
import SwifteriOS

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sentimentLabel: UILabel!
    
    let swifter = Swifter(consumerKey: "YhKyHJeqzwW7NAvfwI8DSZox3", consumerSecret: "0TZIUgiUetGrZskyd9czspWC7k7ynfTvbE5ObVOfLovJI8X4gt")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        swifter.searchTweet(using: "@Apple") { (results, metadata) in
            print(results)
        } failure: { (error) in
            print("There was an error with the Twitter API Request")
            print(error)
        }

        
    }

    @IBAction func predictPressed(_ sender: Any) {
    
    
    }
    
}

