//
//  ViewController.swift
//  webView
//
//  Created by Wei Chung Chuo on 8/17/15.
//  Copyright © 2015 Wei Chung Chuo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let socket = SocketIOClient(socketURL: "http://localhost:5000")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        socket.connect()
        
        socket.on("connect") { data, ack in
            print("iOS::WE ARE USING SOCKETS!")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func yellowButtonPressed(sender: UIButton) {
        socket.emit("javascript", "Javascript")
        print("JS Button Pre    ssed")
    }
    
    
    @IBAction func orangeButtonPressed(sender: UIButton) {
        socket.emit("swift", "Swift")
        print("Swift Button Pressed")
    }

}

