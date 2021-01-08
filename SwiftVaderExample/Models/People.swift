//
//  People.swift
//  SwiftVaderExample
//
//  Created by James Rochabrun on 11/25/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

public struct People: Decodable {
    
    let name: String?
    let birthYear: String?
    let eyeColor: String?
    let gender: String?
    let hairColor: String?
    let height: String?
    let mass: String?
    let skinColor: String?
    let homeworld: String?
    let films: [String]?
    let species: [String]?
    let starships: [String]?
    let vehicles: [String]?
    let url: String?
    let created: String?
    let edited: String?
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
