//
//  PokemonKit.swift
//  Pods
//
//  Created by Yeung Yiu Hung on 28/2/2016.
//
//

import Foundation
import Alamofire
import ObjectMapper
import AlamofireObjectMapper

// MARK: Constant

let baseURL: String = "http://pokeapi.co/api/v2"

@objc public enum PokemonKitError: Int, ErrorType {
    case BerryListError, B, C
}

// MARK: Classes

public class PKMBaseObject: Mappable{
    public var name: String?
    public var url: String?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        name <- map["name"]
        url <- map["url"]
    }
}

public class PKMBerryFlavour: Mappable{
    public var potency: Int?
    public var flavor: PKMBaseObject?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        potency <- map["potency"]
        flavor <- map["flavor"]
    }
}

public class PKMBerry: Mappable{
    public var id: Int?
    public var name: String?
    public var growthTime: Int?
    public var maxHarvest: Int?
    public var naturalGiftPower: Int?
    public var size: Int?
    public var smoothness: Int?
    public var soilDryness: Int?
    public var firmness: PKMBaseObject?
    public var flavors: [PKMBerryFlavour]?
    public var item: PKMBaseObject?
    public var naturalGiftType: PKMBaseObject?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        growthTime <- map["growth_time"]
        maxHarvest <- map["max_harvest"]
        naturalGiftPower <- map["natural-gift-power"]
        size <- map["size"]
        smoothness <- map["smoothness"]
        soilDryness <- map["soil-dryness"]
        firmness <- map["firmness"]
        flavors <- map["flavors"]
        item <- map["item"]
        naturalGiftType <- map["natural-gift-type"]
    }
}

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

public func fetchBerry(berryId: String, completion: (result: PKMBerry) -> Void, failure: (error: NSError) -> Void){
    let URL = baseURL + "/berry/" + berryId
    
    Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMBerry, NSError>) in
        
        if (response.result.isSuccess) {
            completion(result: response.result.value!)
        }else{
            failure(error: response.result.error!)
        }

    }
}


