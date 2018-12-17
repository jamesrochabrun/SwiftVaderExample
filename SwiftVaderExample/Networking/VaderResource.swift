//
//  VaderResource.swift
//  SwiftVaderExample
//
//  Created by James Rochabrun on 11/25/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

public enum VaderResource {
    
    case people(_ id: String?, query: String?, wookiee: Bool)
    case films(_ id: String?, query: String?, wookiee: Bool)
    case planets(_ id: String?, query: String?, wookiee: Bool)
    case species(_ id: String?, query: String?, wookiee: Bool)
    case starships(_ id: String?, query: String?,wookiee: Bool)
    case vehicles(_ id: String?, query: String?, wookiee: Bool)
}

extension VaderResource: Endpoint {
    
    var base: String {
        return "https://swapi.co"
    }
    
    var path: String {
        switch self {
        case .people(let id, _, _): return "/api/people/\(id ?? "")"
        case .films(let id, _, _): return "/api/films/\(id ?? "")"
        case .planets(let id, _, _): return "/api/planets/\(id ?? "")"
        case .species(let id, _, _): return "/api/species/\(id ?? "")"
        case .starships(let id, _, _): return "/api/starships/\(id ?? "")"
        case .vehicles(let id, _, _): return "/api/vehicles/\(id ?? "")"
        }
    }
    
    var queryItems: [URLQueryItem] {
        var q = ""
        var w = false
        switch self {
        case .people(_, let query, let wookiee):
            q = query ?? ""
            w = wookiee
        case .films(_, let query, let wookiee):
            q = query ?? ""
            w = wookiee
        case .planets(_, let query, let wookiee):
            q = query ?? ""
            w = wookiee
        case .species(_, let query, let wookiee):
            q = query ?? ""
            w = wookiee
        case .starships(_, let query, let wookiee):
            q = query ?? ""
            w = wookiee
        case .vehicles(_, let query, let wookiee):
            q = query ?? ""
            w = wookiee
        }
        let searchItem = URLQueryItem(name: "search", value: q)
        let wookieQuery = URLQueryItem(name: "format", value: "wookiee")
        return w ? [searchItem, wookieQuery] : [searchItem]
    }
    
    init?(T: Decodable.Type, id: String?, query: String?, wookiee: Bool) {
        switch T {
        case is Film.Type: self = .films(id, query: query, wookiee: wookiee)
        case is People.Type: self = .people(id, query: query, wookiee: wookiee)
        case is Starship.Type: self = .starships(id, query: query, wookiee: wookiee)
        case is Vehicle.Type: self = .vehicles(id, query: query, wookiee: wookiee)
        case is Species.Type: self = .species(id, query: query, wookiee: wookiee)
        case is Planet.Type: self = .planets(id, query: query, wookiee: wookiee)
        default: return nil
        }
    }
}
