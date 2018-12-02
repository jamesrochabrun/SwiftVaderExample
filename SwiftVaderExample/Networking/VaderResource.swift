//
//  VaderResource.swift
//  SwiftVaderExample
//
//  Created by James Rochabrun on 11/25/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

public enum VaderResource {
    
    case people(_ id: String?, query: String?)
    case films(_ id: String?, query: String?)
    case planets(_ id: String?, query: String?)
    case species(_ id: String?, query: String?)
    case starships(_ id: String?, query: String?)
    case vehicles(_ id: String?, query: String?)
}

extension VaderResource: Endpoint {
    
    var base: String {
        return "https://swapi.co"
    }
    
    var path: String {
        switch self {
        case .people(let id, _): return "/api/people/\(id ?? "")"
        case .films(let id, _): return "/api/films/\(id ?? "")"
        case .planets(let id, _): return "/api/planets/\(id ?? "")"
        case .species(let id, _): return "/api/species/\(id ?? "")"
        case .starships(let id, _): return "/api/starships/\(id ?? "")"
        case .vehicles(let id, _): return "/api/vehicles/\(id ?? "")"
        }
    }
    
    var queryItems: [URLQueryItem] {
        var q = ""
        switch self {
        case .people(_, let query): q = query ?? ""
        case .films(_, let query): q = query ?? ""
        case .planets(_, let query): q = query ?? ""
        case .species(_, let query): q = query ?? ""
        case .starships(_, let query): q = query ?? ""
        case .vehicles(_, let query): q = query ?? ""
        }
        let searchItem = URLQueryItem(name: "search", value: q)
        return [searchItem]
    }
    
    init?(T: Decodable.Type, id: String?, query: String?) {
        switch T {
        case is Film.Type: self = .films(id, query: query)
        case is People.Type: self = .people(id, query: query)
        case is Starship.Type: self = .starships(id, query: query)
        case is Vehicle.Type: self = .vehicles(id, query: query)
        case is Species.Type: self = .species(id, query: query)
        case is Planet.Type: self = .planets(id, query: query)
        default: return nil
        }
    }
}
