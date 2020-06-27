//
//  File.swift
//  
//
//  Created by Nityananda Zbil on 27.06.20.
//

import Foundation

internal enum Exception: String, Error {
    case responseNotOK
    case statusCodeNotOK
    case missingDataAndError
}

internal extension URLSession {
    func jsonTask<T: Decodable>(with url: URL, completion: @escaping (Result<T, Error>) -> Void) {
        let task = self.dataTask(with: url) { (data, response, error) in
            guard let code = (response as? HTTPURLResponse)?.statusCode else {
                return completion(.failure(Exception.responseNotOK))
            }
            
            guard code == 200 else {
                return completion(.failure(Exception.statusCodeNotOK))
            }
            
            switch (data, error) {
            case (_, let error?):
                completion(.failure(error))
            case (let data?, _):
                let decoder = JSONDecoder()
                do {
                    let decoded = try decoder.decode(T.self, from: data)
                    completion(.success(decoded))
                } catch {
                    completion(.failure(error))
                }
            case (.none, .none):
                completion(.failure(Exception.missingDataAndError))
            }
        }
        
        task.resume()
    }
}
