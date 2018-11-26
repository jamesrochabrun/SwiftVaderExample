//
//  VaderResource.swift
//  SwiftVaderExample
//
//  Created by James Rochabrun on 11/25/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

public enum VaderResource {
    
    case people(_ id: String?)
    case films(_ id: String?)
    case planets(_ id: String?)
    case species(_ id: String?)
    case starships(_ id: String?)
    case vehicles(_ id: String?)
}

extension VaderResource: Endpoint {
    
    var base: String {
        return "https://swapi.co"
    }
    
    var path: String {
        switch self {
        case .people(let id): return "/api/people/\(id ?? "")"
        case .films(let id): return "/api/films/\(id ?? "")"
        case .planets(let id): return "/api/planets/\(id ?? "")"
        case .species(let id): return "/api/species/\(id ?? "")"
        case .starships(let id): return "/api/starships/\(id ?? "")"
        case .vehicles(let id): return "/api/vehicles/\(id ?? "")"
        }
    }
    
    var queryItems: [URLQueryItem] {
        return []
    }
    
    init?(T: Decodable.Type, id: String?) {
        switch T {
        case is Film.Type: self = .films(id)
        case is People.Type: self = .people(id)
        case is Starship.Type: self = .starships(id)
        case is Vehicle.Type: self = .vehicles(id)
        case is Species.Type: self = .species(id)
        case is Planet.Type: self = .planets(id)
        default: return nil
        }
    }
}
