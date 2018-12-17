//
//  Vader.swift
//  SwiftVaderExample
//
//  Created by James Rochabrun on 11/25/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

class Vader: GenericAPI {
    
    var session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    public convenience init() {
        self.init(configuration: .default)
    }
    
    private func fetch<T: Decodable>(with request: URLRequest, completion: @escaping (Result<T?, APIError>) -> Void) {
        fetch(with: request, decode: { json -> T? in
            guard let resource = json as? T else { return nil }
            return resource
        }, completion: completion)
    }
    
    public func get<T: Resource>(_ value: T.Type, wookiee: Bool = false, completion: @escaping (Result<T?, APIError>) -> Void) {
        
        guard let decodedAssociatedType = value.T.self as? Decodable.Type else { return }
        guard let resource = VaderResource(T: decodedAssociatedType, id: nil, query: nil, wookiee: wookiee) else { return }
        let request = resource.request
        self.fetch(with: request, completion: completion)
    }
    
    public func search<T: Decodable>(_ value: T.Type, withID id: String, wookiee: Bool = false, completion: @escaping (Result<T?, APIError>) -> Void)  {
        
        guard let resource = VaderResource(T: value, id: id, query: nil, wookiee: wookiee) else { return }
        let request = resource.request
        self.fetch(with: request, completion: completion)
    }
    
    public func search<T: Resource>(_ value: T.Type, query: String, wookiee: Bool = false, completion: @escaping (Result<T?, APIError>) -> Void)  {
        
        guard let decodedAssociatedType = value.T.self as? Decodable.Type else { return }
        guard let resource = VaderResource(T: decodedAssociatedType, id: nil, query: query, wookiee: wookiee) else { return }
        let request = resource.request
        self.fetch(with: request, completion: completion)
    }
}
