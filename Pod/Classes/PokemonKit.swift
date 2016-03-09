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

import PromiseKit

// MARK: Constant

let baseURL: String = "http://pokeapi.co/api/v2"

// MARK: Classes

public class PKMEvolutionTrigger: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMLanguageObject]?
    public var pokemonSpecies: PKMBaseObject?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        pokemonSpecies <- map["pokemon_species"]
    }
}


public class PKMEvolutionDetail: Mappable {
    public var item: PKMBaseObject?
    public var trigger: PKMBaseObject?
    public var gender: PKMBaseObject?
    public var heldItem: PKMBaseObject?
    public var knownMove: PKMBaseObject?
    public var knownMoveType: PKMBaseObject?
    public var location: PKMBaseObject?
    public var minLevel: Int?
    public var minHappiness: Int?
    public var minBeauty: Int?
    public var minAffection: Int?
    public var needsOverworldRain: Bool?
    public var partySpecies: PKMBaseObject?
    public var partyType: PKMBaseObject?
    public var relativePhysicalStats: Int?
    public var timeOfDay: String?
    public var tradeSpecies: PKMBaseObject?
    public var turnUpsideDown: Bool?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        item <- map["item"];
        trigger <- map["trigger"];
        gender <- map["gender"];
        heldItem <- map["held_item"];
        knownMove <- map["known_move"];
        knownMoveType <- map["known_move_type"];
        location <- map["location"];
        minLevel <- map["min_level"];
        minHappiness <- map["min_happiness"];
        minBeauty <- map["min_beauty"];
        minAffection <- map["min_affection"];
        needsOverworldRain <- map["needs_overworld_rain"];
        partySpecies <- map["party_species"];
        partyType <- map["party_type"];
        relativePhysicalStats <- map["relative_physical_stats"];
        timeOfDay <- map["time_of_day"];
        tradeSpecies <- map["trade_species"];
        turnUpsideDown <- map["turn_upside_down"];
    }
}

/*
is_baby	Whether or not this link is for a baby Pokémon. This would only ever be true on the base link.	boolean
species	The Pokémon species at this point in the evolution chain	NamedAPIResource (PokemonSpecies)
evolution_details	All details regarding the specific details of the referenced Pokémon species evolution	EvolutionDetail
evolves_to	A List of chain objects.	list ChainLink
*/
public class PKMClainLink: Mappable {
    public var isBaby: Bool?
    public var species: PKMBaseObject?
    public var evolutionDetails: PKMEvolutionDetail?
    public var evolvesTo: [PKMClainLink]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        isBaby <- map["is_baby"]
        species <- map["species"]
        evolutionDetails <- map["evolution_details"]
        evolvesTo <- map["evolves_to"]
    }
}

/*
id	The identifier for this evolution chain resource	integer
baby_trigger_item	The item that a Pokémon would be holding when mating that would trigger the egg hatching a baby Pokémon rather than a basic Pokémon	NamedAPIResource (Item)
chain	The base chain link object. Each link contains evolution details for a Pokémon in the chain. Each link references the next Pokémon in the natural evolution order.	ChainLink

*/
public class PKMEvolutionChain: Mappable {
    public var id: Int?
    public var babyTriggerItem: PKMBaseObject?
    public var chain: PKMClainLink?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        babyTriggerItem <- map["baby_trigger_item"]
        chain <- map["chain"]
    }
}

public class PKMEncounterConditionValue: Mappable {
    
    /// The identifier for this encounter condition value resource
    public var id: Int?
    
    /// The name for this encounter condition value resource
    public var name: String?
    
    /// The condition this encounter condition value pertains to
    public var condition: [PKMBaseObject]?
    
    /// The name of this encounter condition value listed in different languages
    public var names: [PKMLanguageObject]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["flavor_text"]
        name <- map["name"]
        condition <- map["condition"]
        names <- map["names"]
    }
}

public class PKMEncounterCondition: Mappable {
    public var id: Int?
    public var name: String?
    public var values: [PKMBaseObject]?
    public var names: [PKMLanguageObject]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["flavor_text"]
        name <- map["name"]
        values <- map["values"]
        names <- map["names"]
    }
}

public class PKMEncounterMethod: Mappable {
    public var id: Int?
    public var name: String?
    public var order: Int?
    public var names: [PKMLanguageObject]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["flavor_text"]
        name <- map["name"]
        order <- map["order"]
        names <- map["names"]
    }
}

public class PKMSuperContestEffect: Mappable {
    public var id: Int?
    public var appeal: String?
    public var flavorTextEntries: [PKMFlavorText]?
    public var moves: [PKMBaseObject]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["flavor_text"]
        appeal <- map["appeal"]
        flavorTextEntries <- map["flavor_text_entries"]
        moves <- map["moves"]
    }
}

public class PKMFlavorText: Mappable {
    public var flavorText: String?
    public var language: PKMLanguageObject?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        flavorText <- map["flavor_text"]
        language <- map["language"]
    }
}

public class PKMEffectEntry: Mappable {
    public var effect: String?
    public var language: PKMLanguageObject?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        effect <- map["effect"]
        language <- map["language"]
    }
}

public class PKMContestEffect: Mappable {
    public var id: Int?
    public var appeal: String?
    public var jam: Int?
    public var effectEntries: [PKMEffectEntry]?
    public var flavorTextEntries: [PKMFlavorText]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        appeal <- map["appeal"]
        jam <- map["jam"]
        effectEntries <- map["effect_entries"]
        flavorTextEntries <- map["flavor_text_entries"]
    }
}

public class PKMContestType: Mappable {
    public var id: Int?
    public var name: String?
    public var berryFlavor: PKMBaseObject?
    public var names: [PKMLanguageObject]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        berryFlavor <- map["berry_flavor"]
        names <- map["results"]
    }
}

public class PKMPagedObject: Mappable{
    public var count: Int?
    public var next: String?
    public var previous: String?
    public var results: [PKMBaseObject]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        count <- map["count"]
        next <- map["next"]
        previous <- map["previous"]
        results <- map["results"]
    }
}

public class PKMLanguageObject: Mappable{
    public var name: String?
    public var language: PKMBaseObject?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        name <- map["name"]
        language <- map["language"]
    }
}

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

public class PKMBerryFlavourMap: Mappable{
    public var potency: Int?
    public var flavor: PKMBaseObject?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        potency <- map["potency"]
        flavor <- map["flavor"]
    }
}

public class PKMBerryFlavour: Mappable{
    public var id: Int?
    public var name: String?
    public var berries: [PKMFlavourBerryMap]?
    public var contestType: PKMBaseObject?
    public var names:[PKMLanguageObject]?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        berries <- map["berries"]
        contestType <- map["contest_type"]
        names <- map["names"]
    }
}

public class PKMFlavourBerryMap: Mappable {
    public var potency: Int?
    public var berry: PKMBaseObject?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        potency <- map["potency"]
        berry <- map["berry"]
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
    public var flavors: [PKMBerryFlavourMap]?
    public var item: PKMBaseObject?
    public var naturalGiftType: PKMBaseObject?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        growthTime <- map["growth_time"]
        maxHarvest <- map["max_harvest"]
        naturalGiftPower <- map["natural_gift_power"]
        size <- map["size"]
        smoothness <- map["smoothness"]
        soilDryness <- map["soil_dryness"]
        firmness <- map["firmness"]
        flavors <- map["flavors"]
        item <- map["item"]
        naturalGiftType <- map["natural_gift_type"]
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

public func fetchBerryList() -> Promise<PKMPagedObject>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/berry"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    };
}

public func fetchBerry(berryId: String) -> Promise<PKMBerry>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/berry/" + berryId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMBerry, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchBerryFirmnessList() -> Promise<PKMPagedObject>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/berry-firmness"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchBerryFirmness(berryFirmnessId: String) -> Promise<PKMBerryFirmness>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/berry-firmness/" + berryFirmnessId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMBerryFirmness, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}


public func fetchBerryFlavours() -> Promise<PKMPagedObject>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/berry-flavor"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchBerryFlavour(berryFlavourId: String) -> Promise<PKMBerryFlavour>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/berry-flavor/" + berryFlavourId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMBerryFlavour, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchContestList() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/contest-type"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchContestType(contestTypeId: String) -> Promise<PKMContestType>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/contest-type/" + contestTypeId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMContestType, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchContestEffects() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/contest-effect"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchContestEffect(contestEffectId: String) -> Promise<PKMContestEffect>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/contest-effect/" + contestEffectId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMContestEffect, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchSuperContestEffects() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/contest-effect"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchSuperContestEffect(superContestEffectId: String) -> Promise<PKMSuperContestEffect>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/super-contest-effect/" + superContestEffectId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMSuperContestEffect, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchEncounterMethods() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-method"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchEncounterMethod(encounterMethodId: String) -> Promise<PKMEncounterMethod>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-method/" + encounterMethodId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMEncounterMethod, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchEncounterConditions() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-condition"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchEncounterCondition(encounterConditionId: String) -> Promise<PKMEncounterMethod>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-condition/" + encounterConditionId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMEncounterMethod, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchEncounterConditionValues() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-condition-value"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchEncounterConditionValue(encounterConditionValueId: String) -> Promise<PKMEncounterConditionValue>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-condition-value/" + encounterConditionValueId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMEncounterConditionValue, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchEvolutionChains() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/evolution-chain"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchEvolutionChain(evolutionChainId: String) -> Promise<PKMEvolutionChain>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/evolution-chain/" + evolutionChainId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMEvolutionChain, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchEvolutionTriggers() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/evolution-trigger"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchEvolutionTrigger(evolutionTriggerId: String) -> Promise<PKMEvolutionTrigger>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/evolution-trigger/" + evolutionTriggerId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMEvolutionTrigger, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}