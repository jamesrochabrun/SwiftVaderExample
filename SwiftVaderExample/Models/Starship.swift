//
//  Starship.swift
//  SwiftVaderExample
//
//  Created by James Rochabrun on 11/25/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

public struct Starship: Decodable {
    
    var name: String?
    var model: String?
    var startshipClass: String?
    var manufacturer: String?
    var costInCredits: String?
    var length: String?
    var crew: String?
    var passengers: String?
    var maxAtmospheringSpeed: String?
    var hyperdriveRating: String?
    var MGLT: String?
    var cargoCapacity: String?
    var consumables: String?
    var films: [String]?
    var pilots: [String]?
    var url: String?
    var created: String?
    var edited: String?
}
