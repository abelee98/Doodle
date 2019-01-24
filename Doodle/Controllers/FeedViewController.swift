//
//  HomeViewController.swift
//  Doodle
//
//  Created by Abraham Lee on 1/16/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit
import StitchCore
import StitchCoreRemoteMongoDBService
import StitchRemoteMongoDBService

class FeedViewContoller: UIViewController {
    
    @IBOutlet weak var homeTable: UITableView!
        private lazy var client = Stitch.defaultAppClient!
    override func viewDidLoad() {
        super.viewDidLoad()
        if !client.auth.isLoggedIn {
            //Do something
            guard let login = self.storyboard?.instantiateViewController(withIdentifier: "login") else { return }
            print("in here")
            self.tabBarController?.present(login, animated: true, completion: nil)
        } else {
            // Logged in
        }

        homeTable.dataSource = self
        homeTable.delegate = self
    }
}
