//
//  ViewController.swift
//  xmmptest
//
//  Created by nicola on 27/06/2020.
//  Copyright © 2020 nicola. All rights reserved.
//

import UIKit
import XMPPFramework

class ViewController: UIViewController {
    
    var xmppController: XMPPController!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            try xmppController = XMPPController(hostName: "server",
                                                     userJIDString: "i@server",
                                                     password: "password")
            xmppController.connect()
        } catch {
            print("ERROR")
        }
    }
}

