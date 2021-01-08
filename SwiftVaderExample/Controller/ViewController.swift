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
        
        Vader().search(People.self, withID: "1", wookiee: false) { (n) in
            switch n {
            case .success(let n):
                let v = n
            case .failure(let err): print("\(err)")
            }
        }

        Vader().get(Resources<People>.self) { (n) in
            let v = n
            dump(n)
            
            switch n {
            case .success(let resource):
                resource?.results
            default: break
            }
        }
        
        
       // Vader().search(Resources<People>.self, query: "r2") { (n) in dump(n) }
    }
}

