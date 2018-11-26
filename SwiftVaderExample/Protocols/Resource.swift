//
//  Resource.swift
//  SwiftVaderExample
//
//  Created by James Rochabrun on 11/25/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

public struct Resources<T: Decodable>: Resource {
    
    var count: Int?
    var next: String?
    var previous: String?
    var results: [T]?
}


protocol Resource: Decodable {
    
    associatedtype T = Decodable
    var count: Int? { get }
    var next: String? { get }
    var previous: String? { get }
    var results: [T]? { get }
}
