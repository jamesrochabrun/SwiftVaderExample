//
//  ViewController.swift
//  SwiftVaderExample
//
//  Created by James Rochabrun on 11/25/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Vader().search(People.self, withID: "1") { (n) in dump(n) }

        Vader().get(Resources<People>.self) { (n) in dump(n) }
        
        Vader().search(Resources<People>.self, query: "r2") { (n) in dump(n) }
    }
}

