//
//  LoginViewController.swift
//  Doodle
//
//  Created by Abraham Lee on 1/20/19.
//  Copyright © 2019 Abraham Lee. All rights reserved.
//

import UIKit
import StitchCore
import StitchCoreRemoteMongoDBService
import StitchRemoteMongoDBService
import GoogleSignIn
import FacebookCore
import FacebookLogin

class LoginViewController: UIViewController, GIDSignInUIDelegate {

    @IBOutlet weak var facebookLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance()?.signOut()
        facebookLoginButton.layer.cornerRadius = 4
    }
    
    // Facebook Login Handler
    @IBAction func facebookLoginClicked(_ sender: Any) {
        let loginManager = LoginManager()
        loginManager.logIn(readPermissions: [ .publicProfile ], viewController: self) { (loginResult) in
            switch loginResult {
            case .failed(let error):
                print(error)
            case .cancelled:
                print("User cancelled login.")
            case .success(_,_, let accessToken):
                let fbCredential = FacebookCredential.init(withAccessToken: accessToken.authenticationToken)
                Stitch.defaultAppClient!.auth.login(withCredential: fbCredential) { result in
                    switch result {
                    case .success:
                        print("success logging in to Facebook")
                        self.navigationController?.popViewController(animated: true)
                        self.dismiss(animated: true, completion: nil)
                    case .failure(let error):
                        print("failed logging in Stitch with Facebook. error: \(error)")
                        LoginManager().logOut()
                    }
                }
                print("Logged in!")
            }
        }
    }
    @IBAction func cancelPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
}
