//
//  File.swift
//  
//
//  Created by Nityananda Zbil on 22.05.20.
//

import Foundation

public protocol Resource {
    associatedtype List
    static var path: String { get }
}

public extension Resource where Self: Decodable {
    static func fetch(id: String, completion: @escaping (Result<Self, Error>) -> Void) {
        let url = URL(string: "\(_baseURL)\(Self.path)\(id)/")!
        URLSession.shared.jsonTask(with: url, completion: completion)
    }
}

internal extension Resource where Self: Decodable {
    static func fetch(id: String) -> (@escaping (Result<Self, Error>) -> Void) -> Void {
        return { handler in Self.fetch(id: id, completion: handler) }
    }
}

public extension Resource where List: Decodable {
    static func fetchList(completion: @escaping (Result<List, Error>) -> Void) {
        let url = URL(string: "\(_baseURL)\(Self.path)")!
        URLSession.shared.jsonTask(with: url, completion: completion)
    }
}
