//
//  File.swift
//  
//
//  Created by Nityananda Zbil on 22.05.20.
//

protocol HasCount {
    var count: Int { get }
}

extension PKMNamedAPIResourceList: HasCount { }
extension PKMAPIResourceList: HasCount { }
