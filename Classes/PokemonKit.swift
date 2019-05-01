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

/// Languages for translations of API resource information.
open class PKMLanguage: Mappable {
    
    /// The identifier for this language resource
    open var id: Int?
    
    /// The name for this language resource
    open var name: String?
    
    /// Whether or not the games are published in this language
    open var official: Bool?
    
    /// The two-letter code of the country where this language is spoken. Note that it is not unique.
    open var iso639: String?
    
    /// The two-letter code of the language. Note that it is not unique.
    open var iso3166: String?
    
    /// The name of this language listed in different languages
    open var names: [PKMName]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        official <- map["official"]
        iso639 <- map["iso639"]
        iso3166 <- map["iso3166"]
        names <- map["names"]
    }
}

/// Pokemon Type
open class PKMTypePokemon: Mappable {
    
    /// The order the Pokémon's types are listed in
    open var slot: Int?
    
    /// The Pokémon that has the referenced type
    open var pokemon: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        slot <- map["slot"]
        pokemon <- map["pokemon"]
    }
}

/// Pokemon Type Relations
open class PKMTypeRelations: Mappable {
    
    /// A list of types this type has no effect on
    open var noDamageTo: [PKMNamedAPIResource]?
    
    /// A list of types this type is not very effect against
    open var halfDamageTo: [PKMNamedAPIResource]?
    
    /// A list of types this type is very effect against
    open var doubleDamageTo: [PKMNamedAPIResource]?
    
    /// A list of types that have no effect on this type
    open var noDamageFrom: [PKMNamedAPIResource]?
    
    /// A list of types that are not very effective against this type
    open var halfDamageFrom: [PKMNamedAPIResource]?
    
    /// A list of types that are very effective against this type
    open var doubleDamageFrom: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        noDamageTo <- map["no_damage_to"]
        halfDamageTo <- map["half_damage_to"]
        doubleDamageTo <- map["double_damage_to"]
        noDamageFrom <- map["no_damage_from"]
        halfDamageFrom <- map["half_damage_from"]
        doubleDamageFrom <- map["double_damage_from"]
    }
}

/// Types are properties for Pokémon and their moves. Each type has three properties: which types of Pokémon it is super effective against, which types of Pokémon it is not very effective against, and which types of Pokémon it is completely ineffective against.
open class PKMType: Mappable {
    
    /// The identifier for this type resource
    open var id: Int?
    
    /// The name for this type resource
    open var name: String?
    
    /// A detail of how effective this type is toward others and vice versa
    open var damageRelations: PKMTypeRelations?
    
    /// A list of game indices relevent to this item by generation
    open var gameIndices: [PKMGenerationGameIndex]?
    
    /// The generation this type was introduced in
    open var generation: PKMNamedAPIResource?
    
    /// The class of damage inflicted by this type
    open var moveDamageClass: PKMNamedAPIResource?
    
    /// The name of this type listed in different languages
    open var names: [PKMName]?
    
    /// A list of details of Pokémon that have this type
    open var pokemon: [PKMTypePokemon]?
    
    /// A list of moves that have this type
    open var moves: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        damageRelations <- map["damage_relations"]
        gameIndices <- map["game_indices"]
        generation <- map["generation"]
        moveDamageClass <- map["move_damage_class"]
        names <- map["names"]
        pokemon <- map["pokemon"]
        moves <- map["moves"]
    }
}


/// Nature Affect Set
open class PKMNatureStatAffectSets: Mappable {
    
    /// A list of natures and how they change the referenced stat
    open var increase: [PKMNatureStatAffect]?
    
    /// A list of nature sand how they change the referenced stat
    open var decrease: [PKMNatureStatAffect]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        increase <- map["increase"]
        decrease <- map["decrease"]
    }
}


/// Nature Stat Affect
open class PKMNatureStatAffect: Mappable {
    
    /// The maximum amount of change to the referenced stat
    open var maxChange: Int?
    
    /// The nature causing the change
    open var nature: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        maxChange <- map["max_change"]
        nature <- map["nature"]
    }
}

/// Move Stat Affect
open class PKMMoveStatAffect: Mappable {
    
    /// The maximum amount of change to the referenced stat
    open var maxChange: Int?
    
    /// The move causing the change
    open var move: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        maxChange <- map["max_change"]
        move <- map["move"]
    }
}

/// Move Stat Affect Sets
open class PKMMoveStatAffectSets: Mappable {
    
    /// A list of natures and how they change the referenced stat
    open var increase: [PKMMoveStatAffect]?
    
    /// A list of nature sand how they change the referenced stat
    open var decrease: [PKMMoveStatAffect]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        increase <- map["increase"]
        decrease <- map["decrease"]
    }
}

/// Stats determine certain aspects of battles. Each Pokémon has a value for each stat which grows as they gain levels and can be altered momentarily by effects in battles.
open class PKMStat: Mappable {
    
    /// The identifier for this stat resource
    open var id: Int?
    
    /// The name for this stat resource
    open var name: String?
    
    /// ID the games use for this stat
    open var gameIndex: Int?
    
    /// Whether this stat only exists within a battle
    open var isBattleOnly: Bool?
    
    /// A detail of moves which affect this stat positively or negatively
    open var affectingMoves: PKMMoveStatAffectSets?
    
    //// A detail of natures which affect this stat positively or negatively
    open var affectingNatures: PKMNatureStatAffectSets?
    
    /// A list of characteristics that are set on a Pokémon when its highest base stat is this stat
    open var characteristics: [PKMAPIResource]?
    
    /// The class of damage this stat is directly related to
    open var moveDamageClass: PKMNamedAPIResource?
    
    /// The name of this region listed in different languages
    open var names: [PKMName]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        gameIndex <- map["game_index"]
        isBattleOnly <- map["is_battle_only"]
        affectingMoves <- map["affecting_moves"]
        affectingNatures <- map["affecting_natures"]
        characteristics <- map["characteristics"]
        moveDamageClass <- map["move_damage_class"]
        names <- map["names"]
    }
}

/// Pokemon Species Dex Entry
open class PKMPokemonSpeciesDexEntry: Mappable {
    
    /// The index number within the Pokédex
    open var entryNumber: Int?
    
    /// The Pokédex the referenced Pokémon species can be found in
    open var name: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        entryNumber <- map["entry_number"]
        name <- map["name"]
    }
}

/// PalPark Encounter Area
open class PKMPalParkEncounterArea: Mappable {
    
    /// The base score given to the player when the referenced Pokémon is caught during a pal park run
    open var baseScore: Int?
    
    /// The base rate for encountering the referenced Pokémon in this pal park area
    open var rate: Int?
    
    /// The pal park area where this encounter happens
    open var area: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        baseScore <- map["base_score"]
        rate <- map["rate"]
        area <- map["area"]
    }
}

/// Pokemon Species Flavor Text
open class PKMPokemonSpeciesFlavorText: Mappable {
    
    /// The localized flavor text for an API resource in a specific language
    open var flavorText: String?
    
    /// The language this name is in
    open var language: PKMNamedAPIResource?
    
    /// The version this flavor text entry is used in
    open var version: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        flavorText <- map["flavor_text"]
        language <- map["language"]
        version <- map["version"]
    }
}

/// Genus
open class PKMGenus: Mappable {
    
    /// The localized genus for the referenced pokemon species
    open var genus: String?
    
    /// The language this genus is in
    open var language: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        genus <- map["genus"]
        language <- map["language"]
    }
}

/// A Pokémon Species forms the basis for at least one Pokémon. Attributes of a Pokémon species are shared across all varieties of Pokémon within the species. A good example is Wormadam; Wormadam is the species which can be found in three different varieties, Wormadam-Trash, Wormadam-Sandy and Wormadam-Plant.
open class PKMPokemonSpecies: Mappable {
    
    /// The identifier for this Pokémon species resource
    open var id: Int?
    
    /// The name for this Pokémon species resource
    open var name: String?
    
    /// The order in which species should be sorted. Based on National Dex order, except families are grouped together and sorted by stage.
    open var order: Int?
    
    /// The chance of this Pokémon being female, in eighths; or -1 for genderless
    open var genderRate: Int?
    
    /// The base capture rate; up to 255. The higher the number, the easier the catch.
    open var captureRate: Int?
    
    /// The happiness when caught by a normal Pokéball; up to 255. The higher the number, the happier the Pokémon.
    open var baseHappiness: Int?
    
    /// Whether or not this is a baby Pokémon
    open var isBaby: Bool?
    
    /// Initial hatch counter: one must walk 255 × (hatch_counter + 1) steps before this Pokémon's egg hatches, unless utilizing bonuses like Flame Body's
    open var hatchCounter: Int?
    
    /// Whether or not this Pokémon can have different genders
    open var hasGenderDifferences: Bool?
    
    /// Whether or not this Pokémon has multiple forms and can switch between them
    open var formsSwitchable: Bool?
    
    /// The rate at which this Pokémon species gains levels
    open var growthRate: PKMNamedAPIResource?
    
    /// A list of pokedexes and the indexes reserved within them for this Pokémon species
    open var pokedexNumbers: [PKMPokemonSpeciesDexEntry]?
    
    /// A list of egg groups this Pokémon species is a member of
    open var eggGroups: [PKMNamedAPIResource]?
    
    /// The color of this Pokémon for gimmicky Pokédex search
    open var color: PKMNamedAPIResource?
    
    /// The shape of this Pokémon for gimmicky Pokédex search
    open var shape: PKMNamedAPIResource?
    
    /// The Pokémon species that evolves into this pokemon_species
    open var evolvesFromSpecies: PKMNamedAPIResource?
    
    /// The evolution chain this Pokémon species is a member of
    open var evolutionChain: PKMAPIResource?
    
    /// The habitat this Pokémon species can be encountered in
    open var habitat: PKMNamedAPIResource?
    
    /// The generation this Pokémon species was introduced in
    open var generation: PKMNamedAPIResource?
    
    /// The name of this Pokémon species listed in different languages
    open var names: [PKMName]?
    
    /// A list of encounters that can be had with this Pokémon species in pal park
    open var palParkEncounters: [PKMPalParkEncounterArea]?
    
    /// The flavor text of this flavor text listed in different languages
    open var flavorTextEntries: [PKMPokemonSpeciesFlavorText]?
    
    /// Descriptions of different forms Pokémon take on within the Pokémon species
    open var formDescriptions: [PKMDescription]?
    
    /// The genus of this Pokémon species listed in multiple languages
    open var genera: [PKMGenus]?
    
    /// A list of the Pokémon that exist within this Pokémon species
    open var varieties: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        order <- map["order"]
        genderRate <- map["gender_rate"]
        captureRate <- map["capture_rate"]
        baseHappiness <- map["base_happiness"]
        isBaby <- map["is_baby"]
        hatchCounter <- map["hatch_counter"]
        hasGenderDifferences <- map["has_gender_differences"]
        formsSwitchable <- map["forms_switchable"]
        growthRate <- map["growth_rate"]
        pokedexNumbers <- map["pokedex_numbers"]
        eggGroups <- map["egg_groups"]
        color <- map["color"]
        shape <- map["shape"]
        evolvesFromSpecies <- map["evolves_from_species"]
        evolutionChain <- map["evolution_chain"]
        habitat <- map["habitat"]
        generation <- map["generation"]
        names <- map["names"]
        palParkEncounters <- map["pal_park_encounters"]
        flavorTextEntries <- map["flavor_text_entries"]
        formDescriptions <- map["form_descriptions"]
        genera <- map["genera"]
        varieties <- map["varieties"]
    }
}

/// An Awesome Name
open class PKMAwesomeName: Mappable {
    
    /// The localized "scientific" name for an API resource in a specific language
    open var awesomeName: String?
    
    /// The language this "scientific" name is in
    open var language: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        awesomeName <- map["awesome_name"]
        language <- map["language"]
    }
}

/// Shapes used for sorting Pokémon in a Pokédex.
open class PKMPokemonShape: Mappable {
    
    /// The identifier for this Pokémon shape
    open var id: Int?
    
    /// The name for this Pokémon shape resource
    open var name: String?
    
    /// The "scientific" name of this Pokémon shape listed in different languages
    open var awesomeNames: [PKMAwesomeName]?
    
    /// The name of this Pokémon shape listed in different languages
    open var names: [PKMName]?
    
    /// A list of the Pokémon species that have this shape
    open var pokemonSpecies: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        awesomeNames <- map["awesome_names"]
        names <- map["names"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Habitats are generally different terrain Pokémon can be found in but can also be areas designated for rare or legendary Pokémon.
open class PKMPokemonHabitat: Mappable {
    
    /// The identifier for this Pokémon habitat resource
    open var id: Int?
    
    /// The name for this Pokémon habitat resource
    open var name: String?
    
    /// The name of this Pokémon habitat listed in different languages
    open var names: [PKMName]?
    
    /// A list of the Pokémon species that can be found in this habitat
    open var pokemonSpecies: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Pokemon Form Sprites
open class PKMPokemonFormSprites: Mappable {
    
    /// The default depiction of this Pokémon form from the front in battle
    open var frontDefault: String?
    
    /// The shiny depiction of this Pokémon form from the front in battle
    open var frontShiny: String?
    
    /// The default depiction of this Pokémon form from the back in battle
    open var backDefault: String?
    
    /// The shiny depiction of this Pokémon form from the back in battle
    open var backShiny: String?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        frontDefault <- map["front_default"]
        frontShiny <- map["front_shiny"]
        backDefault <- map["back_default"]
        backShiny <- map["back_shiny"]
    }
}

/// Some Pokémon have the ability to take on different forms. At times, these differences are purely cosmetic and have no bearing on the difference in the Pokémon's stats from another; however, several Pokémon differ in stats (other than HP), type, and Ability depending on their form.
open class PKMPokemonForm: Mappable {
    
    /// The identifier for this Pokémon form resource
    open var id: Int?
    
    /// The name for this Pokémon form resource
    open var name: String?
    
    /// The order in which forms should be sorted within all forms. Multiple forms may have equal order, in which case they should fall back on sorting by name.
    open var order: Int?
    
    /// The order in which forms should be sorted within a species' forms
    open var formOrder: Int?
    
    /// True for exactly one form used as the default for each Pokémon
    open var isDefault: Bool?
    
    /// Whether or not this form can only happen during battle
    open var isBattleOnly: Bool?
    
    /// Whether or not this form requires mega evolution
    open var isMega: Bool?
    
    /// The name of this form
    open var formName: String?
    
    /// The Pokémon that can take on this form
    open var pokemon: PKMNamedAPIResource?
    
    /// A set of sprites used to depict this Pokémon form in the game
    open var sprites: PKMPokemonFormSprites?
    
    /// The version group this Pokémon form was introduced in
    open var versionGroup: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        order <- map["order"]
        formOrder <- map["form_order"]
        isDefault <- map["is_default"]
        isBattleOnly <- map["is_battle_only"]
        isMega <- map["is_mega"]
        formName <- map["form_name"]
        pokemon <- map["pokemon"]
        sprites <- map["sprites"]
        versionGroup <- map["version_group"]
    }
}

/// Colors used for sorting Pokémon in a Pokédex. The color listed in the Pokédex is usually the color most apparent or covering each Pokémon's body. No orange category exists; Pokémon that are primarily orange are listed as red or brown.
open class PKMPokemonColor: Mappable {
    
    /// The identifier for this Pokémon color resource
    open var id: Int?
    
    /// The name for this Pokémon color resource
    open var name: String?
    
    /// The name of this Pokémon color listed in different languages
    open var names: [PKMName]?
    
    /// A list of the Pokémon species that have this color
    open var pokemonSpecies: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Version Game Index
open class PKMVersionGameIndex: Mappable {
    
    /// The internal id of an API resource within game data
    open var gameIndex: Int?
    
    /// The version relevent to this game index
    open var version: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        gameIndex <- map["game_index"]
        version <- map["version"]
    }
}

/// Pokemon Ability
open class PKMPokemonAbility: Mappable {
    
    /// Whether or not this is a hidden ability
    open var isHidden: Bool?
    
    /// The slot this ability occupies in this Pokémon species
    open var slot: Int?
    
    /// The ability the Pokémon may have
    open var ability: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        isHidden <- map["is_hidden"]
        slot <- map["slot"]
        ability <- map["ability"]
    }
}

/// Location Area Encounter
open class PKMLocationAreaEncounter: Mappable {
    
    /// The location area the referenced Pokémon can be encountered in
    open var locationArea: PKMAPIResource?
    
    /// A list of versions and encounters with the referenced Pokémon that might happen
    open var versionDetails: [PKMVersionEncounterDetail]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        locationArea <- map["location_area"]
        versionDetails <- map["version_details"]
    }
}

/// Pokemon Sprites
open class PKMPokemonSprites: Mappable {
    
    /// The default depiction of this Pokémon from the front in battle
    open var frontDefault: String?
    
    /// The shiny depiction of this Pokémon from the front in battle
    open var frontShiny: String?
    
    /// The female depiction of this Pokémon from the front in battle
    open var frontFemale: String?
    
    /// The shiny female depiction of this Pokémon from the front
    open var frontShinyFemale: String?
    
    /// The default depiction of this Pokémon from the back in battle
    open var backDefault: String?
    
    /// The shiny depiction of this Pokémon from the back in battle
    open var backShiny: String?
    
    /// The female depiction of this Pokémon from the back in battle
    open var backFemale: String?
    
    /// The shiny female depiction of this Pokémon from the back in battle
    open var backShinyFemale: String?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        frontDefault <- map["front_default"]
        frontShiny <- map["front_shiny"]
        frontFemale <- map["front_female"]
        frontShinyFemale <- map["front_shiny_female"]
        backDefault <- map["back_default"]
        backShiny <- map["back_shiny"]
        backFemale <- map["back_female"]
        backShinyFemale <- map["back_shiny_female"]
    }
}

/// Pokemon Type
open class PKMPokemonType: Mappable {
    
    /// The order the Pokémon's types are listed in
    open var slot: Int?
    
    /// The type the referenced Pokémon has
    open var type: String?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        slot <- map["slot"]
        type <- map["type"]
    }
}

/// Pokémon are the creatures that inhabit the world of the Pokémon games. They can be caught using Pokéballs and trained by battling with other Pokémon. See Bulbapedia for greater detail.
open class PKMPokemon: Mappable {
    
    /// The identifier for this Pokémon resource
    open var id: Int?
    
    /// The name for this Pokémon resource
    open var name: String?
    
    /// The base experience gained for defeating this Pokémon
    open var base_experience: Int?
    
    /// The height of this Pokémon
    open var height: Int?
    
    /// Set for exactly one Pokémon used as the default for each species
    open var isDefault: Bool?
    
    /// Order for sorting. Almost national order, except families are grouped together.
    open var order: Int?
    
    /// The weight of this Pokémon
    open var weight: Int?
    
    /// A list of abilities this Pokémon could potentially have
    open var abilities: [PKMPokemonAbility]?
    
    /// A list of forms this Pokémon can take on
    open var forms: [PKMNamedAPIResource]?
    
    /// A list of game indices relevent to Pokémon item by generation
    open var gameIndices: [PKMVersionGameIndex]?
    
    /// A list of items this Pokémon may be holding when encountered
    open var heldItems: [PKMNamedAPIResource]?
    
    /// A list of location areas as well as encounter details pertaining to specific versions
    open var locationAreaEncounters: [PKMLocationAreaEncounter]?
    
    /// A list of moves along with learn methods and level details pertaining to specific version groups
    open var moves: [PKMNamedAPIResource]?
    
    /// A set of sprites used to depict this Pokémon in the game
    open var sprites: PKMPokemonSprites?
    
    /// The species this Pokémon belongs to
    open var species: PKMNamedAPIResource?
    
    /// A list of base stat values for this Pokémon
    open var stats: [PKMNamedAPIResource]?
    
    /// A list of details showing types this Pokémon has
    open var types: [PKMPokemonType]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        base_experience <- map["base_experience"]
        height <- map["height"]
        isDefault <- map["is_default"]
        order <- map["order"]
        weight <- map["weight"]
        abilities <- map["abilities"]
        forms <- map["forms"]
        gameIndices <- map["game_indices"]
        heldItems <- map["held_items"]
        locationAreaEncounters <- map["location_area_encounters"]
        moves <- map["moves"]
        sprites <- map["sprites"]
        species <- map["species"]
        stats <- map["stats"]
        types <- map["types"]
    }
}

/// Nature Pokeathlon Stat Affect
open class PKMNaturePokeathlonStatAffect: Mappable {
    
    /// The maximum amount of change to the referenced Pokéathlon stat
    open var maxChange: Int?
    
    /// The nature causing the change
    open var nature: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        maxChange <- map["max_change"]
        nature <- map["nature"]
    }
}

/// Nature Pokeathlon Stat Affect Sets
open class PKMNaturePokeathlonStatAffectSets: Mappable {
    
    /// A list of natures and how they change the referenced Pokéathlon stat
    open var increase: [PKMNaturePokeathlonStatAffect]?
    
    /// A list of natures and how they change the referenced Pokéathlon stat
    open var decrease: [PKMNaturePokeathlonStatAffect]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        increase <- map["increase"]
        decrease <- map["decrease"]
    }
}

/// Pokeathlon Stats are different attributes of a Pokémon's performance in Pokéathlons. In Pokéathlons, competitions happen on different courses; one for each of the different Pokéathlon stats. See Bulbapedia for greater detail.
open class PKMPokeathlonStat: Mappable {
    
    /// The identifier for this Pokéathlon stat resource
    open var id: Int?
    
    /// The name for this Pokéathlon stat resource
    open var name: String?
    
    /// The name of this Pokéathlon stat listed in different languages
    open var names: [PKMName]?
    
    /// A detail of natures which affect this Pokéathlon stat positively or negatively
    open var affectingNatures: PKMNaturePokeathlonStatAffectSets?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        affectingNatures <- map["affecting_natures"]
    }
}

/// Move Battle Style Preference
open class PKMMoveBattleStylePreference: Mappable {
    
    /// Chance of using the move, in percent, if HP is under one half
    open var lowHpPreference: Int?
    
    /// Chance of using the move, in percent, if HP is over one half
    open var highHpPreference: Int?
    
    /// The move battle style
    open var moveBattleStyle: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        lowHpPreference <- map["low_hp_preference"]
        highHpPreference <- map["high_hp_preference"]
        moveBattleStyle <- map["move_battle_style"]
    }
}


/*
change	The amount of change	integer
stat	The stat being affected	NamedAPIResource (PokeathlonStat)
*/
open class PKMNatureStatChange: Mappable {
    open var maxChange: Int?
    open var pokeathlonStat: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        maxChange <- map["max_change"]
        pokeathlonStat <- map["pokeathlon_stat"]
    }
}

/// Natures influence how a Pokémon's stats grow. See Bulbapedia ( http://bulbapedia.bulbagarden.net/wiki/Nature ) for greater detail.
open class PKMNature: Mappable {
    
    /// The identifier for this nature resource
    open var id: Int?
    
    /// The name for this nature resource
    open var name: String?
    
    /// The stat decreased by 10% in Pokémon with this nature
    open var decreasedStat: PKMNamedAPIResource?
    
    /// The stat increased by 10% in Pokémon with this nature
    open var increasedStat: PKMNamedAPIResource?
    
    /// The flavor hated by Pokémon with this nature
    open var hatesFlavor: PKMNamedAPIResource?
    
    /// he flavor liked by Pokémon with this nature
    open var likesFlavor: PKMNamedAPIResource?
    
    /// A list of Pokéathlon stats this nature effects and how much it effects them
    open var pokeathlonStatChanges: [PKMNatureStatChange]?
    
    /// A list of battle styles and how likely a Pokémon with this nature is to use them in the Battle Palace or Battle Tent.
    open var moveBattleStylePreferences: [PKMMoveBattleStylePreference]?
    
    /// The name of this nature listed in different languages
    open var names: [PKMName]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        decreasedStat <- map["decreased_stat"]
        increasedStat <- map["increased_stat"]
        hatesFlavor <- map["hates_flavor"]
        likesFlavor <- map["likes_flavor"]
        pokeathlonStatChanges <- map["pokeathlon_stat_changes"]
        moveBattleStylePreferences <- map["move_battle_style_preferences"]
        names <- map["names"]
    }
}


/*
level	The level gained	integer
experience	The amount of experience required to reach the referenced level	integer
*/

/// Growth Rate Experience Level
open class PKMGrowthRateExperienceLevel: Mappable {
    
    /// The level gained
    open var level: Int?
    
    /// The amount of experience required to reach the referenced level
    open var experience: Int?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        level <- map["level"]
        experience <- map["experience"]
    }
}

/// Growth rates are the speed with which Pokémon gain levels through experience. Check out Bulbapedia ( http://bulbapedia.bulbagarden.net/wiki/Experience ) for greater detail.
open class PKMGrowthRate: Mappable {
    
    /// The identifier for this gender resource
    open var id: Int?
    
    /// The name for this gender resource
    open var name: String?
    
    /// The formula used to calculate the rate at which the Pokémon species gains level
    open var formula: String?
    
    /// The descriptions of this characteristic listed in different languages
    open var descriptions: [PKMDescription]?
    
    /// A list of levels and the amount of experienced needed to atain them based on this growth rate
    open var levels: [PKMGrowthRateExperienceLevel]?
    
    /// A list of Pokémon species that gain levels at this growth rate
    open var pokemonSpecies: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        formula <- map["formula"]
        descriptions <- map["descriptions"]
        levels <- map["levels"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Pokemon Species Gender
open class PKMPokemonSpeciesGender: Mappable {
    
    /// The chance of this Pokémon being female, in eighths; or -1 for genderless
    open var rate: Int?
    
    /// A Pokémon species that can be the referenced gender
    open var pokemonSpecies: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        rate <- map["rate"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Genders were introduced in Generation II for the purposes of breeding Pokémon but can also result in visual differences or even different evolutionary lines. Check out Bulbapedia for greater detail.
open class PKMGender: Mappable {
    
    /// The identifier for this gender resource
    open var id: Int?
    
    /// The name for this gender resource
    open var name: String?
    
    /// A list of Pokémon species that can be this gender and how likely it is that they will be
    open var pokemonSpeciesDetails: [PKMPokemonSpeciesGender]?
    
    /// A list of Pokémon species that required this gender in order for a Pokémon to evolve into them
    open var requiredForEvolution: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        pokemonSpeciesDetails <- map["pokemon_species_details"]
        requiredForEvolution <- map["required_for_evolution"]
    }
}

/// Egg Groups are categories which determine which Pokémon are able to interbreed. Pokémon may belong to either one or two Egg Groups. Check out Bulbapedia for greater detail.
open class PKMEggGroup: Mappable {
    
    /// The identifier for this egg group resource
    open var id: Int?
    
    /// The name for this egg group resource
    open var name: String?
    
    /// The name of this egg group listed in different languages
    open var names: [PKMName]?
    
    /// A list of all Pokémon species that are members of this egg group
    open var pokemonSpecies: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Characteristics indicate which stat contains a Pokémon's highest IV. A Pokémon's Characteristic is determined by the remainder of its highest IV divided by 5 (gene_modulo). Check out Bulbapedia for greater detail.
open class PKMCharacteristic: Mappable {
    
    /// The identifier for this characteristic resource
    open var id: Int?
    
    /// The remainder of the highest stat/IV divided by 5
    open var geneModulo: Int?
    
    /// The possible values of the highest stat that would result in a Pokémon recieving this characteristic when divided by 5
    open var possibleValues: [Int]?
    
    /// The descriptions of this characteristic listed in different languages
    open var descriptions: [PKMDescription]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        geneModulo <- map["gene_modulo"]
        possibleValues <- map["possible_values"]
        descriptions <- map["descriptions"]
    }
}

/// Ability Pokemon
open class PKMAbilityPokemon: Mappable {
    
    /// Whether or not this a hidden ability for the referenced Pokémon
    open var isHidden: Bool?
    
    /// Pokémon have 3 ability 'slots' which hold references to possible abilities they could have. This is the slot of this ability for the referenced pokemon.
    open var slot: Int?
    
    /// The Pokémon this ability could belong to
    open var pokemon: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        isHidden <- map["is_hidden"]
        slot <- map["slot"]
        pokemon <- map["pokemon"]
    }
}

/// Abilities provide passive effects for Pokémon in battle or in the overworld. Pokémon have mutiple possible abilities but can have only one ability at a time. Check out Bulbapedia for greater detail.
open class PKMAbility: Mappable {
    
    /// The identifier for this ability resource
    open var id: Int?
    
    /// The name for this ability resource
    open var name: String?
    
    /// Whether or not this ability originated in the main series of the video games
    open var isMainSeries: Bool?
    
    /// The generation this ability originated in
    open var generation: PKMNamedAPIResource?
    
    /// The name of this ability listed in different languages
    open var names: [PKMName]?
    
    /// The effect of this ability listed in different languages
    open var effectEntries: [PKMVerboseEffect]?
    
    /// The list of previous effects this ability has had across version groups
    open var effectChanges: [PKMAbilityEffectChange]?
    
    /// The flavor text of this ability listed in different languages
    open var flavorTextEntries: [PKMVersionGroupFlavorText]?
    
    /// A list of Pokémon that could potentially have this ability
    open var pokemon: [PKMAbilityPokemon]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
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

/// A region is an organized area of the Pokémon world. Most often, the main difference between regions is the species of Pokémon that can be encountered within them.
open class PKMRegion: Mappable {
    
    /// The identifier for this region resource
    open var id: Bool?
    
    /// The name for this region resource
    open var name: String?
    
    /// A list of locations that can be found in this region
    open var locations: [PKMNamedAPIResource]?
    
    /// The generation this region was introduced in
    open var mainGeneration: [PKMNamedAPIResource]?
    
    /// The name of this region listed in different languages
    open var names: [PKMName]?
    
    /// A list of pokédexes that catalogue Pokémon in this region
    open var pokedexes: [PKMNamedAPIResource]?
    
    /// A list of version groups where this region can be visited
    open var versionGroups: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        locations <- map["locations"]
        mainGeneration <- map["main_generation"]
        names <- map["names"]
        pokedexes <- map["pokedexes"]
        versionGroups <- map["version_groups"]
    }
}

/// Areas used for grouping Pokémon encounters in Pal Park. They're like habitats that are specific to Pal Park.
open class PKMPalParkEncounterSpecies: Mappable {
    
    /// The base score given to the player when this Pokémon is caught during a pal park run
    open var baseScore: Int?
    
    /// The base rate for encountering this Pokémon in this pal park area
    open var rate: Int?
    
    /// The Pokémon species being encountered
    open var pokemonSpecies: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        baseScore <- map["base_score"]
        rate <- map["rate"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Pal Park Area
open class PKMPalParkArea: Mappable {
    
    /// The identifier for this pal park area resource
    open var id: Int?
    
    /// The name for this pal park area resource
    open var name: String?
    
    /// The name of this pal park area listed in different languages
    open var names: [PKMName]?
    
    /// A list of Pokémon encountered in thi pal park area along with details
    open var pokemonEncounters: [PKMPalParkEncounterSpecies]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        pokemonEncounters <- map["pokemon_encounters"]
    }
}

/// Locations that can be visited within the games. Locations make up sizable portions of regions, like cities or routes.
open class PKMLocation: Mappable {
    
    /// The identifier for this location resource
    open var id: Int?
    
    /// The name for this location resource
    open var name: String?
    
    /// The region this location can be found in
    open var region: PKMNamedAPIResource?
    
    /// The name of this language listed in different languages
    open var names: [PKMName]?
    
    /// A list of game indices relevent to this location by generation
    open var gameIndices: [PKMGenerationGameIndex]?
    
    /// Areas that can be found within this location
    open var areas: PKMAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        region <- map["region"]
        names <- map["names"]
        gameIndices <- map["game_indices"]
        areas <- map["areas"]
    }
}

/// Encounter
open class PKMEncounter: Mappable {
    
    /// The lowest level the Pokémon could be encountered at
    open var minLevel: Int?
    
    /// The highest level the Pokémon could be encountered at
    open var maxLevel: Int?
    
    /// A list of condition values that must be in effect for this encounter to occur
    open var conditionValues: [PKMNamedAPIResource]?
    
    /// percent chance that this encounter will occur
    open var chance: Int?
    
    /// The method by which this encounter happens
    open var method: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        minLevel <- map["min_level"]
        maxLevel <- map["max_level"]
        conditionValues <- map["condition_values"]
        chance <- map["chance"]
        method <- map["method"]
    }
}

/// Version Encounter Detail
open class PKMVersionEncounterDetail: Mappable {
    
    /// The game version this encounter happens in
    open var version: PKMNamedAPIResource?
    
    /// The total percentage of all encounter potential
    open var maxChance: Int?
    
    /// A list of encounters and their specifics
    open var encounterDetails: [PKMEncounter]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        version <- map["version"]
        maxChance <- map["max_chance"]
        encounterDetails <- map["encounter_details"]
    }
}

/// Pokemon Encounter
open class PKMPokemonEncounter: Mappable {
    
    /// The Pokémon being encountered
    open var pokemon: PKMNamedAPIResource?
    
    /// A list of versions and encounters with Pokémon that might happen in the referenced location area
    open var versionDetails: [PKMVersionEncounterDetail]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        pokemon <- map["pokemon"]
        versionDetails <- map["version_details"]
    }
}

/// Encounter Version Details
open class PKMEncounterVersionDetails: Mappable {
    
    /// The chance of an encounter to occur.
    open var rate: Int?
    
    /// The version of the game in which the encounter can occur with the given chance.
    open var version: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        rate <- map["rate"]
        version <- map["version"]
    }
}

/// Encounter Method Rate
open class PKMEncounterMethodRate: Mappable {
    
    /// The method in which Pokémon may be encountered in an area.
    open var encounterEethod: PKMEncounterMethod?
    
    /// The chance of the encounter to occur on a version of the game.
    open var versionDetails: [PKMEncounterVersionDetails]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        encounterEethod <- map["encounter_method"]
        versionDetails <- map["version_details"]
    }
}

/// Location areas are sections of areas, such as floors in a building or cave. Each area has its own set of possible Pokémon encounters.
open class PKMLocationArea: Mappable {
    
    /// The identifier for this location resource
    open var id: Int?
    
    /// The name for this location resource
    open var name: String?
    
    /// The internal id of an API resource within game data
    open var gameIndex: Int?
    
    /// A list of methods in which Pokémon may be encountered in this area and how likely the method will occur depending on the version of the game
    open var encounterMethodRates: [PKMEncounterMethodRate]?
    
    /// The region this location can be found in
    open var location: PKMNamedAPIResource?
    
    /// The name of this location area listed in different languages
    open var names: [PKMName]?
    
    /// A list of Pokémon that can be encountered in this area along with version specific details about the encounter
    open var pokemonEncounters: [PKMPokemonEncounter]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        gameIndex <- map["game_index"]
        encounterMethodRates <- map["encounter_method_rates"]
        location <- map["location"]
        names <- map["names"]
        pokemonEncounters <- map["pokemon_encounters"]
    }
}

/// Targets moves can be directed at during battle. Targets can be Pokémon, environments or even other moves.
open class PKMMoveTarget: Mappable {
    
    /// The identifier for this move target resource
    open var id: Int?
    
    /// The name for this move target resource
    open var name: String?
    
    /// The description of this move target listed in different languages
    open var descriptions: [PKMDescription]?
    
    /// A list of moves that that are directed at this target
    open var moves: [PKMNamedAPIResource]?
    
    /// The name of this move target listed in different languages
    open var names: [PKMName]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        descriptions <- map["descriptions"]
        moves <- map["moves"]
        names <- map["names"]
    }
}

/// Methods by which Pokémon can learn moves.
open class PKMMoveLearnMethod: Mappable {
    
    /// The identifier for this move learn method resource
    open var id: Int?
    
    /// The name for this move learn method resource
    open var name: String?
    
    /// The description of this move learn method listed in different languages
    open var descriptions: [PKMDescription]?
    
    /// The name of this move learn method listed in different languages
    open var names: [PKMName]?
    
    /// A list of version groups where moves can be learned through this method
    open var versionGroups: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        descriptions <- map["descriptions"]
        names <- map["names"]
        versionGroups <- map["version_groups"]
    }
}

/// Damage classes moves can have, e.g. physical, special, or non-damaging.
open class PKMMoveDamageClass: Mappable {
    
    /// The identifier for this move damage class resource
    open var id: Int?
    
    /// The name for this move damage class resource
    open var name: String?
    
    /// The description of this move damage class listed in different languages
    open var descriptions: [PKMDescription]?
    
    /// A list of moves that fall into this damage class
    open var moves: [PKMNamedAPIResource]?
    
    /// The name of this move damage class listed in different languages
    open var names: [PKMName]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        descriptions <- map["descriptions"]
        moves <- map["moves"]
        names <- map["names"]
    }
}

/// Very general categories that loosely group move effects.
open class PKMMoveCategory: Mappable {
    
    /// The identifier for this move category resource
    open var id: Int?
    
    /// The name for this move category resource
    open var name: String?
    
    /// A list of moves that fall into this category
    open var moves: [PKMNamedAPIResource]?
    
    /// The description of this move ailment listed in different languages
    open var descriptions: [PKMDescription]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        moves <- map["moves"]
        descriptions <- map["descriptions"]
    }
}

/// Styles of moves when used in the Battle Palace. See Bulbapedia for greater detail.
open class PKMMoveBattleStyle: Mappable {
    
    /// The identifier for this move battle style resource
    open var id: Int?
    
    /// The name for this move battle style resource
    open var name: String?
    
    /// The name of this move battle style listed in different languages
    open var names: [PKMName]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
    }
}

/// Move Ailments are status conditions caused by moves used during battle. See Bulbapedia for greater detail.
open class PKMMoveAilment: Mappable {
    
    /// The identifier for this move ailment resource
    open var id: Int?
    
    /// The name for this move ailment resource
    open var name: String?
    
    /// A list of moves that cause this ailment
    open var moves: [PKMNamedAPIResource]?
    
    /// The name of this move ailment listed in different languages
    open var names: [PKMName]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        moves <- map["moves"]
        names <- map["names"]
    }
}

/// Move Stat Change
open class PKMMoveStatChange: Mappable {
    
    /// The amount of change
    open var change: Int?
    
    /// The stat being affected
    open var stat: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        change <- map["change"]
        stat <- map["stat"]
    }
}

/// Past Move Stat Values
open class PKMPastMoveStatValues: Mappable {
    
    /// The percent value of how likely this move is to be successful
    open var accuracy: Int?
    
    /// The percent value of how likely it is this moves effect will take effect
    open var effectChance: Int?
    
    /// The base power of this move with a value of 0 if it does not have a base power
    open var power: Int?
    
    /// Power points. The number of times this move can be used
    open var pp: Int?
    
    /// The effect of this move listed in different languages
    open var effectEntries: [PKMVerboseEffect]?
    
    /// The elemental type of this move
    open var type: PKMNamedAPIResource?
    
    /// The version group in which these move stat values were in effect
    open var versionGroup: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        accuracy <- map["accuracy"]
        effectChance <- map["effect_chance"]
        power <- map["power"]
        pp <- map["pp"]
        effectEntries <- map["effect_entries"]
        type <- map["type"]
        versionGroup <- map["version_group"]
    }
}

/// Move Meta Data
open class PKMMoveMetaData: Mappable {
    
    /// The status ailment this move inflicts on its target
    open var ailment: PKMNamedAPIResource?
    
    /// The category of move this move falls under, e.g. damage or ailment
    open var category: PKMNamedAPIResource?
    
    /// The minimum number of times this move hits. Null if it always only hits once.
    open var minHits: Int?
    
    /// The maximum number of times this move hits. Null if it always only hits once.
    open var maxHits: Int?
    
    /// The minimum number of turns this move continues to take effect. Null if it always only lasts one turn.
    open var minTurns: Int?
    
    /// The maximum number of turns this move continues to take effect. Null if it always only lasts one turn.
    open var maxTurns: Int?
    
    /// HP drain (if positive) or Recoil damage (if negative), in percent of damage done
    open var drain: Int?
    
    /// The amount of hp gained by the attacking pokemon, in percent of it's maximum HP
    open var healing: Int?
    
    /// Critical hit rate bonus
    open var critRate: Int?
    
    /// The likelyhood this attack will cause an ailment
    open var ailmentChance: Int?
    
    /// The likelyhood this attack will cause the target pokemon to flinch
    open var flinchEhance: Int?
    
    /// The likelyhood this attack will cause a stat change in the target pokemon
    open var statChance: Int?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
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

/// Ability Effect Change
open class PKMAbilityEffectChange: Mappable {
    
    /// The previous effect of this ability listed in different languages
    open var effectEntries: PKMEffect?
    
    /// The version group in which the previous effect of this ability originated
    open var versionGroup: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        effectEntries <- map["effect_entries"]
        versionGroup <- map["version_group"]
    }
}

/// Contest Combo Detail
open class PKMContestComboDetail: Mappable {
    
    /// A list of moves to use before this move
    open var useBefore: [PKMNamedAPIResource]?
    
    /// A list of moves to use after this move
    open var useAfter: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        useBefore <- map["use_before"]
        useAfter <- map["use_after"]
    }
}

/// Contest Combo Sets
open class PKMContestComboSets: Mappable {
    
    /// A detail of moves this move can be used before or after, granting additional appeal points in contests
    open var normalMove: [PKMContestComboDetail]?
    
    /// A detail of moves this move can be used before or after, granting additional appeal points in super contests
    open var superMove: [PKMContestComboDetail]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        normalMove <- map["normal"]
        superMove <- map["super"]
    }
}

/// Moves are the skills of Pokémon in battle. In battle, a Pokémon uses one move each turn. Some moves (including those learned by Hidden Machine) can be used outside of battle as well, usually for the purpose of removing obstacles or exploring new areas.
open class PKMMove: Mappable {
    
    /// The identifier for this move resource
    open var id: Int?
    
    /// The name for this move resource
    open var name: String?
    
    /// The percent value of how likely this move is to be successful
    open var accuracy: Int?
    
    /// The percent value of how likely it is this moves effect will happen
    open var effect_chance: Int?
    
    /// Power points. The number of times this move can be used
    open var pp: Int?
    
    /// A value between -8 and 8. Sets the order in which moves are executed during battle. See Bulbapedia for greater detail.
    open var priority: Int?
    
    /// The base power of this move with a value of 0 if it does not have a base power
    open var power: Int?
    
    /// A detail of normal and super contest combos that require this move
    open var contestCombos: [PKMContestComboSets]?
    
    /// The type of appeal this move gives a Pokémon when used in a contest
    open var contestType: PKMNamedAPIResource?
    
    /// The effect the move has when used in a contest
    open var contestEffect: PKMNamedAPIResource?
    
    /// The type of damage the move inflicts on the target, e.g. physical
    open var damageClass: PKMNamedAPIResource?
    
    /// The effect of this move listed in different languages
    open var effectEntries: [PKMVerboseEffect]?
    
    /// The list of previous effects this move has had across version groups of the games
    open var effectChanges: [PKMAbilityEffectChange]?
    
    /// The generation in which this move was introduced
    open var generation: PKMNamedAPIResource?
    
    /// Metadata about this move
    open var meta: PKMMoveMetaData?
    
    /// The name of this move listed in different languages
    open var names: [PKMName]?
    
    /// A list of move resource value changes across ersion groups of the game
    open var pastValues: [PKMPastMoveStatValues]?
    
    /// A list of stats this moves effects and how much it effects them
    open var statChanges: [PKMMoveStatChange]?
    
    /// The effect the move has when used in a super contest
    open var superContestEffect: PKMAPIResource?
    
    /// The type of target that will recieve the effects of the attack
    open var target: PKMNamedAPIResource?
    
    /// The elemental type of this move	NamedAPIResource
    open var type: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["name"]
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

/// Pockets within the players bag used for storing items by category.
open class PKMItemPocket: Mappable {
    
    /// The identifier for this item pocket resource
    open var id: Int?
    
    /// The name for this item pocket resource
    open var name: String?
    
    /// A list of item categories that are relevent to this item pocket
    open var categories: [PKMNamedAPIResource]?
    
    /// The name of this item pocket listed in different languages
    open var names: [PKMName]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        categories <- map["categories"]
        names <- map["names"]
    }
}

/// Effect
open class PKMEffect: Mappable {
    
    /// The localized effect text for an API resource in a specific language
    open var effect: String?
    
    /// The language this effect is in
    open var language: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        effect <- map["effect"]
        language <- map["language"]
    }
}

/// The various effects of the move "Fling" when used with different items.
open class PKMItemFlingEffect: Mappable {
    
    /// The identifier for this fling effect resource
    open var id: Int?
    
    /// The name for this fling effect resource
    open var name: String?
    
    /// The result of this fling effect listed in different languages
    open var effectEntries: [PKMEffect]?
    
    /// A list of items that have this fling effect	list
    open var items: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        effectEntries <- map["effect_entries"]
        items <- map["items"]
    }
}

/// Item categories determine where items will be placed in the players bag.
open class PKMItemCategory: Mappable {
    
    /// The identifier for this item category resource
    open var id: Int?
    
    /// The name for this item category resource
    open var name: String?
    
    /// A list of items that are a part of this category
    open var items: [PKMNamedAPIResource]?
    
    /// The name of this item category listed in different languages
    open var names: [PKMName]?
    
    /// The pocket items in this category would be put in
    open var pocket: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        items <- map["items"]
        names <- map["names"]
        pocket <- map["pocket"]
    }
}

/// Item attributes define particular aspects of items, e.g. "usable in battle" or "consumable".
open class PKMItemAttribute: Mappable {
    
    /// The identifier for this item attribute resource
    open var id: Int?
    
    /// The name for this item attribute resource
    open var name: String?
    
    /// A list of items that have this attribute
    open var items: [PKMNamedAPIResource]?
    
    /// The name of this item attribute listed in different languages
    open var names: [PKMName]?
    
    /// The description of this item attribute listed in different languages
    open var descriptions: [PKMDescription]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        items <- map["items"]
        names <- map["names"]
        descriptions <- map["descriptions"]
    }
}

/// Verbose Effect
open class PKMVerboseEffect: Mappable {
    
    /// The localized effect text for an API resource in a specific language
    open var effect: String?
    
    /// The localized effect text in brief
    open var shortEffect: String?
    
    /// The language this effect is in
    open var language: Bool?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        effect <- map["effect"]
        shortEffect <- map["short_effect"]
        language <- map["language"]
    }
}

/// Version Group Flavor Text
open class PKMVersionGroupFlavorText: Mappable {
    
    /// The localized name for an API resource in a specific language
    open var text: String?
    
    /// The language this name is in
    open var language: PKMNamedAPIResource?
    
    /// The version group which uses this flavor text
    open var versionGroup: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        text <- map["text"]
        language <- map["language"]
        versionGroup <- map["version_group"]
    }
}

/// Generation Game Index
open class PKMGenerationGameIndex: Mappable {
    
    /// The internal id of an API resource within game data
    open var gameIndex: Int?
    
    /// The generation relevent to this game index
    open var generation: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        gameIndex <- map["game_index"]
        generation <- map["generation"]
    }
}

/// Item Sprites
open class PKMItemSprites: Mappable {
    /// The default depiction of this item
    open var defaultDepiction: String?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        defaultDepiction <- map["default"]
    }
}


/// API Referenced Resource
open class PKMAPIResource: Mappable {
    /// The URL of the referenced resource
    open var url: String?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        url <- map["url"]
    }
}

/// An item is an object in the games which the player can pick up, keep in their bag, and use in some manner. They have various uses, including healing, powering up, helping catch Pokémon, or to access a new area.
open class PKMItem: Mappable {
    
    /// The identifier for this item resource
    open var id: Int?
    
    /// The name for this item resource
    open var name: String?
    
    /// The price of this item in stores
    open var cost: Int?
    
    /// The power of the move Fling when used with this item.
    open var fling_power: Int?
    
    /// The effect of the move Fling when used with this item
    open var fling_effect: PKMNamedAPIResource?
    
    /// A list of attributes this item has
    open var attributes: [PKMNamedAPIResource]?
    
    /// The category of items this item falls into
    open var category: PKMNamedAPIResource?
    
    /// The effect of this ability listed in different languages
    open var effect_entries: [PKMVerboseEffect]?
    
    /// The flavor text of this ability listed in different languages
    open var flavor_text_entries: [PKMVersionGroupFlavorText]?
    
    /// A list of game indices relevent to this item by generation
    open var game_indices: [PKMGenerationGameIndex]?
    
    /// The name of this item listed in different languages
    open var names: [PKMName]?
    
    /// A set of sprites used to depict this item in the game
    open var sprites: PKMItemSprites?
    
    /// A list of Pokémon that might be found in the wild holding this item
    open var held_by_pokemon: [PKMNamedAPIResource]?
    
    /// An evolution chain this item requires to produce a bay during mating
    open var baby_trigger_for: [PKMAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
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

/// Version groups categorize highly similar versions of the games.
open class PKMVersionGroup: Mappable {
    
    /// The identifier for this version group resource
    open var id: Int?
    
    /// The name for this version group resource
    open var name: String?
    
    /// Order for sorting. Almost by date of release, except similar versions are grouped together.
    open var order: Int?
    
    /// The generation this version was introduced in
    open var generation: [PKMNamedAPIResource]?
    
    /// A list of methods in which Pokémon can learn moves in this version group
    open var moveLearnMethods: [PKMNamedAPIResource]?
    
    /// The name of this version group listed in different languages
    open var names: [PKMName]?
    
    /// A list of Pokédexes introduces in this version group
    open var pokedexes: [PKMNamedAPIResource]?
    
    /// A list of regions that can be visited in this version group	list
    open var regions: [PKMNamedAPIResource]?
    
    /// The versions this version group owns
    open var versions: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
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

/// Versions of the games, e.g., Red, Blue or Yellow.
open class PKMVersion: Mappable {
    
    /// The identifier for this version resource
    open var id: Int?
    
    /// The name for this version resource
    open var name: String?
    
    /// The name of this version listed in different languages
    open var names: [PKMName]?
    
    /// The version group this version belongs to
    open var versionGroup: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        versionGroup <- map["version_group"]
    }
}

/// Description
open class PKMDescription: Mappable {
    
    /// The localized description for an API resource in a specific language
    open var description: String?
    
    /// The language this name is in
    open var language: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        description <- map["description"]
        language <- map["language"]
    }
}

/// Entry
open class PKMEntry: Mappable {
    
    /// The index of this pokemon species entry within the Pokédex
    open var entryNumber: Int?
    
    /// The Pokémon species being encountered
    open var pokemonSpecies: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        entryNumber <- map["entry_number"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// A Pokédex is a handheld electronic encyclopedia device; one which is capable of recording and retaining information of the various Pokémon in a given region with the exception of the national dex and some smaller dexes related to portions of a region. See Bulbapedia for greater detail.
open class PKMPokedex: Mappable {
    
    /// The identifier for this Pokédex resource
    open var id: Int?
    
    /// The name for this Pokédex resource
    open var name: String?
    
    /// Whether or not this Pokédex originated in the main series of the video games
    open var isMainSeries: Bool?
    
    /// The description of this Pokédex listed in different languages
    open var descriptions: [PKMDescription]?
    
    /// The name of this Pokédex listed in different languages
    open var names: [PKMName]?
    
    /// A list of pokemon catalogued in this Pokédex and their indexes
    open var pokemonEntries: [PKMEntry]?
    
    /// The region this Pokédex catalogues pokemon for
    open var region: PKMNamedAPIResource?
    
    /// A list of version groups this Pokédex is relevent to
    open var versionGroups: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
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

/// A generation is a grouping of the Pokémon games that separates them based on the Pokémon they include. In each generation, a new set of Pokémon, Moves, Abilities and Types that did not exist in the previous generation are released.
open class PKMGeneration: Mappable {
    
    /// The identifier for this generation resource
    open var id: Int?
    
    /// The name for this generation resource
    open var name: String?
    
    /// The name of this generation listed in different languages
    open var names: [PKMName]?
    
    /// A list of abilities that were introduced in this generation
    open var abilities: [PKMNamedAPIResource]?
    
    /// The main region travelled in this generation
    open var mainRegion: PKMNamedAPIResource?
    
    /// A list of moves that were introduced in this generation
    open var moves: [PKMNamedAPIResource]?
    
    /// A list of Pokémon species that were introduced in this generation
    open var pokemonSpecies: [PKMNamedAPIResource]?
    
    /// A list of types that were introduced in this generation
    open var types: [PKMNamedAPIResource]?
    
    /// A list of version groups that were introduced in this generation
    open var versionGroups: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
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

/// Evolution triggers are the events and conditions that cause a pokemon to evolve. Check out Bulbapedia for greater detail.
open class PKMEvolutionTrigger: Mappable {
    
    /// The identifier for this evolution trigger resource
    open var id: Int?
    
    /// The name for this evolution trigger resource
    open var name: String?
    
    /// The name of this evolution trigger listed in different languages
    open var names: [PKMName]?
    
    /// A list of pokemon species that result from this evolution trigger
    open var pokemonSpecies: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Evolution Detail
open class PKMEvolutionDetail: Mappable {
    
    /// The item required to cause evolution this into Pokémon species
    open var item: PKMNamedAPIResource?
    
    /// The type of event that triggers evolution into this Pokémon species
    open var trigger: PKMNamedAPIResource?
    
    /// The gender the evolving Pokémon species must be in order to evolve into this Pokémon species
    open var gender: PKMNamedAPIResource?
    
    /// The item the evolving Pokémon species must be holding during the evolution
    open var heldItem: PKMNamedAPIResource?
    
    /// The move that must be known by the evolving Pokémon species during the evolution trigger event in order to evolve into this Pokémon species
    open var knownMove: PKMNamedAPIResource?
    
    /// The evolving Pokémon species must know a move with this type during the evolution trigger event in order to evolve into this Pokémon species
    open var knownMoveType: PKMNamedAPIResource?
    
    /// The location the evolution must be triggered at.
    open var location: PKMNamedAPIResource?
    
    /// The minimum required level of the evolving Pokémon species to evolve into this Pokémon species
    open var minLevel: Int?
    
    /// The minimum required level of happiness the evolving Pokémon species to evolve into this Pokémon species
    open var minHappiness: Int?
    
    /// The minimum required level of beauty the evolving Pokémon species to evolve into this Pokémon species
    open var minBeauty: Int?
    
    /// The minimum required level of affection the evolving Pokémon species to evolve into this Pokémon species
    open var minAffection: Int?
    
    /// Whether or not it must be raining in the overworld to cause evolution this Pokémon species
    open var needsOverworldRain: Bool?
    
    /// The pokemon species that must be in the players party in order for the evolving Pokémon species to evolve into this Pokémon species
    open var partySpecies: PKMNamedAPIResource?
    
    /// The player must have a pokemon of this type in their party during the evolution trigger event in order for the evolving Pokémon species to evolve into this Pokémon species
    open var partyType: PKMNamedAPIResource?
    
    /// The required relation between the Pokémon's Attack and Defense stats. 1 means Attack > Defense. 0 means Attack = Defense. -1 means Attack < Defense.
    open var relativePhysicalStats: Int?
    
    /// The required time of day. Day or night.
    open var timeOfDay: String?
    
    /// Pokémon species for which this one must be traded.
    open var tradeSpecies: PKMNamedAPIResource?
    
    /// Whether or not the 3DS needs to be turned upside-down as this Pokémon levels up.
    open var turnUpsideDown: Bool?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
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

/// Clain Link
open class PKMClainLink: Mappable {
    
    /// Whether or not this link is for a baby Pokémon. This would only ever be true on the base link.
    open var isBaby: Bool?
    
    /// The Pokémon species at this point in the evolution chain
    open var species: PKMNamedAPIResource?
    
    /// All details regarding the specific details of the referenced Pokémon species evolution
    open var evolutionDetails: PKMEvolutionDetail?
    
    /// A List of chain objects.
    open var evolvesTo: [PKMClainLink]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        isBaby <- map["is_baby"]
        species <- map["species"]
        evolutionDetails <- map["evolution_details"]
        evolvesTo <- map["evolves_to"]
    }
}

/// Evolution Chain
open class PKMEvolutionChain: Mappable {
    
    /// The identifier for this evolution chain resource
    open var id: Int?
    
    /// The item that a Pokémon would be holding when mating that would trigger the egg hatching a baby Pokémon rather than a basic Pokémon
    open var babyTriggerItem: PKMNamedAPIResource?
    
    /// The base chain link object. Each link contains evolution details for a Pokémon in the chain. Each link references the next Pokémon in the natural evolution order.
    open var chain: PKMClainLink?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        babyTriggerItem <- map["baby_trigger_item"]
        chain <- map["chain"]
    }
}


/// Encounter Condition Value
open class PKMEncounterConditionValue: Mappable {
    
    /// The identifier for this encounter condition value resource
    open var id: Int?
    
    /// The name for this encounter condition value resource
    open var name: String?
    
    /// The condition this encounter condition value pertains to
    open var condition: [PKMNamedAPIResource]?
    
    /// The name of this encounter condition value listed in different languages
    open var names: [PKMName]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["flavor_text"]
        name <- map["name"]
        condition <- map["condition"]
        names <- map["names"]
    }
}

/// Encounter Condition
open class PKMEncounterCondition: Mappable {
    
    /// The identifier for this encounter condition resource
    open var id: Int?
    
    /// The name for this encounter condition resource
    open var name: String?
    
    /// A list of possible values for this encounter condition
    open var values: [PKMNamedAPIResource]?
    
    /// The name of this encounter method listed in different languages
    open var names: [PKMName]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["flavor_text"]
        name <- map["name"]
        values <- map["values"]
        names <- map["names"]
    }
}

/// Methods by which the player might can encounter Pokémon in the wild, e.g., walking in tall grass. Check out Bulbapedia for greater detail.
open class PKMEncounterMethod: Mappable {
    
    /// The identifier for this encounter method resource
    open var id: Int?
    
    /// The name for this encounter method resource
    open var name: String?
    
    /// A good value for sorting
    open var order: Int?
    
    /// The name of this encounter method listed in different languages
    open var names: [PKMName]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["flavor_text"]
        name <- map["name"]
        order <- map["order"]
        names <- map["names"]
    }
}

/// Super contest effects refer to the effects of moves when used in super contests.
open class PKMSuperContestEffect: Mappable {
    
    /// The identifier for this super contest effect resource
    open var id: Int?
    
    /// The level of appeal this super contest effect has
    open var appeal: String?
    
    /// The flavor text of this super contest effect listed in different languages
    open var flavorTextEntries: [PKMFlavorText]?
    
    /// A list of moves that have the effect when used in super contests
    open var moves: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["flavor_text"]
        appeal <- map["appeal"]
        flavorTextEntries <- map["flavor_text_entries"]
        moves <- map["moves"]
    }
}


/// Flavor Text
open class PKMFlavorText: Mappable {
    
    /// The localized flavor text for an API resource in a specific language
    open var flavorText: String?
    
    /// The language this name is in
    open var language: PKMName?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        flavorText <- map["flavor_text"]
        language <- map["language"]
    }
}


/// Effect Entry
open class PKMEffectEntry: Mappable {
    
    /// The localized effect text for an API resource in a specific language
    open var effect: String?
    
    /// The language this effect is in
    open var language: PKMName?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        effect <- map["effect"]
        language <- map["language"]
    }
}

/// Contest effects refer to the effects of moves when used in contests.
open class PKMContestEffect: Mappable {
    
    /// The identifier for this contest type resource
    open var id: Int?
    
    /// The base number of hearts the user of this move gets
    open var appeal: String?
    
    /// The base number of hearts the user's opponent loses
    open var jam: Int?
    
    /// The result of this contest effect listed in different languages
    open var effectEntries: [PKMEffectEntry]?
    
    /// The flavor text of this contest effect listed in different languages
    open var flavorTextEntries: [PKMFlavorText]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        appeal <- map["appeal"]
        jam <- map["jam"]
        effectEntries <- map["effect_entries"]
        flavorTextEntries <- map["flavor_text_entries"]
    }
}

/// Contest types are categories judges used to weigh a Pokémon's condition in Pokémon contests. Check out Bulbapedia for greater detail.
open class PKMContestType: Mappable {
    
    /// The identifier for this contest type resource
    open var id: Int?
    
    /// The name for this contest type resource
    open var name: String?
    
    /// The berry flavor that correlates with this contest type
    open var berryFlavor: PKMNamedAPIResource?
    
    /// The name of this contest type listed in different languages
    open var names: [PKMName]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        berryFlavor <- map["berry_flavor"]
        names <- map["results"]
    }
}

/// Paged Object
open class PKMPagedObject: Mappable{
    
    /// The total number of resources abailable from this API
    open var count: Int?
    
    /// The url for the next 'page' in the list
    open var next: String?
    
    /// The url for the previous page in the list
    open var previous: String?
    
    /// List of unnamed API resources
    open var results: [PKMNamedAPIResource]?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        count <- map["count"]
        next <- map["next"]
        previous <- map["previous"]
        results <- map["results"]
    }
}

/// Name
open class PKMName: Mappable{
    
    /// The localized name for an API resource in a specific language
    open var name: String?
    
    /// The language this name is in
    open var language: PKMNamedAPIResource?
    
    required public init?(map: Map) {
        
    }
    
    open func mapping(map: Map) {
        name <- map["name"]
        language <- map["language"]
    }
}


/// Named API Resource
open class PKMNamedAPIResource: Mappable{
    
    /// The name of the referenced resource
    open var name: String?
    
    /// The URL of the referenced resource
    open var url: String?
    
    required public init?(map: Map){
        
    }
    
    open func mapping(map: Map) {
        name <- map["name"]
        url <- map["url"]
    }
}

open class PKMBerryFlavourMap: Mappable{
    
    /// How powerful the referenced flavor is for this berry
    open var potency: Int?
    
    /// The berry with the referenced flavor
    open var flavor: PKMNamedAPIResource?
    
    required public init?(map: Map){
        
    }
    
    open func mapping(map: Map) {
        potency <- map["potency"]
        flavor <- map["flavor"]
    }
}

/// Flavors determine whether a Pokémon will benefit or suffer from eating a berry based on their nature. Check out Bulbapedia for greater detail.
open class PKMBerryFlavour: Mappable{
    
    /// The identifier for this berry flavor resource
    open var id: Int?
    
    /// The name for this berry flavor resource
    open var name: String?
    
    /// A list of the berries with this flavor
    open var berries: [PKMFlavourBerryMap]?
    
    /// The contest type that correlates with this berry flavor
    open var contestType: PKMNamedAPIResource?
    
    /// The name of this berry flavor listed in different languages
    open var names:[PKMName]?
    
    required public init?(map: Map){
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        berries <- map["berries"]
        contestType <- map["contest_type"]
        names <- map["names"]
    }
}

/// Flavour Berry Map
open class PKMFlavourBerryMap: Mappable {
    
    /// How powerful the referenced flavor is for this berry
    open var potency: Int?
    
    /// The berry with the referenced flavor
    open var berry: PKMNamedAPIResource?
    
    required public init?(map: Map){
        
    }
    
    open func mapping(map: Map) {
        potency <- map["potency"]
        berry <- map["berry"]
    }
}

/// Berries are small fruits that can provide HP and status condition restoration, stat enhancement, and even damage negation when eaten by Pokémon. Check out Bulbapedia for greater detail.
open class PKMBerry: Mappable{
    
    /// The identifier for this berry resource
    open var id: Int?
    
    /// The name for this berry resource
    open var name: String?
    
    /// Time it takes the tree to grow one stage, in hours. Berry trees go through four of these growth stages before they can be picked.
    open var growthTime: Int?
    
    /// The maximum number of these berries that can grow on one tree in Generation IV
    open var maxHarvest: Int?
    
    /// The power of the move "Natural Gift" when used with this Berry
    open var naturalGiftPower: Int?
    
    /// The size of this Berry, in millimeters
    open var size: Int?
    
    /// The smoothness of this Berry, used in making Pokéblocks or Poffins
    open var smoothness: Int?
    
    /// The speed at which this Berry dries out the soil as it grows. A higher rate means the soil dries more quickly.
    open var soilDryness: Int?
    
    /// The firmness of this berry, used in making Pokéblocks or Poffins
    open var firmness: PKMNamedAPIResource?
    
    /// A list of references to each flavor a berry can have and the potency of each of those flavors in regard to this berry
    open var flavors: [PKMBerryFlavourMap]?
    
    /// Berries are actually items. This is a reference to the item specific data for this berry.
    open var item: PKMNamedAPIResource?
    
    /// The Type the move "Natural Gift" has when used with this Berry
    open var naturalGiftType: PKMNamedAPIResource?
    
    required public init?(map: Map){
        
    }
    
    open func mapping(map: Map) {
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

/// Berry Firmness
open class PKMBerryFirmness: Mappable {
    
    /// The identifier for this berry firmness resource
    open var id: Int?
    
    /// The name of this berry firmness listed in different languages
    open var berries: [PKMNamedAPIResource]?
    
    /// A list of the berries with this firmness
    open var names: [PKMName]?
    
    /// The name for this berry firmness resource
    open var name: String?
    
    
    required public init?(map: Map){
        
    }
    
    open func mapping(map: Map) {
        id <- map["id"]
        berries <- map["berries"]
        names <- map["names"]
        name <- map["name"]
    }
}

// MARK: -
// MARK: Functions

/**
Fetch Berry list

- returns: A promise with PKMPagedObject
*/
public func fetchBerryList() -> Promise<PKMPagedObject>{
    return Promise { seal in
        let URL = baseURL + "/berry"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    };
}

/**
 Fetch Berry Information
 
 - parameter berryId: Berry ID
 
 - returns: A promise with PKMBerry
 */
public func fetchBerry(_ berryId: String) -> Promise<PKMBerry>{
    return Promise { seal in
        let URL = baseURL + "/berry/" + berryId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMBerry>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
Fetch Berry Firmness list

- returns: A promise with PKMPagedObject
*/
public func fetchBerryFirmnessList() -> Promise<PKMPagedObject>{
    return Promise { seal in
        let URL = baseURL + "/berry-firmness"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Berry Firmness Information
 
 - parameter berryFirmnessId: Berry Firmness ID
 
 - returns: A promise with PKMBerryFirmness
 */
public func fetchBerryFirmness(_ berryFirmnessId: String) -> Promise<PKMBerryFirmness>{
    return Promise { seal in
        let URL = baseURL + "/berry-firmness/" + berryFirmnessId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMBerryFirmness>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Berry Flavours list

- returns: A promise with PKMPagedObject
*/
public func fetchBerryFlavours() -> Promise<PKMPagedObject>{
    return Promise { seal in
        let URL = baseURL + "/berry-flavor"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Berry Flavour Information
 
 - parameter berryFlavourId: Berry Flavour ID
 
 - returns: A promise with PKMBerryFlavour
 */
public func fetchBerryFlavour(_ berryFlavourId: String) -> Promise<PKMBerryFlavour>{
    return Promise { seal in
        let URL = baseURL + "/berry-flavor/" + berryFlavourId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMBerryFlavour>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Contest list

- returns: A promise with PKMPagedObject
*/
public func fetchContestList() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/contest-type"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Contest Type Information
 
 - parameter contestTypeId: Contest Type ID
 
 - returns: A promise with PKMContestType
 */
public func fetchContestType(_ contestTypeId: String) -> Promise<PKMContestType>{
    return Promise { seal in
        let URL = baseURL + "/contest-type/" + contestTypeId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMContestType>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Contest Effects list

- returns: A promise with PKMPagedObject
*/
public func fetchContestEffects() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/contest-effect"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Contest Effect Information
 
 - parameter contestEffectId: Contest Effect ID
 
 - returns: A promise with PKMContestEffect
 */
public func fetchContestEffect(_ contestEffectId: String) -> Promise<PKMContestEffect>{
    return Promise { seal in
        let URL = baseURL + "/contest-effect/" + contestEffectId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMContestEffect>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Super Contest Effects list

- returns: A promise with PKMPagedObject
*/
public func fetchSuperContestEffects() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/contest-effect"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Super Contest Effect Information
 
 - parameter superContestEffectId: Super Contest Effect ID
 
 - returns: A promise with PKMSuperContestEffect
 */
public func fetchSuperContestEffect(_ superContestEffectId: String) -> Promise<PKMSuperContestEffect>{
    return Promise { seal in
        let URL = baseURL + "/super-contest-effect/" + superContestEffectId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMSuperContestEffect>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Encounter Methods list

- returns: A promise with PKMPagedObject
*/
public func fetchEncounterMethods() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/encounter-method"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Encounter Method Information
 
 - parameter encounterMethodId: Encounter Method ID
 
 - returns: A promise with PKMEncounterMethod
 */
public func fetchEncounterMethod(_ encounterMethodId: String) -> Promise<PKMEncounterMethod>{
    return Promise { seal in
        let URL = baseURL + "/encounter-method/" + encounterMethodId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMEncounterMethod>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Encounter Conditions list

- returns: A promise with PKMPagedObject
*/
public func fetchEncounterConditions() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/encounter-condition"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Encounter Condition Information
 
 - parameter encounterConditionId: Encounter Condition ID
 
 - returns: A promise with PKMEncounterCondition
 */
public func fetchEncounterCondition(_ encounterConditionId: String) -> Promise<PKMEncounterCondition>{
    return Promise { seal in
        let URL = baseURL + "/encounter-condition/" + encounterConditionId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMEncounterCondition>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Encounter Condition Values list

- returns: A promise with PKMPagedObject
*/
public func fetchEncounterConditionValues() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/encounter-condition-value"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Encounter Condition Value Information
 
 - parameter encounterConditionValueId: Encounter Condition Value ID
 
 - returns: A promise with PKMEncounterConditionValue
 */
public func fetchEncounterConditionValue(_ encounterConditionValueId: String) -> Promise<PKMEncounterConditionValue>{
    return Promise { seal in
        let URL = baseURL + "/encounter-condition-value/" + encounterConditionValueId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMEncounterConditionValue>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Encounter Chains list

- returns: A promise with PKMPagedObject
*/
public func fetchEvolutionChains() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/evolution-chain"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Evolution Chain Information
 
 - parameter evolutionChainId: Evolution Chain ID
 
 - returns: A promise with PKMEvolutionChain
 */
public func fetchEvolutionChain(_ evolutionChainId: String) -> Promise<PKMEvolutionChain>{
    return Promise { seal in
        let URL = baseURL + "/evolution-chain/" + evolutionChainId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMEvolutionChain>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Encounter Triggers list

- returns: A promise with PKMPagedObject
*/
public func fetchEvolutionTriggers() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/evolution-trigger"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Evolution Trigger Information
 
 - parameter evolutionTriggerId: Evolution Trigger ID
 
 - returns: A promise with PKMEvolutionTrigger
 */
public func fetchEvolutionTrigger(_ evolutionTriggerId: String) -> Promise<PKMEvolutionTrigger>{
    return Promise { seal in
        let URL = baseURL + "/evolution-trigger/" + evolutionTriggerId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMEvolutionTrigger>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Generations list

- returns: A promise with PKMPagedObject
*/
public func fetchGenerations() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/generation"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Generation Information
 
 - parameter generationId: Generation ID
 
 - returns: A promise with PKMGeneration
 */
public func fetchGeneration(_ generationId: String) -> Promise<PKMGeneration>{
    return Promise { seal in
        let URL = baseURL + "/generation/" + generationId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMGeneration>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokedexes list

- returns: A promise with PKMPagedObject
*/
public func fetchPokedexes() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/pokedex"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokedex Information
 
 - parameter pokedexId: Pokedex ID
 
 - returns: A promise with PKMPokedex
 */
public func fetchPokedex(_ pokedexId: String) -> Promise<PKMPokedex>{
    return Promise { seal in
        let URL = baseURL + "/pokedex/" + pokedexId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPokedex>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Versions list

- returns: A promise with PKMPagedObject
*/
public func fetchVersions() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/version"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Version Information
 
 - parameter versionId: Version ID
 
 - returns: A promise with PKMVersion
 */
public func fetchVersion(_ versionId: String) -> Promise<PKMVersion>{
    return Promise { seal in
        let URL = baseURL + "/version/" + versionId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMVersion>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Versions Groups list

- returns: A promise with PKMPagedObject
*/
public func fetchVersionGroups() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/version-group"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Version Group Information
 
 - parameter versionGroupId: Version Group ID
 
 - returns: A promise with PKMVersionGroup
 */
public func fetchVersionGroup(_ versionGroupId: String) -> Promise<PKMVersionGroup>{
    return Promise { seal in
        let URL = baseURL + "/version-group/" + versionGroupId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMVersionGroup>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Items list

- returns: A promise with PKMPagedObject
*/
public func fetchItems() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/item"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Item Information
 
 - parameter itemId: Item ID
 
 - returns: A promise with PKMItem
 */
public func fetchItem(_ itemId: String) -> Promise<PKMItem>{
    return Promise { seal in
        let URL = baseURL + "/item/" + itemId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMItem>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Item Attributes list

- returns: A promise with PKMPagedObject
*/
public func fetchItemAttributes() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/item-attribute"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Item Attribute Information
 
 - parameter itemAttributeId: Item Attribute ID
 
 - returns: A promise with PKMItemAttribute
 */
public func fetchItemAttribute(_ itemAttributeId: String) -> Promise<PKMItemAttribute>{
    return Promise { seal in
        let URL = baseURL + "/item-attribute/" + itemAttributeId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMItemAttribute>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Item Categories list

- returns: A promise with PKMPagedObject
*/
public func fetchItemCategories() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/item-category"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Item Category Information
 
 - parameter itemCategoryId: Item Category ID
 
 - returns: A promise with PKMItemCategory
 */
public func fetchItemCategory(_ itemCategoryId: String) -> Promise<PKMItemCategory>{
    return Promise { seal in
        let URL = baseURL + "/item-category/" + itemCategoryId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMItemCategory>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Item Fling Effects list

- returns: A promise with PKMPagedObject
*/
public func fetchItemFlingEffects() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/item-fling-effect"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Item Fling Effect Information
 
 - parameter itemFlingEffectsId: Item Fling Effect ID
 
 - returns: A promise with PKMItemFlingEffect
 */
public func fetchItemFlingEffect(_ itemFlingEffectsId: String) -> Promise<PKMItemFlingEffect>{
    return Promise { seal in
        let URL = baseURL + "/item-fling-effect/" + itemFlingEffectsId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMItemFlingEffect>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Item Pockets list

- returns: A promise with PKMPagedObject
*/
public func fetchItemPockets() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/item-pocket"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Item Pocket Information
 
 - parameter itemPocketId: Item Pocket ID
 
 - returns: A promise with PKMItemPocket
 */
public func fetchItemPocket(_ itemPocketId: String) -> Promise<PKMItemPocket>{
    return Promise { seal in
        let URL = baseURL + "/item-pocket/" + itemPocketId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMItemPocket>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Moves list

- returns: A promise with PKMPagedObject
*/
public func fetchMoves() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/move"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Move Information
 
 - parameter moveId: Move ID
 
 - returns: A promise with PKMMove
 */
public func fetchMove(_ moveId: String) -> Promise<PKMMove>{
    return Promise { seal in
        let URL = baseURL + "/move/" + moveId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMMove>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Moves Ailments list

- returns: A promise with PKMPagedObject
*/
public func fetchMoveAilments() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/move-ailment"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Move Ailment Information
 
 - parameter moveAilmentId: Move Ailment ID
 
 - returns: A promise with PKMMoveAilment
 */
public func fetchMoveAilment(_ moveAilmentId: String) -> Promise<PKMMoveAilment>{
    return Promise { seal in
        let URL = baseURL + "/move-ailment/" + moveAilmentId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMMoveAilment>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Moves Battle Styles list

- returns: A promise with PKMPagedObject
*/
public func fetchMoveBattleStyles() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/move-battle-style"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Move Battle Style Information
 
 - parameter moveBattleStyleId: Move Battle Style ID
 
 - returns: A promise with PKMMoveBattleStyle
 */
public func fetchMoveBattleStyle(_ moveBattleStyleId: String) -> Promise<PKMMoveBattleStyle>{
    return Promise { seal in
        let URL = baseURL + "/move-battle-style/" + moveBattleStyleId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMMoveBattleStyle>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Moves Categories list

- returns: A promise with PKMPagedObject
*/
public func fetchMoveCategories() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/move-category"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Move Category Information
 
 - parameter moveCategoryId: Move Category ID
 
 - returns: A promise with PKMMoveCategory
 */
public func fetchMoveCategory(_ moveCategoryId: String) -> Promise<PKMMoveCategory>{
    return Promise { seal in
        let URL = baseURL + "/move-category/" + moveCategoryId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMMoveCategory>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Moves Damage Classes list

- returns: A promise with PKMPagedObject
*/
public func fetchMoveDamageClasses() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/move-damage-class"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Move Damage Class Information
 
 - parameter moveDamageClassId: Move Damage Class ID
 
 - returns: A promise with PKMMoveDamageClass
 */
public func fetchMoveDamageClass(_ moveDamageClassId: String) -> Promise<PKMMoveDamageClass>{
    return Promise { seal in
        let URL = baseURL + "/move-damage-class/" + moveDamageClassId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMMoveDamageClass>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Moves Learn Methods list

- returns: A promise with PKMPagedObject
*/
public func fetchMoveLearnMethods() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/move-learn-method"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Move Learn Method Information
 
 - parameter moveLearnMethodId: Move Learn Method ID
 
 - returns: A promise with PKMMoveLearnMethod
 */
public func fetchMoveLearnMethod(_ moveLearnMethodId: String) -> Promise<PKMMoveLearnMethod>{
    return Promise { seal in
        let URL = baseURL + "/move-learn-method/" + moveLearnMethodId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMMoveLearnMethod>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Moves Targets list

- returns: A promise with PKMPagedObject
*/
public func fetchMoveTargets() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/move-target"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Move Target Information
 
 - parameter moveTargetId: Move Target ID
 
 - returns: A promise with PKMMoveTarget
 */
public func fetchMoveTarget(_ moveTargetId: String) -> Promise<PKMMoveTarget>{
    return Promise { seal in
        let URL = baseURL + "/move-target/" + moveTargetId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMMoveTarget>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Locations list

- returns: A promise with PKMPagedObject
*/
public func fetchLocations() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/location"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Location Information
 
 - parameter locationId: Location ID
 
 - returns: A promise with PKMLocation
 */
public func fetchLocation(_ locationId: String) -> Promise<PKMLocation>{
    return Promise { seal in
        let URL = baseURL + "/location/" + locationId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMLocation>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Location Area list

- returns: A promise with PKMPagedObject
*/
public func fetchLocationAreas() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/location-area"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Location Area Information
 
 - parameter locationAreaId: Location Area ID
 
 - returns: A promise with PKMLocationArea
 */
public func fetchLocationArea(_ locationAreaId: String) -> Promise<PKMLocationArea>{
    return Promise { seal in
        let URL = baseURL + "/location-area/" + locationAreaId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMLocationArea>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pal Park Areas list

- returns: A promise with PKMPagedObject
*/
public func fetchPalParkAreas() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/pal-park-area"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pal Park Area Information
 
 - parameter palParkAreaId: Pal Park Area ID
 
 - returns: A promise with PKMPalParkArea
 */
public func fetchPalParkArea(_ palParkAreaId: String) -> Promise<PKMPalParkArea>{
    return Promise { seal in
        let URL = baseURL + "/pal-park-area/" + palParkAreaId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPalParkArea>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Regions list

- returns: A promise with PKMPagedObject
*/
public func fetchRegions() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/region"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Region Information
 
 - parameter regionId: Region ID
 
 - returns: A promise with PKMRegion
 */
public func fetchRegion(_ regionId: String) -> Promise<PKMRegion>{
    return Promise { seal in
        let URL = baseURL + "/region/" + regionId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMRegion>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Abilities list

- returns: A promise with PKMPagedObject
*/
public func fetchAbilities() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/ability"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Ability Information
 
 - parameter abilityId: Ability ID
 
 - returns: A promise with PKMAbility
 */
public func fetchAbility(_ abilityId: String) -> Promise<PKMAbility>{
    return Promise { seal in
        let URL = baseURL + "/ability/" + abilityId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMAbility>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Characteristics list

- returns: A promise with PKMPagedObject
*/
public func fetchCharacteristics() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/characteristic"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Characteristic Information
 
 - parameter characteristicId: Characteristic ID
 
 - returns: A promise with PKMCharacteristic
 */
public func fetchCharacteristic(_ characteristicId: String) -> Promise<PKMCharacteristic>{
    return Promise { seal in
        let URL = baseURL + "/characteristic/" + characteristicId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMCharacteristic>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Egg Group list

- returns: A promise with PKMPagedObject
*/
public func fetchEggGroup() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/egg-group"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Egg Group Information
 
 - parameter eggGroupId: Egg Group ID
 
 - returns: A promise with PKMEggGroup
 */
public func fetchEggGroup(_ eggGroupId: String) -> Promise<PKMEggGroup>{
    return Promise { seal in
        let URL = baseURL + "/egg-group/" + eggGroupId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMEggGroup>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Genders list

- returns: A promise with PKMPagedObject
*/
public func fetchGenders() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/gender"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Gender Information
 
 - parameter genderId: Gender ID
 
 - returns: A promise with PKMGender
 */
public func fetchGender(_ genderId: String) -> Promise<PKMGender>{
    return Promise { seal in
        let URL = baseURL + "/gender/" + genderId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMGender>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Growth Rate list

- returns: A promise with PKMPagedObject
*/
public func fetchGrowthRates() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/growth-rate"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Growth Rate Information
 
 - parameter growthRateId: Growth Rate ID
 
 - returns: A promise with PKMGrowthRate
 */
public func fetchGrowthRate(_ growthRateId: String) -> Promise<PKMGrowthRate>{
    return Promise { seal in
        let URL = baseURL + "/growth-rate/" + growthRateId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMGrowthRate>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Nature list

- returns: A promise with PKMPagedObject
*/
public func fetchNatures() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/nature"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Nature Information
 
 - parameter natureId: Nature ID
 
 - returns: A promise with PKMNature
 */
public func fetchNature(_ natureId: String) -> Promise<PKMNature>{
    return Promise { seal in
        let URL = baseURL + "/nature/" + natureId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMNature>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokeathlon Stat list

- returns: A promise with PKMPagedObject
*/
public func fetchPokeathlonStats() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/pokeathlon-stat"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokeathlon Stat Information
 
 - parameter pokeathlonStatId: Pokeathlon Stat ID
 
 - returns: A promise with PKMPokeathlonStat
 */
public func fetchPokeathlonStat(_ pokeathlonStatId: String) -> Promise<PKMPokeathlonStat>{
    return Promise { seal in
        let URL = baseURL + "/pokeathlon-stat/" + pokeathlonStatId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPokeathlonStat>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokemon list

- returns: A promise with PKMPagedObject
*/
public func fetchPokemons() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/pokemon"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokemon Information
 
 - parameter pokemonId: Pokemon( ID
 
 - returns: A promise with PKMPokemon
 */
public func fetchPokemon(_ pokemonId: String) -> Promise<PKMPokemon>{
    return Promise { seal in
        let URL = baseURL + "/pokemon/" + pokemonId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPokemon>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokemon Color list

- returns: A promise with PKMPagedObject
*/
public func fetchPokemonColors() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/pokemon-color"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokemon Color Information
 
 - parameter pokemonColorId: Pokemon Color ID
 
 - returns: A promise with PKMPokemonColor
 */
public func fetchPokemonColor(_ pokemonColorId: String) -> Promise<PKMPokemonColor>{
    return Promise { seal in
        let URL = baseURL + "/pokemon-color/" + pokemonColorId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPokemonColor>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokemon Form list

- returns: A promise with PKMPagedObject
*/
public func fetchPokemonForms() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/pokemon-form"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokemon Form Information
 
 - parameter pokemonFormId: Pokemon Form ID
 
 - returns: A promise with PKMPokemonForm
 */
public func fetchPokemonForm(_ pokemonFormId: String) -> Promise<PKMPokemonForm>{
    return Promise { seal in
        let URL = baseURL + "/pokemon-form/" + pokemonFormId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPokemonForm>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokemon Habitat list

- returns: A promise with PKMPagedObject
*/
public func fetchPokemonHabitats() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/pokemon-habitat"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokemon Habitat Information
 
 - parameter pokemonHabitatId: Pokemon Habitat ID
 
 - returns: A promise with PKMPokemonHabitat
 */
public func fetchPokemonHabitat(_ pokemonHabitatId: String) -> Promise<PKMPokemonHabitat>{
    return Promise { seal in
        let URL = baseURL + "/pokemon-habitat/" + pokemonHabitatId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPokemonHabitat>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokemon Shape list

- returns: A promise with PKMPagedObject
*/
public func fetchPokemonShapes() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/pokemon-shape"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokemon Shape Information
 
 - parameter pokemonShapeId: Pokemon Shape ID
 
 - returns: A promise with PKMPokemonShape
 */
public func fetchPokemonShape(_ pokemonShapeId: String) -> Promise<PKMPokemonShape>{
    return Promise { seal in
        let URL = baseURL + "/pokemon-shape/" + pokemonShapeId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPokemonShape>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokemon Species list

- returns: A promise with PKMPagedObject
*/
public func fetchPokemonSpecies() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/pokemon-species"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokemon Species Information
 
 - parameter pokemonSpeciesId: Pokemon Species ID
 
 - returns: A promise with PKMPokemonSpecies
 */
public func fetchPokemonSpecies(_ pokemonSpeciesId: String) -> Promise<PKMPokemonSpecies>{
    return Promise { seal in
        let URL = baseURL + "/pokemon-species/" + pokemonSpeciesId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPokemonSpecies>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Stat list

- returns: A promise with PKMPagedObject
*/
public func fetchStats() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/stat"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Stat Information
 
 - parameter statId: Stat ID
 
 - returns: A promise with PKMStat
 */
public func fetchStat(_ statId: String) -> Promise<PKMStat>{
    return Promise { seal in
        let URL = baseURL + "/stat/" + statId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMStat>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Type list

- returns: A promise with PKMPagedObject
*/
public func fetchType() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/type"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Type Information
 
 - parameter typeId: Type ID
 
 - returns: A promise with PKMType
 */
public func fetchType(_ typeId: String) -> Promise<PKMType>{
    return Promise { seal in
        let URL = baseURL + "/type/" + typeId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMType>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Languages list

- returns: A promise with PKMPagedObject
*/
public func fetchLanguages() -> Promise<PKMPagedObject> {
    return Promise { seal in
        let URL = baseURL + "/language"
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMPagedObject>) in
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Language Information
 
 - parameter languageId: Language ID
 
 - returns: A promise with PKMLanguage
 */
public func fetchLanguage(_ languageId: String) -> Promise<PKMLanguage>{
    return Promise { seal in
        let URL = baseURL + "/language/" + languageId
        
        Alamofire.request(URL, method: .get).responseObject { (response: DataResponse<PKMLanguage>) in
            
            if (response.result.isSuccess) {
                seal.fulfill(response.result.value!)
            }else{
                seal.reject(response.result.error!)
            }
            
        }
    }
}
