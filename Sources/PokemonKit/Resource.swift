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
    
    /// Fetches the resource identified by id.
    /// - Parameters:
    ///   - id: Can be a number, e.g., "1", or a name, e.g., "alpha-sapphire".
    ///   - completion: Receive the result, either the resource or an error, inside a closure.
    static func fetch(id: String, completion: @escaping (Result<Self, Error>) -> Void) {
        let url = URL(string: "\(baseURL)\(Self.path)\(id)/")!
        URLSession.shared.jsonTask(with: url, completion: completion)
    }
    
    /// Captures the id and returns a closure, that takes a closures as its parameter.
    ///
    /// Rationale: Compare `Future(Version.fetch(id: "alpha-sapphire"))`
    /// with `Future({ c in Version.fetch(id: "alpha-sapphire", completion: c)})`.
    /// The former is arguably nicer.
    /// - Parameter id: Can be a number, e.g., "1", or a name, e.g., "alpha-sapphire".
    /// - Returns: A closure, that takes a closure to receive the result, either the resource or an error.
    static func fetch(id: String) -> (@escaping (Result<Self, Error>) -> Void) -> Void {
        return { handler in Self.fetch(id: id, completion: handler) }
    }
}

public extension Resource where List: Decodable {
    
    /// Fetches the list of a resouce.
    /// - Parameter completion: Receive the result, either the list or an error, inside a closure.
    static func fetchList(completion: @escaping (Result<List, Error>) -> Void) {
        let url = URL(string: "\(baseURL)\(Self.path)")!
        URLSession.shared.jsonTask(with: url, completion: completion)
    }
}
