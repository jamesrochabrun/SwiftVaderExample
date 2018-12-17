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
        
        Vader().search(PeopleInWookie.self, withID: "1", wookiee: true) { (n) in
            switch n {
            case .success(let n): dump(n)
            case .failure(let err): print("\(err)")
            }
        }

//        Vader().get(Resources<People>.self) { (n) in dump(n) }
//
//        Vader().search(Resources<People>.self, query: "r2") { (n) in dump(n) }
    }
}

