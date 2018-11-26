//
//  Result.swift
//  SwiftVaderExample
//
//  Created by James Rochabrun on 11/25/18.
//  Copyright © 2018 James Rochabrun. All rights reserved.
//

import Foundation

public enum Result<T, U> where U: Error  {
    case success(T)
    case failure(U)
}
