//
//  ViewController.swift
//  Doodle
//
//  Created by Abraham Lee on 1/15/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

// Profile View Controller for each user


import UIKit
import StitchCore
import StitchCoreRemoteMongoDBService
import StitchRemoteMongoDBService

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var friend: UILabel!
    @IBOutlet weak var doodles: UILabel!
    @IBOutlet weak var edited: UILabel!
    @IBOutlet weak var userDoodles: UICollectionView!
    private lazy var client = Stitch.defaultAppClient!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if !client.auth.isLoggedIn {
            guard let login = self.storyboard?.instantiateViewController(withIdentifier: "login") else { return }
            self.tabBarController?.present(login, animated: true, completion: nil)
        } 
        // have to define the datasource and delegate
        userDoodles.dataSource = self
        userDoodles.delegate = self
        profileImage.layer.cornerRadius = 75
        profileImage.layer.masksToBounds = false
        profileImage.clipsToBounds = true
    }
}

