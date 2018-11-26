//
//  Vehicle.swift
//  SwiftVaderExample
//
//  Created by James Rochabrun on 11/25/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

public struct Vehicle: Decodable {
    
    var name: String?
    var model: String?
    var vehicleClass: String?
    var manufacturer: String?
    var length: String?
    var costInCredits: String?
    var crew: String?
    var passengers: String?
    var maxAtmospheringSpeed: String?
    var cargoCapacity: String?
    var consumables: String?
    var films: [String]?
    var pilots: [String]?
    var url: String?
    var created: String?
    var edited: String?
}
