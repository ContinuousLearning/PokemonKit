//
//  PokemonKit.swift
//  Pods
//
//  Created by Yeung Yiu Hung on 28/2/2016.
//
//

import Foundation
import Alamofire

// MARK: Constant

let baseURL: String = "http://pokeapi.co/api/v2"

@objc public enum PokemonKitError: Int, ErrorType {
    case BerryListError, B, C
}

// MARKL Model Classes

// MARK: Functions

/**
 Fetching Berry List for pokeapi
 
 - parameter completion: result array
 - parameter failure:    error description
 */
public func fetchBerryList(completion: (result: NSArray) -> Void, failure: (error: NSError) -> Void){
    let URL = baseURL + "/berry"
    Alamofire.request(.GET, URL).responseJSON { response in
        
        if let JSON = response.result.value {
            guard let result = JSON as? NSArray
                else{
                    failure(error: NSError(domain: "PokemonKit", code: 0, userInfo: [NSLocalizedDescriptionKey: "Berry List Error"]))
                    return
            }
            completion(result: result)
        }
    }
}


