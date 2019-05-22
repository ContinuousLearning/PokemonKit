// PokemonKit 2019

import Foundation
import PromiseKit

public class Provider {
    typealias CompletionHandler = (Data?, URLResponse?, Error?) -> Void

    public static let shared = Provider()

    private static let decoder = JSONDecoder()

    private init() { }

    // MARK: Public
    public func fetch<T: Decodable>(target: PokeAPI) -> Promise<T> {
        return self.fetch(url: target.url)
    }

    public func fetch<T: Decodable>(url: URL) -> Promise<T> {
        return self.decode(self.request(url: url))
    }

    // MARK: Private
    private func request(url: URL) -> Promise<Data> {
        return Promise<Data> { seal in
            let completionHandler: CompletionHandler = { (data, _, error) in
                switch (data, error) {
                case (_, let error?):
                    seal.reject(error)
                case (let data?, _):
                    seal.fulfill(data)
                case (.none, .none):
                    fatalError("Impossible")
                }
            }

            let task = URLSession.shared.dataTask(with: url,
                                                  completionHandler: completionHandler)
            task.resume()
        }
    }

    private func decode<T: Decodable>(_ promise: Promise<Data>) -> Promise<T> {
        return promise.map({ (response) in
            let object = try Provider.decoder.decode(T.self, from: response)
            return object
        })
    }
}
