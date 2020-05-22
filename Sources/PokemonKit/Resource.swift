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

typealias CompletionHandler = (Data?, URLResponse?, Error?) -> Void

public extension Resource where Self: Decodable {
    static func fetch(id: String, completion: @escaping (Result<Self, Error>) -> Void) {

        
        let completionHandler: CompletionHandler = { (data, _, error) in
            switch (data, error) {
            case (_, let error?):
                completion(.failure(error))
            case (let data?, _):
                let decoder = JSONDecoder()
                do {
                    let decoded = try decoder.decode(Self.self, from: data)
                    completion(.success(decoded))
                } catch {
                    completion(.failure(error))
                }
            case (.none, .none):
                fatalError("Impossible")
            }
        }
        
        
        let url = URL(string: "\(_baseURL)\(Self.path)\(id)/")!
        
        let task = URLSession.shared.dataTask(with: url,
                                              completionHandler: completionHandler)
        task.resume()
    }
}

extension Resource where List: Decodable {
    static func fetchList(completion: @escaping (Result<List, Error>) -> Void) {

        
        let completionHandler: CompletionHandler = { (data, _, error) in
            switch (data, error) {
            case (_, let error?):
                completion(.failure(error))
            case (let data?, _):
                let decoder = JSONDecoder()
                do {
                    let decoded = try decoder.decode(List.self, from: data)
                    completion(.success(decoded))
                } catch {
                    completion(.failure(error))
                }
            case (.none, .none):
                fatalError("Impossible")
            }
        }
        
        
        let url = URL(string: "\(_baseURL)\(Self.path)")!
        
        let task = URLSession.shared.dataTask(with: url,
                                              completionHandler: completionHandler)
        task.resume()
    }
}

extension Resource where List: Decodable & HasCount {
    static func fetchCount(completion: @escaping (Result<Int, Error>) -> Void) {

        
        let completionHandler: CompletionHandler = { (data, _, error) in
            switch (data, error) {
            case (_, let error?):
                completion(.failure(error))
            case (let data?, _):
                let decoder = JSONDecoder()
                do {
                    let decoded = try decoder.decode(List.self, from: data)
                    completion(.success(decoded.count))
                } catch {
                    completion(.failure(error))
                }
            case (.none, .none):
                fatalError("Impossible")
            }
        }
        
        
        let url = URL(string: "\(_baseURL)\(Self.path)")!
        
        let task = URLSession.shared.dataTask(with: url,
                                              completionHandler: completionHandler)
        task.resume()
    }
}
