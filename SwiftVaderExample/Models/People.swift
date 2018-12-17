//
//  People.swift
//  SwiftVaderExample
//
//  Created by James Rochabrun on 11/25/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

public struct People: Decodable {
    
    var name: String?
    var birthYear: String?
    var eyeColor: String?
    var gender: String?
    var hairColor: String?
    var height: String?
    var mass: String?
    var skinColor: String?
    var homeworld: String?
    var films: [String]?
    var species: [String]?
    var starships: [String]?
    var vehicles: [String]?
    var url: String?
    var created: String?
    var edited: String?
}


public struct PeopleInWookie: Decodable {
    
    var whrascwo: String?
    var acwoahrracao: String?
    var scracc: String?
    var acraahrc_oaooanoorc: String?
    var corahwh_oaooanoorc: String?
    var worowo_oaooanoorc: String?
    var rhahrcaoac_roworarc: String?
    var rrwowhwaworc: String?
    var acooscwoohoorcanwa: String?
    var wwahanscc: [String]?
    var cakwooaahwoc: [String]?
    var howoacahoaanwoc: [String]?
    var caorarccacahakc: [String]?
    var oarcworaaowowa: String?
    var wowaahaowowa: String?
    var hurcan: String?
}
