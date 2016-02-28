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

public class PKMBerryName: Mappable {
    var language: PKMBaseObject?
    var name: String?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        language <- map["language"]
        name <- map["name"]
    }
}

public class PKMBerryFirmness: Mappable {
    public var id: Int?
    public var berries: [PKMBaseObject]?
    public var names: [PKMBerryName]?
    public var name: String?
    
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        berries <- map["berries"]
        names <- map["names"]
        name <- map["name"]
    }
}

// MARK: -
// MARK: Functions

/**
 Fetching All Berry List
 
 - parameter completion: result array
 - parameter failure:    error description
 */
public func fetchBerryList(completion: (result: NSArray) -> Void, failure: (error: NSError) -> Void){
    let URL = baseURL + "/berry"
    
    Alamofire.request(.GET, URL).responseArray { (response: Response<[PKMBaseObject], NSError>) in
        if (response.result.isSuccess) {
            completion(result: response.result.value!)
        }else{
            failure(error: response.result.error!)
        }
    }
}


/**
 Fetching Berry Information
 
 - parameter berryId:    Id for berry
 - parameter completion: complete with PKMBerry object
 - parameter failure:    error description
 */
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

/**
 Fetching All Berry firmness List
 
 - parameter completion: result array
 - parameter failure:    error description
 */
public func fetchBerryFirmnessList(completion: (result: NSArray) -> Void, failure: (error: NSError) -> Void){
    let URL = baseURL + "/berry-firmness"
    
    Alamofire.request(.GET, URL).responseArray { (response: Response<[PKMBaseObject], NSError>) in
        if (response.result.isSuccess) {
            completion(result: response.result.value!)
        }else{
            failure(error: response.result.error!)
        }
    }
}

/**
 Fetching berry firmness information
 
 - parameter berryFirmnessId: Id for Berry Firmness
 - parameter completion:      complete with PKMBerryFirmness
 - parameter failure:         error description
 */
public func fetchBerryFirmness(berryFirmnessId: String, completion: (result: PKMBerryFirmness) -> Void, failure: (error: NSError) -> Void){
    let URL = baseURL + "/berry-firmness/" + berryFirmnessId
    
    Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMBerryFirmness, NSError>) in
        
        if (response.result.isSuccess) {
            completion(result: response.result.value!)
        }else{
            failure(error: response.result.error!)
        }
        
    }
}


