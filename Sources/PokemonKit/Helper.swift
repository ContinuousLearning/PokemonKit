// PokemonKit 2019

import Foundation

internal typealias CompletionHandler = (Data?, URLResponse?, Error?) -> Void

internal func fetch<D: Decodable>(api: PokeAPI, completion: @escaping (Swift.Result<D, Error>) -> Void) {
    let completionHandler: CompletionHandler = { (data, _, error) in
        switch (data, error) {
        case (_, let error?):
            completion(.failure(error))
        case (let data?, _):
            let decoder = JSONDecoder()
            do {
                let decoded = try decoder.decode(D.self, from: data)
                completion(.success(decoded))
            } catch {
                completion(.failure(error))
            }
        case (.none, .none):
            fatalError("Impossible")
        }
    }

    let task = URLSession.shared.dataTask(with: api.url,
                                          completionHandler: completionHandler)
    task.resume()
}
