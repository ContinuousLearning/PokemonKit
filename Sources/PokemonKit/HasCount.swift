//
//  File.swift
//  
//
//  Created by Nityananda Zbil on 22.05.20.
//

internal protocol HasCount {
    var count: Int { get }
}

extension NamedAPIResourceList: HasCount { }
extension APIResourceList: HasCount { }
