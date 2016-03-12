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

/*
is_hidden	Whether or not this a hidden ability for the referenced Pokémon	boolean
slot	Pokémon have 3 ability 'slots' which hold references to possible abilities they could have. This is the slot of this ability for the referenced pokemon.	integer
pokemon	The Pokémon this ability could belong to	NamedAPIResource (Pokemon)
*/
public class PKMAbilityPokemon: Mappable {
    public var isHidden: Bool?
    public var slot: Int?
    public var pokemon: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        isHidden <- map["is_hidden"]
        slot <- map["slot"]
        pokemon <- map["pokemon"]
    }
}


/*
id	The identifier for this ability resource	integer
name	The name for this ability resource	string
is_main_series	Whether or not this ability originated in the main series of the video games	boolean
generation	The generation this ability originated in	NamedAPIResource (Generation)
names	The name of this ability listed in different languages	list Name
effect_entries	The effect of this ability listed in different languages	list VerboseEffect
effect_changes	The list of previous effects this ability has had across version groups	list AbilityEffectChange
flavor_text_entries	The flavor text of this ability listed in different languages	list VersionGroupFlavorText
pokemon	A list of Pokémon that could potentially have this ability	list AbilityPokemon
*/
public class PKMAbility: Mappable {
    public var id: Int?
    public var name: String?
    public var isMainSeries: Bool?
    public var generation: PKMNamedAPIResource?
    public var names: [PKMName]?
    public var effectEntries: [PKMVerboseEffect]?
    public var effectChanges: [PKMAbilityEffectChange]?
    public var flavorTextEntries: [PKMVersionGroupFlavorText]?
    public var pokemon: [PKMAbilityPokemon]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        isMainSeries <- map["is_main_series"]
        generation <- map["generation"]
        names <- map["names"]
        effectEntries <- map["effect_entries"]
        effectChanges <- map["effect_changes"]
        flavorTextEntries <- map["flavor_text_entries"]
        pokemon <- map["pokemon"]
    }
}


/*
id	The identifier for this region resource	integer
name	The name for this region resource	string
locations	A list of locations that can be found in this region	NamedAPIResource (Location)
main_generation	The generation this region was introduced in	NamedAPIResource (Generation)
names	The name of this region listed in different languages	list Name
pokedexes	A list of pokédexes that catalogue Pokémon in this region	list NamedAPIResource (Pokedex)
version_groups	A list of version groups where this region can be visited	list NamedAPIResource (VersionGroup)
*/
public class PKMRegion: Mappable {
    public var id: Bool?
    public var name: String?
    public var locations: [PKMNamedAPIResource]?
    public var mainGeneration: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    public var pokedexes: [PKMNamedAPIResource]?
    public var versionGroups: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        locations <- map["locations"]
        mainGeneration <- map["main_generation"]
        names <- map["names"]
        pokedexes <- map["pokedexes"]
        versionGroups <- map["version_groups"]
    }
}


/*
base_score	The base score given to the player when this Pokémon is caught during a pal park run	integer
rate	The base rate for encountering this Pokémon in this pal park area	integer
pokemon_species	The Pokémon species being encountered	NamedAPIResource (PokemonSpecies)
*/
public class PKMPalParkEncounterSpecies: Mappable {
    public var baseScore: Int?
    public var rate: Int?
    public var pokemonSpecies: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        baseScore <- map["base_score"]
        rate <- map["rate"]
        pokemonSpecies <- map["pokemon_species"]
    }
}


/*
id	The identifier for this pal park area resource	integer
name	The name for this pal park area resource	string
names	The name of this pal park area listed in different languages	list Name
pokemon_encounters	A list of Pokémon encountered in thi pal park area along with details	list PalParkEncounterSpecies
*/
public class PKMPalParkArea: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMName]?
    public var pokemonEncounters: [PKMPalParkEncounterSpecies]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        pokemonEncounters <- map["pokemon_encounters"]
    }
}


/*
id	The identifier for this location resource	integer
name	The name for this location resource	string
region	The region this location can be found in	NamedAPIResource (Region)
names	The name of this language listed in different languages	list Name
game_indices	A list of game indices relevent to this location by generation	list GenerationGameIndex
areas	Areas that can be found within this location	APIResource (LocationArea)
*/
public class PKMLocation: Mappable {
    public var id: Int?
    public var name: String?
    public var region: PKMNamedAPIResource?
    public var names: [PKMName]?
    public var gameIndices: [PKMGenerationGameIndex]?
    public var areas: PKMAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        region <- map["region"]
        names <- map["names"]
        gameIndices <- map["game_indices"]
        areas <- map["areas"]
    }
}


/*
min_level	The lowest level the Pokémon could be encountered at	integer
max_level	The highest level the Pokémon could be encountered at	integer
condition_values	A list of condition values that must be in effect for this encounter to occur	list NamedAPIResource (EncounterConditionValue)
chance	percent chance that this encounter will occur	integer
method	The method by which this encounter happens	NamedAPIResource (EncounterMethod)
*/
public class PKMEncounter: Mappable {
    public var minLevel: Int?
    public var maxLevel: Int?
    public var conditionValues: [PKMNamedAPIResource]?
    public var chance: Int?
    public var method: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        minLevel <- map["min_level"]
        maxLevel <- map["max_level"]
        conditionValues <- map["condition_values"]
        chance <- map["chance"]
        method <- map["method"]
    }
}


/*
version	The game version this encounter happens in	NamedAPIResource (Version)
max_chance	The total percentage of all encounter potential	integer
encounter_details	A list of encounters and their specifics	list Encounter
*/
public class PKMVersionEncounterDetail: Mappable {
    public var version: PKMNamedAPIResource?
    public var maxChance: Int?
    public var encounterDetails: [PKMEncounter]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        version <- map["version"]
        maxChance <- map["max_chance"]
        encounterDetails <- map["encounter_details"]
    }
}


/*
pokemon	The Pokémon being encountered	NamedAPIResource (Pokemon)
version_details	A list of versions and encounters with Pokémon that might happen in the referenced location area	list VersionEncounterDetail
*/
public class PKMPokemonEncounter: Mappable {
    public var pokemon: PKMNamedAPIResource?
    public var versionDetails: [PKMVersionEncounterDetail]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        pokemon <- map["pokemon"]
        versionDetails <- map["version_details"]
    }
}


/*
rate	The chance of an encounter to occur.	integer
version	The version of the game in which the encounter can occur with the given chance.	NamedAPIResource (Version)
*/
public class PKMEncounterVersionDetails: Mappable {
    public var rate: Int?
    public var version: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        rate <- map["rate"]
        version <- map["version"]
    }
}


/*
encounter_method	The method in which Pokémon may be encountered in an area.	EncounterMethod
version_details	The chance of the encounter to occur on a version of the game.	list EncounterVersionDetails
*/
public class PKMEncounterMethodRate: Mappable {
    public var encounterEethod: PKMEncounterMethod?
    public var versionDetails: [PKMEncounterVersionDetails]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        encounterEethod <- map["encounter_method"]
        versionDetails <- map["version_details"]
    }
}


/*
id	The identifier for this location resource	integer
name	The name for this location resource	string
game_index	The internal id of an API resource within game data	integer
encounter_method_rates	A list of methods in which Pokémon may be encountered in this area and how likely the method will occur depending on the version of the game	list EncounterMethodRate
location	The region this location can be found in	NamedAPIResource (Region)
names	The name of this location area listed in different languages	list Name
pokemon_encounters	A list of Pokémon that can be encountered in this area along with version specific details about the encounter	list PokemonEncounter
*/
public class PKMLocationArea: Mappable {
    public var id: Int?
    public var name: String?
    public var gameIndex: Int?
    public var encounterMethodRates: [PKMEncounterMethodRate]?
    public var location: PKMNamedAPIResource?
    public var names: [PKMName]?
    public var pokemonEncounters: [PKMPokemonEncounter]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        gameIndex <- map["game_index"]
        encounterMethodRates <- map["encounter_method_rates"]
        location <- map["location"]
        names <- map["names"]
        pokemonEncounters <- map["pokemon_encounters"]
    }
}


/*
id	The identifier for this move target resource	integer
name	The name for this move target resource	string
descriptions	The description of this move target listed in different languages	list Description
moves	A list of moves that that are directed at this target	list NamedAPIResource (Move)
names	The name of this move target listed in different languages	list Name
*/
public class PKMMoveTarget: Mappable {
    public var id: Int?
    public var name: String?
    public var descriptions: [PKMDescription]?
    public var moves: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        descriptions <- map["descriptions"]
        moves <- map["moves"]
        names <- map["names"]
    }
}


/*
id	The identifier for this move learn method resource	integer
name	The name for this move learn method resource	string
descriptions	The description of this move learn method listed in different languages	list Description
names	The name of this move learn method listed in different languages	list Name
version_groups	A list of version groups where moves can be learned through this method	list NamedAPIResource (VersionGroup)
*/
public class PKMMoveLearnMethod: Mappable {
    public var id: Int?
    public var name: String?
    public var descriptions: [PKMDescription]?
    public var names: [PKMName]?
    public var versionGroups: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        descriptions <- map["descriptions"]
        names <- map["names"]
        versionGroups <- map["version_groups"]
    }
}


/*
id	The identifier for this move damage class resource	integer
name	The name for this move damage class resource	string
descriptions	The description of this move damage class listed in different languages	list Description
moves	A list of moves that fall into this damage class	list NamedAPIResource (Move)
names	The name of this move damage class listed in different languages	list Name
*/
public class PKMMoveDamageClass: Mappable {
    public var id: Int?
    public var name: String?
    public var descriptions: [PKMDescription]?
    public var moves: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        descriptions <- map["descriptions"]
        moves <- map["moves"]
        names <- map["names"]
    }
}


/*
id	The identifier for this move category resource	integer
name	The name for this move category resource	string
moves	A list of moves that fall into this category	list NamedAPIResource (Move)
descriptions	The description of this move ailment listed in different languages	list Description
*/
public class PKMMoveCategory: Mappable {
    public var id: Int?
    public var name: String?
    public var moves: [PKMNamedAPIResource]?
    public var descriptions: [PKMDescription]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        moves <- map["moves"]
        descriptions <- map["descriptions"]
    }
}


/*
id	The identifier for this move battle style resource	integer
name	The name for this move battle style resource	string
names	The name of this move battle style listed in different languages	list Name
*/
public class PKMMoveBattleStyle: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
    }
}


/*
id	The identifier for this move ailment resource	integer
name	The name for this move ailment resource	string
moves	A list of moves that cause this ailment	list NamedAPIResource (Move)
names	The name of this move ailment listed in different languages	list Name
*/
public class PKMMoveAilment: Mappable {
    public var id: Int?
    public var name: String?
    public var moves: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        moves <- map["moves"]
        names <- map["names"]
    }
}


/*
change	The amount of change	integer
stat	The stat being affected	NamedAPIResource (Stat)
*/
public class PKMMoveStatChange: Mappable {
    public var change: Int?
    public var stat: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        change <- map["change"]
        stat <- map["stat"]
    }
}


/*
accuracy	The percent value of how likely this move is to be successful	integer
effect_chance	The percent value of how likely it is this moves effect will take effect	integer
power	The base power of this move with a value of 0 if it does not have a base power	integer
pp	Power points. The number of times this move can be used	integer
effect_entries	The effect of this move listed in different languages	list VerboseEffect
type	The elemental type of this move	NamedAPIResource (Type)
version_group	The version group in which these move stat values were in effect	NamedAPIResource (VersionGroup)
*/
public class PKMPastMoveStatValues: Mappable {
    public var accuracy: Int?
    public var effectChance: Int?
    public var power: Int?
    public var pp: Int?
    public var effectEntries: [PKMVerboseEffect]?
    public var type: PKMNamedAPIResource?
    public var versionGroup: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        accuracy <- map["accuracy"]
        effectChance <- map["effect_chance"]
        power <- map["power"]
        pp <- map["pp"]
        effectEntries <- map["effect_entries"]
        type <- map["type"]
        versionGroup <- map["version_group"]
    }
}


/*
ailment	The status ailment this move inflicts on its target	NamedAPIResource (MoveAilment)
category	The category of move this move falls under, e.g. damage or ailment	NamedAPIResource (Move)
min_hits	The minimum number of times this move hits. Null if it always only hits once.	integer
max_hits	The maximum number of times this move hits. Null if it always only hits once.	integer
min_turns	The minimum number of turns this move continues to take effect. Null if it always only lasts one turn.	integer
max_turns	The maximum number of turns this move continues to take effect. Null if it always only lasts one turn.	integer
drain	HP drain (if positive) or Recoil damage (if negative), in percent of damage done	integer
healing	The amount of hp gained by the attacking pokemon, in percent of it's maximum HP	integer
crit_rate	Critical hit rate bonus	integer
ailment_chance	The likelyhood this attack will cause an ailment	integer
flinch_chance	The likelyhood this attack will cause the target pokemon to flinch	integer
stat_chance	The likelyhood this attack will cause a stat change in the target pokemon	integer
*/
public class PKMMoveMetaData: Mappable {
    public var ailment: PKMNamedAPIResource?
    public var category: PKMNamedAPIResource?
    public var minHits: Int?
    public var maxHits: Int?
    public var minTurns: Int?
    public var maxTurns: Int?
    public var drain: Int?
    public var healing: Int?
    public var critRate: Int?
    public var ailmentChance: Int?
    public var flinchEhance: Int?
    public var statChance: Int?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        ailment <- map["ailment"]
        category <- map["category"]
        minHits <- map["min_hits"]
        maxHits <- map["max_hits"]
        minTurns <- map["min_turns"]
        maxTurns <- map["max_turns"]
        drain <- map["drain"]
        healing <- map["healing"]
        critRate <- map["crit_rate"]
        ailmentChance <- map["ailment_chance"]
        flinchEhance <- map["flinch_chance"]
        statChance <- map["stat_chance"]
    }
}


/*
effect_entries	The previous effect of this ability listed in different languages	Effect
version_group	The version group in which the previous effect of this ability originated	NamedAPIResource (VersionGroup)
*/
public class PKMAbilityEffectChange: Mappable {
    public var effectEntries: PKMEffect?
    public var versionGroup: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        effectEntries <- map["effect_entries"]
        versionGroup <- map["version_group"]
    }
}


/*
use_before	A list of moves to use before this move	list NamedAPIResource (Move)
use_after	A list of moves to use after this move	list NamedAPIResource (Move)
*/
public class PKMContestComboDetail: Mappable {
    public var useBefore: [PKMNamedAPIResource]?
    public var useAfter: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        useBefore <- map["use_before"]
        useAfter <- map["use_after"]
    }
}

/*
normal	A detail of moves this move can be used before or after, granting additional appeal points in contests	list ContestComboDetail
super	A detail of moves this move can be used before or after, granting additional appeal points in super contests	list ContestComboDetail
*/
public class PKMContestComboSets: Mappable {
    public var normalMove: [PKMContestComboDetail]?
    public var superMove: [PKMContestComboDetail]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        normalMove <- map["normal"]
        superMove <- map["super"]
    }
}


/*
id	The identifier for this move resource	integer
name	The name for this move resource	string
accuracy	The percent value of how likely this move is to be successful	integer
effect_chance	The percent value of how likely it is this moves effect will happen	integer
pp	Power points. The number of times this move can be used	integer
priority	A value between -8 and 8. Sets the order in which moves are executed during battle. See Bulbapedia for greater detail.	integer
power	The base power of this move with a value of 0 if it does not have a base power	integer
contest_combos	A detail of normal and super contest combos that require this move	list ContestComboSets
contest_type	The type of appeal this move gives a Pokémon when used in a contest	NamedAPIResource (ContestType)

contest_effect	The effect the move has when used in a contest	NamedAPIResource (ContestEffect)
damage_class	The type of damage the move inflicts on the target, e.g. physical	NamedAPIResource (MoveDamageClass)
effect_entries	The effect of this move listed in different languages	list VerboseEffect
effect_changes	The list of previous effects this move has had across version groups of the games	list AbilityEffectChange
generation	The generation in which this move was introduced	NamedAPIResource (Generation)
meta	Metadata about this move	MoveMetaData
names	The name of this move listed in different languages	list Name
past_values	A list of move resource value changes across ersion groups of the game	list PastMoveStatValues
stat_changes	A list of stats this moves effects and how much it effects them	list MoveStatChange
super_contest_effect	The effect the move has when used in a super contest	APIResource (ContestEffect)
target	The type of target that will recieve the effects of the attack	NamedAPIResource (MoveTarget)
type	The elemental type of this move	NamedAPIResource (Type)
*/
public class PKMMove: Mappable {
    public var id: Int?
    public var name: String?
    public var accuracy: Int?
    public var effect_chance: Int?
    public var pp: Int?
    public var priority: Int?
    public var power: Int?
    public var contestCombos: [PKMContestComboSets]?
    public var contestType: PKMNamedAPIResource?
    
    public var contestEffect: PKMNamedAPIResource?
    public var damageClass: PKMNamedAPIResource?
    public var effectEntries: [PKMVerboseEffect]?
    public var effectChanges: [PKMAbilityEffectChange]?
    public var generation: PKMNamedAPIResource?
    public var meta: PKMMoveMetaData?
    public var pastValues: [PKMPastMoveStatValues]?
    public var statChanges: [PKMMoveStatChange]?
    public var superContestEffect: PKMAPIResource?
    public var target: PKMNamedAPIResource?
    public var type: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        accuracy <- map["accuracy"]
        effect_chance <- map["effect_chance"]
        pp <- map["pp"]
        priority <- map["priority"]
        power <- map["power"]
        contestCombos <- map["contest_combos"]
        contestType <- map["contest_type"]
        
        contestEffect <- map["contest_effect"]
        damageClass <- map["damage_class"]
        effectEntries <- map["effect_entries"]
        effectChanges <- map["effect_changes"]
        generation <- map["generation"]
        meta <- map["meta"]
        pastValues <- map["past_values"]
        statChanges <- map["stat_changes"]
        superContestEffect <- map["super_contest_effect"]
        target <- map["target"]
        type <- map["type"]
    }
}


/*
id	The identifier for this item pocket resource	integer
name	The name for this item pocket resource	string
categories	A list of item categories that are relevent to this item pocket	list NamedAPIResource (ItemCategory)
names	The name of this item pocket listed in different languages	list Name
*/
public class PKMItemPocket: Mappable {
    public var id: Int?
    public var name: String?
    public var categories: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        categories <- map["categories"]
        names <- map["names"]
    }
}


/*
effect	The localized effect text for an API resource in a specific language	string
language	The language this effect is in	NamedAPIResource (Language)
*/
public class PKMEffect: Mappable {
    public var effect: String?
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        effect <- map["effect"]
        language <- map["language"]
    }
}


/*
id	The identifier for this fling effect resource	integer
name	The name for this fling effect resource	string
effect_entries	The result of this fling effect listed in different languages	list Effect
items	A list of items that have this fling effect	list NamedAPIResource (Item)
*/
public class PKMItemFlingEffect: Mappable {
    public var id: Int?
    public var name: String?
    public var effectEntries: [PKMEffect]?
    public var items: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        effectEntries <- map["effect_entries"]
        items <- map["items"]
    }
}


/*
id	The identifier for this item category resource	integer
name	The name for this item category resource	string
items	A list of items that are a part of this category	list Item
names	The name of this item category listed in different languages	list Name
pocket	The pocket items in this category would be put in	NamedAPIResource (ItemPocket)
*/
public class PKMItemCategory: Mappable {
    public var id: Int?
    public var name: String?
    public var items: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    public var pocket: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        items <- map["items"]
        names <- map["names"]
        pocket <- map["pocket"]
    }
}


/*
id	The identifier for this item attribute resource	integer
name	The name for this item attribute resource	string
items	A list of items that have this attribute	list NamedAPIResource (Item)
names	The name of this item attribute listed in different languages	list Name
descriptions	The description of this item attribute listed in different languages	list Description
*/
public class PKMItemAttribute: Mappable {
    public var id: Int?
    public var name: String?
    public var items: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    public var descriptions: [PKMDescription]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        items <- map["items"]
        names <- map["names"]
        descriptions <- map["descriptions"]
    }
}


/*
effect	The localized effect text for an API resource in a specific language	string
short_effect	The localized effect text in brief	string
language	The language this effect is in	NamedAPIResource (Language)
*/
public class PKMVerboseEffect: Mappable {
    public var effect: String?
    public var shortEffect: String?
    public var language: Bool?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        effect <- map["effect"]
        shortEffect <- map["short_effect"]
        language <- map["language"]
    }
}


/*
text	The localized name for an API resource in a specific language	string
language	The language this name is in	NamedAPIResource (Language)
version_group	The version group which uses this flavor text	NamedAPIResource (VersionGroup)
*/
public class PKMVersionGroupFlavorText: Mappable {
    public var text: String?
    public var language: PKMNamedAPIResource?
    public var versionGroup: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        text <- map["text"]
        language <- map["language"]
        versionGroup <- map["version_group"]
    }
}


/*
game_index	The internal id of an API resource within game data	integer
generation	The generation relevent to this game index	NamedAPIResource (Generation)
*/
public class PKMGenerationGameIndex: Mappable {
    public var gameIndex: Int?
    public var generation: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        gameIndex <- map["game_index"]
        generation <- map["generation"]
    }
}


public class PKMItemSprites: Mappable {
    /// The default depiction of this item
    public var defaultDepiction: String?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        defaultDepiction <- map["default"]
    }
}


/// API Referenced Resource
public class PKMAPIResource: Mappable {
    /// The URL of the referenced resource
    public var url: String?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        url <- map["url"]
    }
}


/*
id	The identifier for this item resource	integer
name	The name for this item resource	string
cost	The price of this item in stores	integer
fling_power	The power of the move Fling when used with this item.	integer
fling_effect	The effect of the move Fling when used with this item	ItemFlingEffect
attributes	A list of attributes this item has	list NamedAPIResource (ItemAttribute)
category	The category of items this item falls into	ItemCategory
effect_entries	The effect of this ability listed in different languages	list VerboseEffect
flavor_text_entries	The flavor text of this ability listed in different languages	list VersionGroupFlavorText
game_indices	A list of game indices relevent to this item by generation	list GenerationGameIndex
names	The name of this item listed in different languages	list Name
sprites	A set of sprites used to depict this item in the game	ItemSprites
held_by_pokemon	A list of Pokémon that might be found in the wild holding this item	list NamedAPIResource (Pokemon)
baby_trigger_for	An evolution chain this item requires to produce a bay during mating	list APIResource (EvolutionChain)
*/
public class PKMItem: Mappable {
    public var id: Int?
    public var name: String?
    public var cost: Int?
    public var fling_power: Int?
    public var fling_effect: PKMNamedAPIResource?
    public var attributes: [PKMNamedAPIResource]?
    public var category: PKMNamedAPIResource?
    public var effect_entries: [PKMVerboseEffect]?
    public var flavor_text_entries: [PKMVersionGroupFlavorText]?
    public var game_indices: [PKMGenerationGameIndex]?
    public var names: [PKMName]?
    public var sprites: PKMItemSprites?
    public var held_by_pokemon: [PKMNamedAPIResource]?
    public var baby_trigger_for: [PKMAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        cost <- map["cost"]
        fling_power <- map["fling_power"]
        fling_effect <- map["fling_effect"]
        attributes <- map["attributes"]
        category <- map["category"]
        effect_entries <- map["effect_entries"]
        flavor_text_entries <- map["flavor_text_entries"]
        game_indices <- map["game_indices"]
        names <- map["names"]
        sprites <- map["sprites"]
        held_by_pokemon <- map["held_by_pokemon"]
        baby_trigger_for <- map["baby_trigger_for"]
    }
}


/*
id	The identifier for this version group resource	integer
name	The name for this version group resource	string
order	Order for sorting. Almost by date of release, except similar versions are grouped together.	integer
generation	The generation this version was introduced in	list NamedAPIResource (Generation)
move_learn_methods	A list of methods in which Pokémon can learn moves in this version group	list NamedAPIResource (MoveLearnMethod)
names	The name of this version group listed in different languages	list Name
pokedexes	A list of Pokédexes introduces in this version group	list NamedAPIResource (Pokedex)
regions	A list of regions that can be visited in this version group	list NamedAPIResource (Region)
versions	The versions this version group owns	list NamedAPIResource (Version)
*/
public class PKMVersionGroup: Mappable {
    public var id: Int?
    public var name: String?
    public var order: Int?
    public var generation: [PKMNamedAPIResource]?
    public var moveLearnMethods: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    public var pokedexes: [PKMNamedAPIResource]?
    public var regions: [PKMNamedAPIResource]?
    public var versions: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        order <- map["order"]
        generation <- map["generation"]
        moveLearnMethods <- map["move_learn_methods"]
        names <- map["names"]
        pokedexes <- map["pokedexes"]
        regions <- map["regions"]
        versions <- map["versions"]
    }
}

/*
id	The identifier for this version resource	integer
name	The name for this version resource	string
names	The name of this version listed in different languages	list Name
version_group	The version group this version belongs to	NamedAPIResource (VersionGroup)
*/
public class PKMVersion: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMName]?
    public var versionGroup: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        versionGroup <- map["version_group"]
    }
}


/*
description	The localized description for an API resource in a specific language	string
language	The language this name is in	NamedAPIResource (Language)
*/
public class PKMDescription: Mappable {
    public var description: String?
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        description <- map["description"]
        language <- map["language"]
    }
}

/*
entry_number	The index of this pokemon species entry within the Pokédex	integer
pokemon_species	The Pokémon species being encountered	NamedAPIResource (PokemonSpecies)
*/
public class PKMEntry: Mappable {
    public var entryNumber: Int?
    public var pokemonSpecies: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        entryNumber <- map["entry_number"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/*
id	The identifier for this Pokédex resource	integer
name	The name for this Pokédex resource	string
is_main_series	Whether or not this Pokédex originated in the main series of the video games	boolean
descriptions	The description of this Pokédex listed in different languages	list Description
names	The name of this Pokédex listed in different languages	list Name
pokemon_entries	A list of pokemon catalogued in this Pokédex and their indexes	list PokemonEntry
region	The region this Pokédex catalogues pokemon for	NamedAPIResource (Region)
version_groups	A list of version groups this Pokédex is relevent to	NamedAPIResource (VersionGroup)
*/
public class PKMPokedex: Mappable {
    public var id: Int?
    public var name: String?
    public var isMainSeries: Bool?
    public var descriptions: [PKMDescription]?
    public var names: [PKMName]?
    public var pokemonEntries: [PKMEntry]?
    public var region: PKMNamedAPIResource?
    public var versionGroups: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        isMainSeries <- map["is_main_series"]
        descriptions <- map["descriptions"]
        names <- map["names"]
        pokemonEntries <- map["pokemon_entries"]
        region <- map["region"]
        versionGroups <- map["version_groups"]
    }
}


public class PKMGeneration: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMName]?
    public var abilities: [PKMNamedAPIResource]?
    public var mainRegion: PKMNamedAPIResource?
    public var moves: [PKMNamedAPIResource]?
    public var pokemonSpecies: [PKMNamedAPIResource]?
    public var types: [PKMNamedAPIResource]?
    public var versionGroups: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        abilities <- map["abilities"]
        mainRegion <- map["id"]
        moves <- map["moves"]
        pokemonSpecies <- map["pokemon_species"]
        types <- map["types"]
        versionGroups <- map["versionGroups"]
    }
}


public class PKMEvolutionTrigger: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMName]?
    public var pokemonSpecies: PKMNamedAPIResource?
    
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
    public var item: PKMNamedAPIResource?
    public var trigger: PKMNamedAPIResource?
    public var gender: PKMNamedAPIResource?
    public var heldItem: PKMNamedAPIResource?
    public var knownMove: PKMNamedAPIResource?
    public var knownMoveType: PKMNamedAPIResource?
    public var location: PKMNamedAPIResource?
    public var minLevel: Int?
    public var minHappiness: Int?
    public var minBeauty: Int?
    public var minAffection: Int?
    public var needsOverworldRain: Bool?
    public var partySpecies: PKMNamedAPIResource?
    public var partyType: PKMNamedAPIResource?
    public var relativePhysicalStats: Int?
    public var timeOfDay: String?
    public var tradeSpecies: PKMNamedAPIResource?
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
    public var species: PKMNamedAPIResource?
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
    public var babyTriggerItem: PKMNamedAPIResource?
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
    public var condition: [PKMNamedAPIResource]?
    
    /// The name of this encounter condition value listed in different languages
    public var names: [PKMName]?
    
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
    public var values: [PKMNamedAPIResource]?
    public var names: [PKMName]?
    
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
    public var names: [PKMName]?
    
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
    public var moves: [PKMNamedAPIResource]?
    
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
    public var language: PKMName?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        flavorText <- map["flavor_text"]
        language <- map["language"]
    }
}

public class PKMEffectEntry: Mappable {
    public var effect: String?
    public var language: PKMName?
    
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
    public var berryFlavor: PKMNamedAPIResource?
    public var names: [PKMName]?
    
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
    public var results: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        count <- map["count"]
        next <- map["next"]
        previous <- map["previous"]
        results <- map["results"]
    }
}

public class PKMName: Mappable{
    public var name: String?
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        name <- map["name"]
        language <- map["language"]
    }
}

public class PKMNamedAPIResource: Mappable{
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
    public var flavor: PKMNamedAPIResource?
    
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
    public var contestType: PKMNamedAPIResource?
    public var names:[PKMName]?
    
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
    public var berry: PKMNamedAPIResource?
    
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
    public var firmness: PKMNamedAPIResource?
    public var flavors: [PKMBerryFlavourMap]?
    public var item: PKMNamedAPIResource?
    public var naturalGiftType: PKMNamedAPIResource?
    
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
    var language: PKMNamedAPIResource?
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
    public var berries: [PKMNamedAPIResource]?
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

public func fetchGenerations() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/generation"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchGeneration(generationId: String) -> Promise<PKMGeneration>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/generation/" + generationId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMGeneration, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchPokedexes() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokedex"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchPokedex(pokedexId: String) -> Promise<PKMPokedex>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokedex/" + pokedexId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPokedex, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchVersions() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/version"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchVersion(versionId: String) -> Promise<PKMVersion>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/version/" + versionId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMVersion, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchVersionGroups() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/version-group"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchVersionGroup(versionGroupId: String) -> Promise<PKMVersionGroup>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/version-group/" + versionGroupId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMVersionGroup, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchItems() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/item"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchItem(itemId: String) -> Promise<PKMItem>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/item/" + itemId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMItem, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchItemAttributes() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-attribute"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchItemAttribute(itemAttributeId: String) -> Promise<PKMItemAttribute>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-attribute/" + itemAttributeId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMItemAttribute, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchItemCategories() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-category"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchItemCategory(itemCategoryId: String) -> Promise<PKMItemCategory>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-category/" + itemCategoryId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMItemCategory, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchItemFlingEffects() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-fling-effect"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchItemFlingEffect(itemFlingEffectsId: String) -> Promise<PKMItemFlingEffect>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-fling-effect/" + itemFlingEffectsId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMItemFlingEffect, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchItemPockets() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-pocket"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchItemPocket(itemPocketId: String) -> Promise<PKMItemPocket>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/item-pocket/" + itemPocketId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMItemPocket, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchMoves() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/move"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchMove(moveId: String) -> Promise<PKMMove>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/move/" + moveId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMMove, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

public func fetchMoveAilments() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/move-ailment"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchMoveAilment(moveAilmentId: String) -> Promise<PKMMoveAilment>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/move-ailment/" + moveAilmentId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMMoveAilment, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

//MoveBattleStyles
public func fetchMoveBattleStyles() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/move-battle-style"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchMoveBattleStyle(moveBattleStyleId: String) -> Promise<PKMMoveBattleStyle>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/move-battle-style/" + moveBattleStyleId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMMoveBattleStyle, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

//MoveCategory
public func fetchMoveCategories() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/move-category"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchMoveCategory(moveCategoryId: String) -> Promise<PKMMoveCategory>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/move-category/" + moveCategoryId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMMoveCategory, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

//MoveDamageClass

public func fetchMoveDamageClasses() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/move-damage-class"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchMoveDamageClass(moveDamageClassId: String) -> Promise<PKMMoveDamageClass>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/move-damage-class/" + moveDamageClassId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMMoveDamageClass, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

//MoveLearnMethods

public func fetchMoveLearnMethods() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/move-learn-method"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchMoveLearnMethod(moveLearnMethodId: String) -> Promise<PKMMoveLearnMethod>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/move-learn-method/" + moveLearnMethodId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMMoveLearnMethod, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

//MoveTarget

public func fetchMoveTargets() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/move-target"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchMoveTarget(moveTargetId: String) -> Promise<PKMMoveTarget>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/move-target/" + moveTargetId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMMoveTarget, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

//Location

public func fetchLocations() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/location"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchLocation(locationId: String) -> Promise<PKMLocation>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/location/" + locationId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMLocation, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

//LocationArea

public func fetchLocationAreas() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/location-area"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchLocationArea(locationAreaId: String) -> Promise<PKMLocationArea>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/location-area/" + locationAreaId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMLocationArea, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

//PalParkArea

public func fetchPalParkAreas() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/pal-park-area"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchPalParkArea(palParkAreaId: String) -> Promise<PKMPalParkArea>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/pal-park-area/" + palParkAreaId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPalParkArea, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

//Region

public func fetchRegions() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/region"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchRegion(regionId: String) -> Promise<PKMRegion>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/region/" + regionId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMRegion, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

//Abilities

public func fetchAbilities() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/ability"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

public func fetchAbility(abilityId: String) -> Promise<PKMAbility>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/ability/" + abilityId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMAbility, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}