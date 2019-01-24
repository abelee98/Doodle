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

class LoginViewController: UIViewController {
    private lazy var client = Stitch.defaultAppClient!
    private var mongoClient: RemoteMongoClient?
    private var itemsCollection: RemoteMongoCollection<Document>?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mongoClient = client.serviceClient(
            fromFactory: remoteMongoClientFactory, withName: "mongodb-atlas"
        )
        print("in login")
//        let credential = UserAPIKeyCredential.init(withKey: "x0RsqbfN1umDyGHCYr1BCCBJEngWh6aSDOpS6oxJTJzxFYE5ebl8dgFtMdoHxA8x")
//        client.auth.login(withCredential: credential) { result in
//            switch result {
//            case .success(let user):
//                print("LOGGGEDDDD INNNNNN")
//                print("logged in anonymous as user \(user.id)")
//                DispatchQueue.main.async {
//                    // update UI accordingly
//                }
//            case .failure(let error):
//                print("Failed to log in: \(error)")
//            }
//        }
        
    }
    @IBAction func b(_ sender: Any) {
        let coll = mongoClient?.db("test").collection("testcol")
        let options = RemoteFindOptions(
            projection: ["_id": 0]
        )
        coll?.find(options: options).asArray({result in
            switch result {
                case .success(let data):
                    print(data)
                case .failure(let error):
                    print(error)
            }
        })
    }
}
