//
//  EditProfileViewController.swift
//  Doodle
//
//  Created by Abraham Lee on 1/30/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit
import StitchCore
import StitchCoreRemoteMongoDBService
import StitchRemoteMongoDBService

class EditProfileViewController: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var userDescription: UITextField!
    private lazy var client = Stitch.defaultAppClient!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(client.auth.currentUser?.profile.data)
    }
}
