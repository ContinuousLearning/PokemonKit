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

// MARK: Classes

/// Languages for translations of API resource information.
public class PKMLanguage: Mappable {
    
    /// The identifier for this language resource
    public var id: Int?
    
    /// The name for this language resource
    public var name: String?
    
    /// Whether or not the games are published in this language
    public var official: Bool?
    
    /// The two-letter code of the country where this language is spoken. Note that it is not unique.
    public var iso639: String?
    
    /// The two-letter code of the language. Note that it is not unique.
    public var iso3166: String?
    
    /// The name of this language listed in different languages
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        official <- map["official"]
        iso639 <- map["iso639"]
        iso3166 <- map["iso3166"]
        names <- map["names"]
    }
}

/// Pokemon Type
public class PKMTypePokemon: Mappable {
    
    /// The order the Pokémon's types are listed in
    public var slot: Int?
    
    /// The Pokémon that has the referenced type
    public var pokemon: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        slot <- map["slot"]
        pokemon <- map["pokemon"]
    }
}

/// Pokemon Type Relations
public class PKMTypeRelations: Mappable {
    
    /// A list of types this type has no effect on
    public var noDamageTo: [PKMNamedAPIResource]?
    
    /// A list of types this type is not very effect against
    public var halfDamageTo: [PKMNamedAPIResource]?
    
    /// A list of types this type is very effect against
    public var doubleDamageTo: [PKMNamedAPIResource]?
    
    /// A list of types that have no effect on this type
    public var noDamageFrom: [PKMNamedAPIResource]?
    
    /// A list of types that are not very effective against this type
    public var halfDamageFrom: [PKMNamedAPIResource]?
    
    /// A list of types that are very effective against this type
    public var doubleDamageFrom: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        noDamageTo <- map["no_damage_to"]
        halfDamageTo <- map["half_damage_to"]
        doubleDamageTo <- map["double_damage_to"]
        noDamageFrom <- map["no_damage_from"]
        halfDamageFrom <- map["half_damage_from"]
        doubleDamageFrom <- map["double_damage_from"]
    }
}

/// Types are properties for Pokémon and their moves. Each type has three properties: which types of Pokémon it is super effective against, which types of Pokémon it is not very effective against, and which types of Pokémon it is completely ineffective against.
public class PKMType: Mappable {
    
    /// The identifier for this type resource
    public var id: Int?
    
    /// The name for this type resource
    public var name: String?
    
    /// A detail of how effective this type is toward others and vice versa
    public var damageRelations: PKMTypeRelations?
    
    /// A list of game indices relevent to this item by generation
    public var gameIndices: [PKMGenerationGameIndex]?
    
    /// The generation this type was introduced in
    public var generation: PKMNamedAPIResource?
    
    /// The class of damage inflicted by this type
    public var moveDamageClass: PKMNamedAPIResource?
    
    /// The name of this type listed in different languages
    public var names: [PKMName]?
    
    /// A list of details of Pokémon that have this type
    public var pokemon: [PKMTypePokemon]?
    
    /// A list of moves that have this type
    public var moves: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
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
public class PKMNatureStatAffectSets: Mappable {
    
    /// A list of natures and how they change the referenced stat
    public var increase: [PKMNatureStatAffect]?
    
    /// A list of nature sand how they change the referenced stat
    public var decrease: [PKMNatureStatAffect]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        increase <- map["increase"]
        decrease <- map["decrease"]
    }
}


/// Nature Stat Affect
public class PKMNatureStatAffect: Mappable {
    
    /// The maximum amount of change to the referenced stat
    public var maxChange: Int?
    
    /// The nature causing the change
    public var nature: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        maxChange <- map["max_change"]
        nature <- map["nature"]
    }
}

/// Move Stat Affect
public class PKMMoveStatAffect: Mappable {
    
    /// The maximum amount of change to the referenced stat
    public var maxChange: Int?
    
    /// The move causing the change
    public var move: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        maxChange <- map["max_change"]
        move <- map["move"]
    }
}

/// Move Stat Affect Sets
public class PKMMoveStatAffectSets: Mappable {
    
    /// A list of natures and how they change the referenced stat
    public var increase: [PKMMoveStatAffect]?
    
    /// A list of nature sand how they change the referenced stat
    public var decrease: [PKMMoveStatAffect]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        increase <- map["increase"]
        decrease <- map["decrease"]
    }
}

/// Stats determine certain aspects of battles. Each Pokémon has a value for each stat which grows as they gain levels and can be altered momentarily by effects in battles.
public class PKMStat: Mappable {
    
    /// The identifier for this stat resource
    public var id: Int?
    
    /// The name for this stat resource
    public var name: String?
    
    /// ID the games use for this stat
    public var gameIndex: Int?
    
    /// Whether this stat only exists within a battle
    public var isBattleOnly: Bool?
    
    /// A detail of moves which affect this stat positively or negatively
    public var affectingMoves: PKMMoveStatAffectSets?
    
    //// A detail of natures which affect this stat positively or negatively
    public var affectingNatures: PKMNatureStatAffectSets?
    
    /// A list of characteristics that are set on a Pokémon when its highest base stat is this stat
    public var characteristics: [PKMAPIResource]?
    
    /// The class of damage this stat is directly related to
    public var moveDamageClass: PKMNamedAPIResource?
    
    /// The name of this region listed in different languages
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
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
public class PKMPokemonSpeciesDexEntry: Mappable {
    
    /// The index number within the Pokédex
    public var entryNumber: Int?
    
    /// The Pokédex the referenced Pokémon species can be found in
    public var name: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        entryNumber <- map["entry_number"]
        name <- map["name"]
    }
}

/// PalPark Encounter Area
public class PKMPalParkEncounterArea: Mappable {
    
    /// The base score given to the player when the referenced Pokémon is caught during a pal park run
    public var baseScore: Int?
    
    /// The base rate for encountering the referenced Pokémon in this pal park area
    public var rate: Int?
    
    /// The pal park area where this encounter happens
    public var area: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        baseScore <- map["base_score"]
        rate <- map["rate"]
        area <- map["area"]
    }
}

/// Pokemon Species Flavor Text
public class PKMPokemonSpeciesFlavorText: Mappable {
    
    /// The localized flavor text for an API resource in a specific language
    public var flavorText: String?
    
    /// The language this name is in
    public var language: PKMNamedAPIResource?
    
    /// The version this flavor text entry is used in
    public var version: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        flavorText <- map["flavor_text"]
        language <- map["language"]
        version <- map["version"]
    }
}

/// Genus
public class PKMGenus: Mappable {
    
    /// The localized genus for the referenced pokemon species
    public var genus: String?
    
    /// The language this genus is in
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        genus <- map["genus"]
        language <- map["language"]
    }
}

/// A Pokémon Species forms the basis for at least one Pokémon. Attributes of a Pokémon species are shared across all varieties of Pokémon within the species. A good example is Wormadam; Wormadam is the species which can be found in three different varieties, Wormadam-Trash, Wormadam-Sandy and Wormadam-Plant.
public class PKMPokemonSpecies: Mappable {
    
    /// The identifier for this Pokémon species resource
    public var id: Int?
    
    /// The name for this Pokémon species resource
    public var name: String?
    
    /// The order in which species should be sorted. Based on National Dex order, except families are grouped together and sorted by stage.
    public var order: Int?
    
    /// The chance of this Pokémon being female, in eighths; or -1 for genderless
    public var genderRate: Int?
    
    /// The base capture rate; up to 255. The higher the number, the easier the catch.
    public var captureRate: Int?
    
    /// The happiness when caught by a normal Pokéball; up to 255. The higher the number, the happier the Pokémon.
    public var baseHappiness: Int?
    
    /// Whether or not this is a baby Pokémon
    public var isBaby: Bool?
    
    /// Initial hatch counter: one must walk 255 × (hatch_counter + 1) steps before this Pokémon's egg hatches, unless utilizing bonuses like Flame Body's
    public var hatchCounter: Int?
    
    /// Whether or not this Pokémon can have different genders
    public var hasGenderDifferences: Bool?
    
    /// Whether or not this Pokémon has multiple forms and can switch between them
    public var formsSwitchable: Bool?
    
    /// The rate at which this Pokémon species gains levels
    public var growthRate: PKMNamedAPIResource?
    
    /// A list of pokedexes and the indexes reserved within them for this Pokémon species
    public var pokedexNumbers: [PKMPokemonSpeciesDexEntry]?
    
    /// A list of egg groups this Pokémon species is a member of
    public var eggGroups: [PKMNamedAPIResource]?
    
    /// The color of this Pokémon for gimmicky Pokédex search
    public var color: PKMNamedAPIResource?
    
    /// The shape of this Pokémon for gimmicky Pokédex search
    public var shape: PKMNamedAPIResource?
    
    /// The Pokémon species that evolves into this pokemon_species
    public var evolvesFromSpecies: PKMNamedAPIResource?
    
    /// The evolution chain this Pokémon species is a member of
    public var evolutionChain: PKMAPIResource?
    
    /// The habitat this Pokémon species can be encountered in
    public var habitat: PKMNamedAPIResource?
    
    /// The generation this Pokémon species was introduced in
    public var generation: PKMNamedAPIResource?
    
    /// The name of this Pokémon species listed in different languages
    public var names: [PKMName]?
    
    /// A list of encounters that can be had with this Pokémon species in pal park
    public var palParkEncounters: [PKMPalParkEncounterArea]?
    
    /// The flavor text of this flavor text listed in different languages
    public var flavorTextEntries: [PKMPokemonSpeciesFlavorText]?
    
    /// Descriptions of different forms Pokémon take on within the Pokémon species
    public var formDescriptions: [PKMDescription]?
    
    /// The genus of this Pokémon species listed in multiple languages
    public var genera: [PKMGenus]?
    
    /// A list of the Pokémon that exist within this Pokémon species
    public var varieties: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
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
public class PKMAwesomeName: Mappable {
    
    /// The localized "scientific" name for an API resource in a specific language
    public var awesomeName: String?
    
    /// The language this "scientific" name is in
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        awesomeName <- map["awesome_name"]
        language <- map["language"]
    }
}

/// Shapes used for sorting Pokémon in a Pokédex.
public class PKMPokemonShape: Mappable {
    
    /// The identifier for this Pokémon shape
    public var id: Int?
    
    /// The name for this Pokémon shape resource
    public var name: String?
    
    /// The "scientific" name of this Pokémon shape listed in different languages
    public var awesomeNames: [PKMAwesomeName]?
    
    /// The name of this Pokémon shape listed in different languages
    public var names: [PKMName]?
    
    /// A list of the Pokémon species that have this shape
    public var pokemonSpecies: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        awesomeNames <- map["awesome_names"]
        names <- map["names"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Habitats are generally different terrain Pokémon can be found in but can also be areas designated for rare or legendary Pokémon.
public class PKMPokemonHabitat: Mappable {
    
    /// The identifier for this Pokémon habitat resource
    public var id: Int?
    
    /// The name for this Pokémon habitat resource
    public var name: String?
    
    /// The name of this Pokémon habitat listed in different languages
    public var names: [PKMName]?
    
    /// A list of the Pokémon species that can be found in this habitat
    public var pokemonSpecies: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Pokemon Form Sprites
public class PKMPokemonFormSprites: Mappable {
    
    /// The default depiction of this Pokémon form from the front in battle
    public var frontDefault: String?
    
    /// The shiny depiction of this Pokémon form from the front in battle
    public var frontShiny: String?
    
    /// The default depiction of this Pokémon form from the back in battle
    public var backDefault: String?
    
    /// The shiny depiction of this Pokémon form from the back in battle
    public var backShiny: String?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        frontDefault <- map["front_default"]
        frontShiny <- map["front_shiny"]
        backDefault <- map["back_default"]
        backShiny <- map["back_shiny"]
    }
}

/// Some Pokémon have the ability to take on different forms. At times, these differences are purely cosmetic and have no bearing on the difference in the Pokémon's stats from another; however, several Pokémon differ in stats (other than HP), type, and Ability depending on their form.
public class PKMPokemonForm: Mappable {
    
    /// The identifier for this Pokémon form resource
    public var id: Int?
    
    /// The name for this Pokémon form resource
    public var name: String?
    
    /// The order in which forms should be sorted within all forms. Multiple forms may have equal order, in which case they should fall back on sorting by name.
    public var order: Int?
    
    /// The order in which forms should be sorted within a species' forms
    public var formOrder: Int?
    
    /// True for exactly one form used as the default for each Pokémon
    public var isDefault: Bool?
    
    /// Whether or not this form can only happen during battle
    public var isBattleOnly: Bool?
    
    /// Whether or not this form requires mega evolution
    public var isMega: Bool?
    
    /// The name of this form
    public var formName: String?
    
    /// The Pokémon that can take on this form
    public var pokemon: PKMNamedAPIResource?
    
    /// A set of sprites used to depict this Pokémon form in the game
    public var sprites: PKMPokemonFormSprites?
    
    /// The version group this Pokémon form was introduced in
    public var versionGroup: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
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
public class PKMPokemonColor: Mappable {
    
    /// The identifier for this Pokémon color resource
    public var id: Int?
    
    /// The name for this Pokémon color resource
    public var name: String?
    
    /// The name of this Pokémon color listed in different languages
    public var names: [PKMName]?
    
    /// A list of the Pokémon species that have this color
    public var pokemonSpecies: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Version Game Index
public class PKMVersionGameIndex: Mappable {
    
    /// The internal id of an API resource within game data
    public var gameIndex: Int?
    
    /// The version relevent to this game index
    public var version: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        gameIndex <- map["game_index"]
        version <- map["version"]
    }
}

/// Pokemon Ability
public class PKMPokemonAbility: Mappable {
    
    /// Whether or not this is a hidden ability
    public var isHidden: Bool?
    
    /// The slot this ability occupies in this Pokémon species
    public var slot: Int?
    
    /// The ability the Pokémon may have
    public var ability: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        isHidden <- map["is_hidden"]
        slot <- map["slot"]
        ability <- map["ability"]
    }
}

/// Location Area Encounter
public class PKMLocationAreaEncounter: Mappable {
    
    /// The location area the referenced Pokémon can be encountered in
    public var locationArea: PKMAPIResource?
    
    /// A list of versions and encounters with the referenced Pokémon that might happen
    public var versionDetails: [PKMVersionEncounterDetail]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        locationArea <- map["location_area"]
        versionDetails <- map["version_details"]
    }
}

/// Pokemon Sprites
public class PKMPokemonSprites: Mappable {
    
    /// The default depiction of this Pokémon from the front in battle
    public var frontDefault: String?
    
    /// The shiny depiction of this Pokémon from the front in battle
    public var frontShiny: String?
    
    /// The female depiction of this Pokémon from the front in battle
    public var frontFemale: String?
    
    /// The shiny female depiction of this Pokémon from the front
    public var frontShinyFemale: String?
    
    /// The default depiction of this Pokémon from the back in battle
    public var backDefault: String?
    
    /// The shiny depiction of this Pokémon from the back in battle
    public var backShiny: String?
    
    /// The female depiction of this Pokémon from the back in battle
    public var backFemale: String?
    
    /// The shiny female depiction of this Pokémon from the back in battle
    public var backShinyFemale: String?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
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
public class PKMPokemonType: Mappable {
    
    /// The order the Pokémon's types are listed in
    public var slot: Int?
    
    /// The type the referenced Pokémon has
    public var type: String?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        slot <- map["slot"]
        type <- map["type"]
    }
}

/// Pokémon are the creatures that inhabit the world of the Pokémon games. They can be caught using Pokéballs and trained by battling with other Pokémon. See Bulbapedia for greater detail.
public class PKMPokemon: Mappable {
    
    /// The identifier for this Pokémon resource
    public var id: Int?
    
    /// The name for this Pokémon resource
    public var name: String?
    
    /// The base experience gained for defeating this Pokémon
    public var base_experience: Int?
    
    /// The height of this Pokémon
    public var height: Int?
    
    /// Set for exactly one Pokémon used as the default for each species
    public var isDefault: Bool?
    
    /// Order for sorting. Almost national order, except families are grouped together.
    public var order: Int?
    
    /// The weight of this Pokémon
    public var weight: Int?
    
    /// A list of abilities this Pokémon could potentially have
    public var abilities: [PKMPokemonAbility]?
    
    /// A list of forms this Pokémon can take on
    public var forms: [PKMNamedAPIResource]?
    
    /// A list of game indices relevent to Pokémon item by generation
    public var gameIndices: [PKMVersionGameIndex]?
    
    /// A list of items this Pokémon may be holding when encountered
    public var heldItems: [PKMNamedAPIResource]?
    
    /// A list of location areas as well as encounter details pertaining to specific versions
    public var locationAreaEncounters: [PKMLocationAreaEncounter]?
    
    /// A list of moves along with learn methods and level details pertaining to specific version groups
    public var moves: [PKMNamedAPIResource]?
    
    /// A set of sprites used to depict this Pokémon in the game
    public var sprites: PKMPokemonSprites?
    
    /// The species this Pokémon belongs to
    public var species: PKMNamedAPIResource?
    
    /// A list of base stat values for this Pokémon
    public var stats: [PKMNamedAPIResource]?
    
    /// A list of details showing types this Pokémon has
    public var types: [PKMPokemonType]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
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
public class PKMNaturePokeathlonStatAffect: Mappable {
    
    /// The maximum amount of change to the referenced Pokéathlon stat
    public var maxChange: Int?
    
    /// The nature causing the change
    public var nature: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        maxChange <- map["max_change"]
        nature <- map["nature"]
    }
}

/// Nature Pokeathlon Stat Affect Sets
public class PKMNaturePokeathlonStatAffectSets: Mappable {
    
    /// A list of natures and how they change the referenced Pokéathlon stat
    public var increase: [PKMNaturePokeathlonStatAffect]?
    
    /// A list of natures and how they change the referenced Pokéathlon stat
    public var decrease: [PKMNaturePokeathlonStatAffect]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        increase <- map["increase"]
        decrease <- map["decrease"]
    }
}

/// Pokeathlon Stats are different attributes of a Pokémon's performance in Pokéathlons. In Pokéathlons, competitions happen on different courses; one for each of the different Pokéathlon stats. See Bulbapedia for greater detail.
public class PKMPokeathlonStat: Mappable {
    
    /// The identifier for this Pokéathlon stat resource
    public var id: Int?
    
    /// The name for this Pokéathlon stat resource
    public var name: String?
    
    /// The name of this Pokéathlon stat listed in different languages
    public var names: [PKMName]?
    
    /// A detail of natures which affect this Pokéathlon stat positively or negatively
    public var affectingNatures: PKMNaturePokeathlonStatAffectSets?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        affectingNatures <- map["affecting_natures"]
    }
}

/// Move Battle Style Preference
public class PKMMoveBattleStylePreference: Mappable {
    
    /// Chance of using the move, in percent, if HP is under one half
    public var lowHpPreference: Int?
    
    /// Chance of using the move, in percent, if HP is over one half
    public var highHpPreference: Int?
    
    /// The move battle style
    public var moveBattleStyle: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        lowHpPreference <- map["low_hp_preference"]
        highHpPreference <- map["high_hp_preference"]
        moveBattleStyle <- map["move_battle_style"]
    }
}


/*
change	The amount of change	integer
stat	The stat being affected	NamedAPIResource (PokeathlonStat)
*/
public class PKMNatureStatChange: Mappable {
    public var maxChange: Int?
    public var pokeathlonStat: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        maxChange <- map["max_change"]
        pokeathlonStat <- map["pokeathlon_stat"]
    }
}

/// Natures influence how a Pokémon's stats grow. See Bulbapedia ( http://bulbapedia.bulbagarden.net/wiki/Nature ) for greater detail.
public class PKMNature: Mappable {
    
    /// The identifier for this nature resource
    public var id: Int?
    
    /// The name for this nature resource
    public var name: String?
    
    /// The stat decreased by 10% in Pokémon with this nature
    public var decreasedStat: PKMNamedAPIResource?
    
    /// The stat increased by 10% in Pokémon with this nature
    public var increasedStat: PKMNamedAPIResource?
    
    /// The flavor hated by Pokémon with this nature
    public var hatesFlavor: PKMNamedAPIResource?
    
    /// he flavor liked by Pokémon with this nature
    public var likesFlavor: PKMNamedAPIResource?
    
    /// A list of Pokéathlon stats this nature effects and how much it effects them
    public var pokeathlonStatChanges: [PKMNatureStatChange]?
    
    /// A list of battle styles and how likely a Pokémon with this nature is to use them in the Battle Palace or Battle Tent.
    public var moveBattleStylePreferences: [PKMMoveBattleStylePreference]?
    
    /// The name of this nature listed in different languages
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
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
public class PKMGrowthRateExperienceLevel: Mappable {
    
    /// The level gained
    public var level: Int?
    
    /// The amount of experience required to reach the referenced level
    public var experience: Int?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        level <- map["level"]
        experience <- map["experience"]
    }
}

/// Growth rates are the speed with which Pokémon gain levels through experience. Check out Bulbapedia ( http://bulbapedia.bulbagarden.net/wiki/Experience ) for greater detail.
public class PKMGrowthRate: Mappable {
    
    /// The identifier for this gender resource
    public var id: Int?
    
    /// The name for this gender resource
    public var name: String?
    
    /// The formula used to calculate the rate at which the Pokémon species gains level
    public var formula: String?
    
    /// The descriptions of this characteristic listed in different languages
    public var descriptions: [PKMDescription]?
    
    /// A list of levels and the amount of experienced needed to atain them based on this growth rate
    public var levels: [PKMGrowthRateExperienceLevel]?
    
    /// A list of Pokémon species that gain levels at this growth rate
    public var pokemonSpecies: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        formula <- map["formula"]
        descriptions <- map["descriptions"]
        levels <- map["levels"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Pokemon Species Gender
public class PKMPokemonSpeciesGender: Mappable {
    
    /// The chance of this Pokémon being female, in eighths; or -1 for genderless
    public var rate: Int?
    
    /// A Pokémon species that can be the referenced gender
    public var pokemonSpecies: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        rate <- map["rate"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Genders were introduced in Generation II for the purposes of breeding Pokémon but can also result in visual differences or even different evolutionary lines. Check out Bulbapedia for greater detail.
public class PKMGender: Mappable {
    
    /// The identifier for this gender resource
    public var id: Int?
    
    /// The name for this gender resource
    public var name: String?
    
    /// A list of Pokémon species that can be this gender and how likely it is that they will be
    public var pokemonSpeciesDetails: [PKMPokemonSpeciesGender]?
    
    /// A list of Pokémon species that required this gender in order for a Pokémon to evolve into them
    public var requiredForEvolution: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        pokemonSpeciesDetails <- map["pokemon_species_details"]
        requiredForEvolution <- map["required_for_evolution"]
    }
}

/// Egg Groups are categories which determine which Pokémon are able to interbreed. Pokémon may belong to either one or two Egg Groups. Check out Bulbapedia for greater detail.
public class PKMEggGroup: Mappable {
    
    /// The identifier for this egg group resource
    public var id: Int?
    
    /// The name for this egg group resource
    public var name: String?
    
    /// The name of this egg group listed in different languages
    public var names: [PKMName]?
    
    /// A list of all Pokémon species that are members of this egg group
    public var pokemonSpecies: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Characteristics indicate which stat contains a Pokémon's highest IV. A Pokémon's Characteristic is determined by the remainder of its highest IV divided by 5 (gene_modulo). Check out Bulbapedia for greater detail.
public class PKMCharacteristic: Mappable {
    
    /// The identifier for this characteristic resource
    public var id: Int?
    
    /// The remainder of the highest stat/IV divided by 5
    public var geneModulo: Int?
    
    /// The possible values of the highest stat that would result in a Pokémon recieving this characteristic when divided by 5
    public var possibleValues: [Int]?
    
    /// The descriptions of this characteristic listed in different languages
    public var descriptions: [PKMDescription]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        geneModulo <- map["gene_modulo"]
        possibleValues <- map["possible_values"]
        descriptions <- map["descriptions"]
    }
}

/// Ability Pokemon
public class PKMAbilityPokemon: Mappable {
    
    /// Whether or not this a hidden ability for the referenced Pokémon
    public var isHidden: Bool?
    
    /// Pokémon have 3 ability 'slots' which hold references to possible abilities they could have. This is the slot of this ability for the referenced pokemon.
    public var slot: Int?
    
    /// The Pokémon this ability could belong to
    public var pokemon: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        isHidden <- map["is_hidden"]
        slot <- map["slot"]
        pokemon <- map["pokemon"]
    }
}

/// Abilities provide passive effects for Pokémon in battle or in the overworld. Pokémon have mutiple possible abilities but can have only one ability at a time. Check out Bulbapedia for greater detail.
public class PKMAbility: Mappable {
    
    /// The identifier for this ability resource
    public var id: Int?
    
    /// The name for this ability resource
    public var name: String?
    
    /// Whether or not this ability originated in the main series of the video games
    public var isMainSeries: Bool?
    
    /// The generation this ability originated in
    public var generation: PKMNamedAPIResource?
    
    /// The name of this ability listed in different languages
    public var names: [PKMName]?
    
    /// The effect of this ability listed in different languages
    public var effectEntries: [PKMVerboseEffect]?
    
    /// The list of previous effects this ability has had across version groups
    public var effectChanges: [PKMAbilityEffectChange]?
    
    /// The flavor text of this ability listed in different languages
    public var flavorTextEntries: [PKMVersionGroupFlavorText]?
    
    /// A list of Pokémon that could potentially have this ability
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

/// A region is an organized area of the Pokémon world. Most often, the main difference between regions is the species of Pokémon that can be encountered within them.
public class PKMRegion: Mappable {
    
    /// The identifier for this region resource
    public var id: Bool?
    
    /// The name for this region resource
    public var name: String?
    
    /// A list of locations that can be found in this region
    public var locations: [PKMNamedAPIResource]?
    
    /// The generation this region was introduced in
    public var mainGeneration: [PKMNamedAPIResource]?
    
    /// The name of this region listed in different languages
    public var names: [PKMName]?
    
    /// A list of pokédexes that catalogue Pokémon in this region
    public var pokedexes: [PKMNamedAPIResource]?
    
    /// A list of version groups where this region can be visited
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

/// Areas used for grouping Pokémon encounters in Pal Park. They're like habitats that are specific to Pal Park.
public class PKMPalParkEncounterSpecies: Mappable {
    
    /// The base score given to the player when this Pokémon is caught during a pal park run
    public var baseScore: Int?
    
    /// The base rate for encountering this Pokémon in this pal park area
    public var rate: Int?
    
    /// The Pokémon species being encountered
    public var pokemonSpecies: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        baseScore <- map["base_score"]
        rate <- map["rate"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// Pal Park Area
public class PKMPalParkArea: Mappable {
    
    /// The identifier for this pal park area resource
    public var id: Int?
    
    /// The name for this pal park area resource
    public var name: String?
    
    /// The name of this pal park area listed in different languages
    public var names: [PKMName]?
    
    /// A list of Pokémon encountered in thi pal park area along with details
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

/// Locations that can be visited within the games. Locations make up sizable portions of regions, like cities or routes.
public class PKMLocation: Mappable {
    
    /// The identifier for this location resource
    public var id: Int?
    
    /// The name for this location resource
    public var name: String?
    
    /// The region this location can be found in
    public var region: PKMNamedAPIResource?
    
    /// The name of this language listed in different languages
    public var names: [PKMName]?
    
    /// A list of game indices relevent to this location by generation
    public var gameIndices: [PKMGenerationGameIndex]?
    
    /// Areas that can be found within this location
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

/// Encounter
public class PKMEncounter: Mappable {
    
    /// The lowest level the Pokémon could be encountered at
    public var minLevel: Int?
    
    /// The highest level the Pokémon could be encountered at
    public var maxLevel: Int?
    
    /// A list of condition values that must be in effect for this encounter to occur
    public var conditionValues: [PKMNamedAPIResource]?
    
    /// percent chance that this encounter will occur
    public var chance: Int?
    
    /// The method by which this encounter happens
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

/// Version Encounter Detail
public class PKMVersionEncounterDetail: Mappable {
    
    /// The game version this encounter happens in
    public var version: PKMNamedAPIResource?
    
    /// The total percentage of all encounter potential
    public var maxChance: Int?
    
    /// A list of encounters and their specifics
    public var encounterDetails: [PKMEncounter]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        version <- map["version"]
        maxChance <- map["max_chance"]
        encounterDetails <- map["encounter_details"]
    }
}

/// Pokemon Encounter
public class PKMPokemonEncounter: Mappable {
    
    /// The Pokémon being encountered
    public var pokemon: PKMNamedAPIResource?
    
    /// A list of versions and encounters with Pokémon that might happen in the referenced location area
    public var versionDetails: [PKMVersionEncounterDetail]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        pokemon <- map["pokemon"]
        versionDetails <- map["version_details"]
    }
}

/// Encounter Version Details
public class PKMEncounterVersionDetails: Mappable {
    
    /// The chance of an encounter to occur.
    public var rate: Int?
    
    /// The version of the game in which the encounter can occur with the given chance.
    public var version: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        rate <- map["rate"]
        version <- map["version"]
    }
}

/// Encounter Method Rate
public class PKMEncounterMethodRate: Mappable {
    
    /// The method in which Pokémon may be encountered in an area.
    public var encounterEethod: PKMEncounterMethod?
    
    /// The chance of the encounter to occur on a version of the game.
    public var versionDetails: [PKMEncounterVersionDetails]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        encounterEethod <- map["encounter_method"]
        versionDetails <- map["version_details"]
    }
}

/// Location areas are sections of areas, such as floors in a building or cave. Each area has its own set of possible Pokémon encounters.
public class PKMLocationArea: Mappable {
    
    /// The identifier for this location resource
    public var id: Int?
    
    /// The name for this location resource
    public var name: String?
    
    /// The internal id of an API resource within game data
    public var gameIndex: Int?
    
    /// A list of methods in which Pokémon may be encountered in this area and how likely the method will occur depending on the version of the game
    public var encounterMethodRates: [PKMEncounterMethodRate]?
    
    /// The region this location can be found in
    public var location: PKMNamedAPIResource?
    
    /// The name of this location area listed in different languages
    public var names: [PKMName]?
    
    /// A list of Pokémon that can be encountered in this area along with version specific details about the encounter
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

/// Targets moves can be directed at during battle. Targets can be Pokémon, environments or even other moves.
public class PKMMoveTarget: Mappable {
    
    /// The identifier for this move target resource
    public var id: Int?
    
    /// The name for this move target resource
    public var name: String?
    
    /// The description of this move target listed in different languages
    public var descriptions: [PKMDescription]?
    
    /// A list of moves that that are directed at this target
    public var moves: [PKMNamedAPIResource]?
    
    /// The name of this move target listed in different languages
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

/// Methods by which Pokémon can learn moves.
public class PKMMoveLearnMethod: Mappable {
    
    /// The identifier for this move learn method resource
    public var id: Int?
    
    /// The name for this move learn method resource
    public var name: String?
    
    /// The description of this move learn method listed in different languages
    public var descriptions: [PKMDescription]?
    
    /// The name of this move learn method listed in different languages
    public var names: [PKMName]?
    
    /// A list of version groups where moves can be learned through this method
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

/// Damage classes moves can have, e.g. physical, special, or non-damaging.
public class PKMMoveDamageClass: Mappable {
    
    /// The identifier for this move damage class resource
    public var id: Int?
    
    /// The name for this move damage class resource
    public var name: String?
    
    /// The description of this move damage class listed in different languages
    public var descriptions: [PKMDescription]?
    
    /// A list of moves that fall into this damage class
    public var moves: [PKMNamedAPIResource]?
    
    /// The name of this move damage class listed in different languages
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

/// Very general categories that loosely group move effects.
public class PKMMoveCategory: Mappable {
    
    /// The identifier for this move category resource
    public var id: Int?
    
    /// The name for this move category resource
    public var name: String?
    
    /// A list of moves that fall into this category
    public var moves: [PKMNamedAPIResource]?
    
    /// The description of this move ailment listed in different languages
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

/// Styles of moves when used in the Battle Palace. See Bulbapedia for greater detail.
public class PKMMoveBattleStyle: Mappable {
    
    /// The identifier for this move battle style resource
    public var id: Int?
    
    /// The name for this move battle style resource
    public var name: String?
    
    /// The name of this move battle style listed in different languages
    public var names: [PKMName]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        names <- map["names"]
    }
}

/// Move Ailments are status conditions caused by moves used during battle. See Bulbapedia for greater detail.
public class PKMMoveAilment: Mappable {
    
    /// The identifier for this move ailment resource
    public var id: Int?
    
    /// The name for this move ailment resource
    public var name: String?
    
    /// A list of moves that cause this ailment
    public var moves: [PKMNamedAPIResource]?
    
    /// The name of this move ailment listed in different languages
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

/// Move Stat Change
public class PKMMoveStatChange: Mappable {
    
    /// The amount of change
    public var change: Int?
    
    /// The stat being affected
    public var stat: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        change <- map["change"]
        stat <- map["stat"]
    }
}

/// Past Move Stat Values
public class PKMPastMoveStatValues: Mappable {
    
    /// The percent value of how likely this move is to be successful
    public var accuracy: Int?
    
    /// The percent value of how likely it is this moves effect will take effect
    public var effectChance: Int?
    
    /// The base power of this move with a value of 0 if it does not have a base power
    public var power: Int?
    
    /// Power points. The number of times this move can be used
    public var pp: Int?
    
    /// The effect of this move listed in different languages
    public var effectEntries: [PKMVerboseEffect]?
    
    /// The elemental type of this move
    public var type: PKMNamedAPIResource?
    
    /// The version group in which these move stat values were in effect
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

/// Move Meta Data
public class PKMMoveMetaData: Mappable {
    
    /// The status ailment this move inflicts on its target
    public var ailment: PKMNamedAPIResource?
    
    /// The category of move this move falls under, e.g. damage or ailment
    public var category: PKMNamedAPIResource?
    
    /// The minimum number of times this move hits. Null if it always only hits once.
    public var minHits: Int?
    
    /// The maximum number of times this move hits. Null if it always only hits once.
    public var maxHits: Int?
    
    /// The minimum number of turns this move continues to take effect. Null if it always only lasts one turn.
    public var minTurns: Int?
    
    /// The maximum number of turns this move continues to take effect. Null if it always only lasts one turn.
    public var maxTurns: Int?
    
    /// HP drain (if positive) or Recoil damage (if negative), in percent of damage done
    public var drain: Int?
    
    /// The amount of hp gained by the attacking pokemon, in percent of it's maximum HP
    public var healing: Int?
    
    /// Critical hit rate bonus
    public var critRate: Int?
    
    /// The likelyhood this attack will cause an ailment
    public var ailmentChance: Int?
    
    /// The likelyhood this attack will cause the target pokemon to flinch
    public var flinchEhance: Int?
    
    /// The likelyhood this attack will cause a stat change in the target pokemon
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

/// Ability Effect Change
public class PKMAbilityEffectChange: Mappable {
    
    /// The previous effect of this ability listed in different languages
    public var effectEntries: PKMEffect?
    
    /// The version group in which the previous effect of this ability originated
    public var versionGroup: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        effectEntries <- map["effect_entries"]
        versionGroup <- map["version_group"]
    }
}

/// Contest Combo Detail
public class PKMContestComboDetail: Mappable {
    
    /// A list of moves to use before this move
    public var useBefore: [PKMNamedAPIResource]?
    
    /// A list of moves to use after this move
    public var useAfter: [PKMNamedAPIResource]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        useBefore <- map["use_before"]
        useAfter <- map["use_after"]
    }
}

/// Contest Combo Sets
public class PKMContestComboSets: Mappable {
    
    /// A detail of moves this move can be used before or after, granting additional appeal points in contests
    public var normalMove: [PKMContestComboDetail]?
    
    /// A detail of moves this move can be used before or after, granting additional appeal points in super contests
    public var superMove: [PKMContestComboDetail]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        normalMove <- map["normal"]
        superMove <- map["super"]
    }
}

/// Moves are the skills of Pokémon in battle. In battle, a Pokémon uses one move each turn. Some moves (including those learned by Hidden Machine) can be used outside of battle as well, usually for the purpose of removing obstacles or exploring new areas.
public class PKMMove: Mappable {
    
    /// The identifier for this move resource
    public var id: Int?
    
    /// The name for this move resource
    public var name: String?
    
    /// The percent value of how likely this move is to be successful
    public var accuracy: Int?
    
    /// The percent value of how likely it is this moves effect will happen
    public var effect_chance: Int?
    
    /// Power points. The number of times this move can be used
    public var pp: Int?
    
    /// A value between -8 and 8. Sets the order in which moves are executed during battle. See Bulbapedia for greater detail.
    public var priority: Int?
    
    /// The base power of this move with a value of 0 if it does not have a base power
    public var power: Int?
    
    /// A detail of normal and super contest combos that require this move
    public var contestCombos: [PKMContestComboSets]?
    
    /// The type of appeal this move gives a Pokémon when used in a contest
    public var contestType: PKMNamedAPIResource?
    
    /// The effect the move has when used in a contest
    public var contestEffect: PKMNamedAPIResource?
    
    /// The type of damage the move inflicts on the target, e.g. physical
    public var damageClass: PKMNamedAPIResource?
    
    /// The effect of this move listed in different languages
    public var effectEntries: [PKMVerboseEffect]?
    
    /// The list of previous effects this move has had across version groups of the games
    public var effectChanges: [PKMAbilityEffectChange]?
    
    /// The generation in which this move was introduced
    public var generation: PKMNamedAPIResource?
    
    /// Metadata about this move
    public var meta: PKMMoveMetaData?
    
    /// The name of this move listed in different languages
    public var names: [PKMName]?
    
    /// A list of move resource value changes across ersion groups of the game
    public var pastValues: [PKMPastMoveStatValues]?
    
    /// A list of stats this moves effects and how much it effects them
    public var statChanges: [PKMMoveStatChange]?
    
    /// The effect the move has when used in a super contest
    public var superContestEffect: PKMAPIResource?
    
    /// The type of target that will recieve the effects of the attack
    public var target: PKMNamedAPIResource?
    
    /// The elemental type of this move	NamedAPIResource
    public var type: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
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
public class PKMItemPocket: Mappable {
    
    /// The identifier for this item pocket resource
    public var id: Int?
    
    /// The name for this item pocket resource
    public var name: String?
    
    /// A list of item categories that are relevent to this item pocket
    public var categories: [PKMNamedAPIResource]?
    
    /// The name of this item pocket listed in different languages
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

/// Effect
public class PKMEffect: Mappable {
    
    /// The localized effect text for an API resource in a specific language
    public var effect: String?
    
    /// The language this effect is in
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        effect <- map["effect"]
        language <- map["language"]
    }
}

/// The various effects of the move "Fling" when used with different items.
public class PKMItemFlingEffect: Mappable {
    
    /// The identifier for this fling effect resource
    public var id: Int?
    
    /// The name for this fling effect resource
    public var name: String?
    
    /// The result of this fling effect listed in different languages
    public var effectEntries: [PKMEffect]?
    
    /// A list of items that have this fling effect	list
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

/// Item categories determine where items will be placed in the players bag.
public class PKMItemCategory: Mappable {
    
    /// The identifier for this item category resource
    public var id: Int?
    
    /// The name for this item category resource
    public var name: String?
    
    /// A list of items that are a part of this category
    public var items: [PKMNamedAPIResource]?
    
    /// The name of this item category listed in different languages
    public var names: [PKMName]?
    
    /// The pocket items in this category would be put in
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

/// Item attributes define particular aspects of items, e.g. "usable in battle" or "consumable".
public class PKMItemAttribute: Mappable {
    
    /// The identifier for this item attribute resource
    public var id: Int?
    
    /// The name for this item attribute resource
    public var name: String?
    
    /// A list of items that have this attribute
    public var items: [PKMNamedAPIResource]?
    
    /// The name of this item attribute listed in different languages
    public var names: [PKMName]?
    
    /// The description of this item attribute listed in different languages
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

/// Verbose Effect
public class PKMVerboseEffect: Mappable {
    
    /// The localized effect text for an API resource in a specific language
    public var effect: String?
    
    /// The localized effect text in brief
    public var shortEffect: String?
    
    /// The language this effect is in
    public var language: Bool?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        effect <- map["effect"]
        shortEffect <- map["short_effect"]
        language <- map["language"]
    }
}

/// Version Group Flavor Text
public class PKMVersionGroupFlavorText: Mappable {
    
    /// The localized name for an API resource in a specific language
    public var text: String?
    
    /// The language this name is in
    public var language: PKMNamedAPIResource?
    
    /// The version group which uses this flavor text
    public var versionGroup: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        text <- map["text"]
        language <- map["language"]
        versionGroup <- map["version_group"]
    }
}

/// Generation Game Index
public class PKMGenerationGameIndex: Mappable {
    
    /// The internal id of an API resource within game data
    public var gameIndex: Int?
    
    /// The generation relevent to this game index
    public var generation: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        gameIndex <- map["game_index"]
        generation <- map["generation"]
    }
}

/// Item Sprites
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

/// An item is an object in the games which the player can pick up, keep in their bag, and use in some manner. They have various uses, including healing, powering up, helping catch Pokémon, or to access a new area.
public class PKMItem: Mappable {
    
    /// The identifier for this item resource
    public var id: Int?
    
    /// The name for this item resource
    public var name: String?
    
    /// The price of this item in stores
    public var cost: Int?
    
    /// The power of the move Fling when used with this item.
    public var fling_power: Int?
    
    /// The effect of the move Fling when used with this item
    public var fling_effect: PKMNamedAPIResource?
    
    /// A list of attributes this item has
    public var attributes: [PKMNamedAPIResource]?
    
    /// The category of items this item falls into
    public var category: PKMNamedAPIResource?
    
    /// The effect of this ability listed in different languages
    public var effect_entries: [PKMVerboseEffect]?
    
    /// The flavor text of this ability listed in different languages
    public var flavor_text_entries: [PKMVersionGroupFlavorText]?
    
    /// A list of game indices relevent to this item by generation
    public var game_indices: [PKMGenerationGameIndex]?
    
    /// The name of this item listed in different languages
    public var names: [PKMName]?
    
    /// A set of sprites used to depict this item in the game
    public var sprites: PKMItemSprites?
    
    /// A list of Pokémon that might be found in the wild holding this item
    public var held_by_pokemon: [PKMNamedAPIResource]?
    
    /// An evolution chain this item requires to produce a bay during mating
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

/// Version groups categorize highly similar versions of the games.
public class PKMVersionGroup: Mappable {
    
    /// The identifier for this version group resource
    public var id: Int?
    
    /// The name for this version group resource
    public var name: String?
    
    /// Order for sorting. Almost by date of release, except similar versions are grouped together.
    public var order: Int?
    
    /// The generation this version was introduced in
    public var generation: [PKMNamedAPIResource]?
    
    /// A list of methods in which Pokémon can learn moves in this version group
    public var moveLearnMethods: [PKMNamedAPIResource]?
    
    /// The name of this version group listed in different languages
    public var names: [PKMName]?
    
    /// A list of Pokédexes introduces in this version group
    public var pokedexes: [PKMNamedAPIResource]?
    
    /// A list of regions that can be visited in this version group	list
    public var regions: [PKMNamedAPIResource]?
    
    /// The versions this version group owns
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

/// Versions of the games, e.g., Red, Blue or Yellow.
public class PKMVersion: Mappable {
    
    /// The identifier for this version resource
    public var id: Int?
    
    /// The name for this version resource
    public var name: String?
    
    /// The name of this version listed in different languages
    public var names: [PKMName]?
    
    /// The version group this version belongs to
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

/// Description
public class PKMDescription: Mappable {
    
    /// The localized description for an API resource in a specific language
    public var description: String?
    
    /// The language this name is in
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        description <- map["description"]
        language <- map["language"]
    }
}

/// Entry
public class PKMEntry: Mappable {
    
    /// The index of this pokemon species entry within the Pokédex
    public var entryNumber: Int?
    
    /// The Pokémon species being encountered
    public var pokemonSpecies: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        entryNumber <- map["entry_number"]
        pokemonSpecies <- map["pokemon_species"]
    }
}

/// A Pokédex is a handheld electronic encyclopedia device; one which is capable of recording and retaining information of the various Pokémon in a given region with the exception of the national dex and some smaller dexes related to portions of a region. See Bulbapedia for greater detail.
public class PKMPokedex: Mappable {
    
    /// The identifier for this Pokédex resource
    public var id: Int?
    
    /// The name for this Pokédex resource
    public var name: String?
    
    /// Whether or not this Pokédex originated in the main series of the video games
    public var isMainSeries: Bool?
    
    /// The description of this Pokédex listed in different languages
    public var descriptions: [PKMDescription]?
    
    /// The name of this Pokédex listed in different languages
    public var names: [PKMName]?
    
    /// A list of pokemon catalogued in this Pokédex and their indexes
    public var pokemonEntries: [PKMEntry]?
    
    /// The region this Pokédex catalogues pokemon for
    public var region: PKMNamedAPIResource?
    
    /// A list of version groups this Pokédex is relevent to
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

/// A generation is a grouping of the Pokémon games that separates them based on the Pokémon they include. In each generation, a new set of Pokémon, Moves, Abilities and Types that did not exist in the previous generation are released.
public class PKMGeneration: Mappable {
    
    /// The identifier for this generation resource
    public var id: Int?
    
    /// The name for this generation resource
    public var name: String?
    
    /// The name of this generation listed in different languages
    public var names: [PKMName]?
    
    /// A list of abilities that were introduced in this generation
    public var abilities: [PKMNamedAPIResource]?
    
    /// The main region travelled in this generation
    public var mainRegion: PKMNamedAPIResource?
    
    /// A list of moves that were introduced in this generation
    public var moves: [PKMNamedAPIResource]?
    
    /// A list of Pokémon species that were introduced in this generation
    public var pokemonSpecies: [PKMNamedAPIResource]?
    
    /// A list of types that were introduced in this generation
    public var types: [PKMNamedAPIResource]?
    
    /// A list of version groups that were introduced in this generation
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

/// Evolution triggers are the events and conditions that cause a pokemon to evolve. Check out Bulbapedia for greater detail.
public class PKMEvolutionTrigger: Mappable {
    
    /// The identifier for this evolution trigger resource
    public var id: Int?
    
    /// The name for this evolution trigger resource
    public var name: String?
    
    /// The name of this evolution trigger listed in different languages
    public var names: [PKMName]?
    
    /// A list of pokemon species that result from this evolution trigger
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

/// Evolution Detail
public class PKMEvolutionDetail: Mappable {
    
    /// The item required to cause evolution this into Pokémon species
    public var item: PKMNamedAPIResource?
    
    /// The type of event that triggers evolution into this Pokémon species
    public var trigger: PKMNamedAPIResource?
    
    /// The gender the evolving Pokémon species must be in order to evolve into this Pokémon species
    public var gender: PKMNamedAPIResource?
    
    /// The item the evolving Pokémon species must be holding during the evolution
    public var heldItem: PKMNamedAPIResource?
    
    /// The move that must be known by the evolving Pokémon species during the evolution trigger event in order to evolve into this Pokémon species
    public var knownMove: PKMNamedAPIResource?
    
    /// The evolving Pokémon species must know a move with this type during the evolution trigger event in order to evolve into this Pokémon species
    public var knownMoveType: PKMNamedAPIResource?
    
    /// The location the evolution must be triggered at.
    public var location: PKMNamedAPIResource?
    
    /// The minimum required level of the evolving Pokémon species to evolve into this Pokémon species
    public var minLevel: Int?
    
    /// The minimum required level of happiness the evolving Pokémon species to evolve into this Pokémon species
    public var minHappiness: Int?
    
    /// The minimum required level of beauty the evolving Pokémon species to evolve into this Pokémon species
    public var minBeauty: Int?
    
    /// The minimum required level of affection the evolving Pokémon species to evolve into this Pokémon species
    public var minAffection: Int?
    
    /// Whether or not it must be raining in the overworld to cause evolution this Pokémon species
    public var needsOverworldRain: Bool?
    
    /// The pokemon species that must be in the players party in order for the evolving Pokémon species to evolve into this Pokémon species
    public var partySpecies: PKMNamedAPIResource?
    
    /// The player must have a pokemon of this type in their party during the evolution trigger event in order for the evolving Pokémon species to evolve into this Pokémon species
    public var partyType: PKMNamedAPIResource?
    
    /// The required relation between the Pokémon's Attack and Defense stats. 1 means Attack > Defense. 0 means Attack = Defense. -1 means Attack < Defense.
    public var relativePhysicalStats: Int?
    
    /// The required time of day. Day or night.
    public var timeOfDay: String?
    
    /// Pokémon species for which this one must be traded.
    public var tradeSpecies: PKMNamedAPIResource?
    
    /// Whether or not the 3DS needs to be turned upside-down as this Pokémon levels up.
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

/// Clain Link
public class PKMClainLink: Mappable {
    
    /// Whether or not this link is for a baby Pokémon. This would only ever be true on the base link.
    public var isBaby: Bool?
    
    /// The Pokémon species at this point in the evolution chain
    public var species: PKMNamedAPIResource?
    
    /// All details regarding the specific details of the referenced Pokémon species evolution
    public var evolutionDetails: PKMEvolutionDetail?
    
    /// A List of chain objects.
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

/// Evolution Chain
public class PKMEvolutionChain: Mappable {
    
    /// The identifier for this evolution chain resource
    public var id: Int?
    
    /// The item that a Pokémon would be holding when mating that would trigger the egg hatching a baby Pokémon rather than a basic Pokémon
    public var babyTriggerItem: PKMNamedAPIResource?
    
    /// The base chain link object. Each link contains evolution details for a Pokémon in the chain. Each link references the next Pokémon in the natural evolution order.
    public var chain: PKMClainLink?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        babyTriggerItem <- map["baby_trigger_item"]
        chain <- map["chain"]
    }
}


/// Encounter Condition Value
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

/// Encounter Condition
public class PKMEncounterCondition: Mappable {
    
    /// The identifier for this encounter condition resource
    public var id: Int?
    
    /// The name for this encounter condition resource
    public var name: String?
    
    /// A list of possible values for this encounter condition
    public var values: [PKMNamedAPIResource]?
    
    /// The name of this encounter method listed in different languages
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

/// Methods by which the player might can encounter Pokémon in the wild, e.g., walking in tall grass. Check out Bulbapedia for greater detail.
public class PKMEncounterMethod: Mappable {
    
    /// The identifier for this encounter method resource
    public var id: Int?
    
    /// The name for this encounter method resource
    public var name: String?
    
    /// A good value for sorting
    public var order: Int?
    
    /// The name of this encounter method listed in different languages
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

/// Super contest effects refer to the effects of moves when used in super contests.
public class PKMSuperContestEffect: Mappable {
    
    /// The identifier for this super contest effect resource
    public var id: Int?
    
    /// The level of appeal this super contest effect has
    public var appeal: String?
    
    /// The flavor text of this super contest effect listed in different languages
    public var flavorTextEntries: [PKMFlavorText]?
    
    /// A list of moves that have the effect when used in super contests
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


/// Flavor Text
public class PKMFlavorText: Mappable {
    
    /// The localized flavor text for an API resource in a specific language
    public var flavorText: String?
    
    /// The language this name is in
    public var language: PKMName?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        flavorText <- map["flavor_text"]
        language <- map["language"]
    }
}


/// Effect Entry
public class PKMEffectEntry: Mappable {
    
    /// The localized effect text for an API resource in a specific language
    public var effect: String?
    
    /// The language this effect is in
    public var language: PKMName?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        effect <- map["effect"]
        language <- map["language"]
    }
}

/// Contest effects refer to the effects of moves when used in contests.
public class PKMContestEffect: Mappable {
    
    /// The identifier for this contest type resource
    public var id: Int?
    
    /// The base number of hearts the user of this move gets
    public var appeal: String?
    
    /// The base number of hearts the user's opponent loses
    public var jam: Int?
    
    /// The result of this contest effect listed in different languages
    public var effectEntries: [PKMEffectEntry]?
    
    /// The flavor text of this contest effect listed in different languages
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

/// Contest types are categories judges used to weigh a Pokémon's condition in Pokémon contests. Check out Bulbapedia for greater detail.
public class PKMContestType: Mappable {
    
    /// The identifier for this contest type resource
    public var id: Int?
    
    /// The name for this contest type resource
    public var name: String?
    
    /// The berry flavor that correlates with this contest type
    public var berryFlavor: PKMNamedAPIResource?
    
    /// The name of this contest type listed in different languages
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

/// Paged Object
public class PKMPagedObject: Mappable{
    
    /// The total number of resources abailable from this API
    public var count: Int?
    
    /// The url for the next 'page' in the list
    public var next: String?
    
    /// The url for the previous page in the list
    public var previous: String?
    
    /// List of unnamed API resources
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

/// Name
public class PKMName: Mappable{
    
    /// The localized name for an API resource in a specific language
    public var name: String?
    
    /// The language this name is in
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        name <- map["name"]
        language <- map["language"]
    }
}


/// Named API Resource
public class PKMNamedAPIResource: Mappable{
    
    /// The name of the referenced resource
    public var name: String?
    
    /// The URL of the referenced resource
    public var url: String?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        name <- map["name"]
        url <- map["url"]
    }
}

public class PKMBerryFlavourMap: Mappable{
    
    /// How powerful the referenced flavor is for this berry
    public var potency: Int?
    
    /// The berry with the referenced flavor
    public var flavor: PKMNamedAPIResource?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        potency <- map["potency"]
        flavor <- map["flavor"]
    }
}

/// Flavors determine whether a Pokémon will benefit or suffer from eating a berry based on their nature. Check out Bulbapedia for greater detail.
public class PKMBerryFlavour: Mappable{
    
    /// The identifier for this berry flavor resource
    public var id: Int?
    
    /// The name for this berry flavor resource
    public var name: String?
    
    /// A list of the berries with this flavor
    public var berries: [PKMFlavourBerryMap]?
    
    /// The contest type that correlates with this berry flavor
    public var contestType: PKMNamedAPIResource?
    
    /// The name of this berry flavor listed in different languages
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

/// Flavour Berry Map
public class PKMFlavourBerryMap: Mappable {
    
    /// How powerful the referenced flavor is for this berry
    public var potency: Int?
    
    /// The berry with the referenced flavor
    public var berry: PKMNamedAPIResource?
    
    required public init?(_ map: Map){
        
    }
    
    public func mapping(map: Map) {
        potency <- map["potency"]
        berry <- map["berry"]
    }
}

/// Berries are small fruits that can provide HP and status condition restoration, stat enhancement, and even damage negation when eaten by Pokémon. Check out Bulbapedia for greater detail.
public class PKMBerry: Mappable{
    
    /// The identifier for this berry resource
    public var id: Int?
    
    /// The name for this berry resource
    public var name: String?
    
    /// Time it takes the tree to grow one stage, in hours. Berry trees go through four of these growth stages before they can be picked.
    public var growthTime: Int?
    
    /// The maximum number of these berries that can grow on one tree in Generation IV
    public var maxHarvest: Int?
    
    /// The power of the move "Natural Gift" when used with this Berry
    public var naturalGiftPower: Int?
    
    /// The size of this Berry, in millimeters
    public var size: Int?
    
    /// The smoothness of this Berry, used in making Pokéblocks or Poffins
    public var smoothness: Int?
    
    /// The speed at which this Berry dries out the soil as it grows. A higher rate means the soil dries more quickly.
    public var soilDryness: Int?
    
    /// The firmness of this berry, used in making Pokéblocks or Poffins
    public var firmness: PKMNamedAPIResource?
    
    /// A list of references to each flavor a berry can have and the potency of each of those flavors in regard to this berry
    public var flavors: [PKMBerryFlavourMap]?
    
    /// Berries are actually items. This is a reference to the item specific data for this berry.
    public var item: PKMNamedAPIResource?
    
    /// The Type the move "Natural Gift" has when used with this Berry
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

/// Berry Firmness
public class PKMBerryFirmness: Mappable {
    
    /// The identifier for this berry firmness resource
    public var id: Int?
    
    /// The name of this berry firmness listed in different languages
    public var berries: [PKMNamedAPIResource]?
    
    /// A list of the berries with this firmness
    public var names: [PKMName]?
    
    /// The name for this berry firmness resource
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
Fetch Berry list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Berry Information
 
 - parameter berryId: Berry ID
 
 - returns: A promise with PKMBerry
 */
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

/**
Fetch Berry Firmness list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Berry Firmness Information
 
 - parameter berryFirmnessId: Berry Firmness ID
 
 - returns: A promise with PKMBerryFirmness
 */
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

/**
Fetch Berry Flavours list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Berry Flavour Information
 
 - parameter berryFlavourId: Berry Flavour ID
 
 - returns: A promise with PKMBerryFlavour
 */
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

/**
Fetch Contest list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Contest Type Information
 
 - parameter contestTypeId: Contest Type ID
 
 - returns: A promise with PKMContestType
 */
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

/**
Fetch Contest Effects list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Contest Effect Information
 
 - parameter contestEffectId: Contest Effect ID
 
 - returns: A promise with PKMContestEffect
 */
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

/**
Fetch Super Contest Effects list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Super Contest Effect Information
 
 - parameter superContestEffectId: Super Contest Effect ID
 
 - returns: A promise with PKMSuperContestEffect
 */
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

/**
Fetch Encounter Methods list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Encounter Method Information
 
 - parameter encounterMethodId: Encounter Method ID
 
 - returns: A promise with PKMEncounterMethod
 */
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

/**
Fetch Encounter Conditions list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Encounter Condition Information
 
 - parameter encounterConditionId: Encounter Condition ID
 
 - returns: A promise with PKMEncounterCondition
 */
public func fetchEncounterCondition(encounterConditionId: String) -> Promise<PKMEncounterCondition>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/encounter-condition/" + encounterConditionId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMEncounterCondition, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Encounter Condition Values list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Encounter Condition Value Information
 
 - parameter encounterConditionValueId: Encounter Condition Value ID
 
 - returns: A promise with PKMEncounterConditionValue
 */
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

/**
Fetch Encounter Chains list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Evolution Chain Information
 
 - parameter evolutionChainId: Evolution Chain ID
 
 - returns: A promise with PKMEvolutionChain
 */
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

/**
Fetch Encounter Triggers list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Evolution Trigger Information
 
 - parameter evolutionTriggerId: Evolution Trigger ID
 
 - returns: A promise with PKMEvolutionTrigger
 */
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

/**
Fetch Generations list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Generation Information
 
 - parameter generationId: Generation ID
 
 - returns: A promise with PKMGeneration
 */
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

/**
Fetch Pokedexes list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Pokedex Information
 
 - parameter pokedexId: Pokedex ID
 
 - returns: A promise with PKMPokedex
 */
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

/**
Fetch Versions list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Version Information
 
 - parameter versionId: Version ID
 
 - returns: A promise with PKMVersion
 */
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

/**
Fetch Versions Groups list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Version Group Information
 
 - parameter versionGroupId: Version Group ID
 
 - returns: A promise with PKMVersionGroup
 */
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

/**
Fetch Items list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Item Information
 
 - parameter itemId: Item ID
 
 - returns: A promise with PKMItem
 */
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

/**
Fetch Item Attributes list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Item Attribute Information
 
 - parameter itemAttributeId: Item Attribute ID
 
 - returns: A promise with PKMItemAttribute
 */
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

/**
Fetch Item Categories list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Item Category Information
 
 - parameter itemCategoryId: Item Category ID
 
 - returns: A promise with PKMItemCategory
 */
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

/**
Fetch Item Fling Effects list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Item Fling Effect Information
 
 - parameter itemFlingEffectsId: Item Fling Effect ID
 
 - returns: A promise with PKMItemFlingEffect
 */
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

/**
Fetch Item Pockets list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Item Pocket Information
 
 - parameter itemPocketId: Item Pocket ID
 
 - returns: A promise with PKMItemPocket
 */
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

/**
Fetch Moves list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Move Information
 
 - parameter moveId: Move ID
 
 - returns: A promise with PKMMove
 */
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

/**
Fetch Moves Ailments list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Move Ailment Information
 
 - parameter moveAilmentId: Move Ailment ID
 
 - returns: A promise with PKMMoveAilment
 */
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

/**
Fetch Moves Battle Styles list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Move Battle Style Information
 
 - parameter moveBattleStyleId: Move Battle Style ID
 
 - returns: A promise with PKMMoveBattleStyle
 */
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

/**
Fetch Moves Categories list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Move Category Information
 
 - parameter moveCategoryId: Move Category ID
 
 - returns: A promise with PKMMoveCategory
 */
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

/**
Fetch Moves Damage Classes list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Move Damage Class Information
 
 - parameter moveDamageClassId: Move Damage Class ID
 
 - returns: A promise with PKMMoveDamageClass
 */
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

/**
Fetch Moves Learn Methods list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Move Learn Method Information
 
 - parameter moveLearnMethodId: Move Learn Method ID
 
 - returns: A promise with PKMMoveLearnMethod
 */
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

/**
Fetch Moves Targets list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Move Target Information
 
 - parameter moveTargetId: Move Target ID
 
 - returns: A promise with PKMMoveTarget
 */
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

/**
Fetch Locations list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Location Information
 
 - parameter locationId: Location ID
 
 - returns: A promise with PKMLocation
 */
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

/**
Fetch Location Area list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Location Area Information
 
 - parameter locationAreaId: Location Area ID
 
 - returns: A promise with PKMLocationArea
 */
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

/**
Fetch Pal Park Areas list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Pal Park Area Information
 
 - parameter palParkAreaId: Pal Park Area ID
 
 - returns: A promise with PKMPalParkArea
 */
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

/**
Fetch Regions list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Region Information
 
 - parameter regionId: Region ID
 
 - returns: A promise with PKMRegion
 */
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

/**
Fetch Abilities list

- returns: A promise with PKMPagedObject
*/
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

/**
 Fetch Ability Information
 
 - parameter abilityId: Ability ID
 
 - returns: A promise with PKMAbility
 */
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

/**
Fetch Characteristics list

- returns: A promise with PKMPagedObject
*/
public func fetchCharacteristics() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/characteristic"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Characteristic Information
 
 - parameter characteristicId: Characteristic ID
 
 - returns: A promise with PKMCharacteristic
 */
public func fetchCharacteristic(characteristicId: String) -> Promise<PKMCharacteristic>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/characteristic/" + characteristicId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMCharacteristic, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Egg Group list

- returns: A promise with PKMPagedObject
*/
public func fetchEggGroup() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/egg-group"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Egg Group Information
 
 - parameter eggGroupId: Egg Group ID
 
 - returns: A promise with PKMEggGroup
 */
public func fetchEggGroup(eggGroupId: String) -> Promise<PKMEggGroup>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/egg-group/" + eggGroupId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMEggGroup, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Genders list

- returns: A promise with PKMPagedObject
*/
public func fetchGenders() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/gender"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Gender Information
 
 - parameter genderId: Gender ID
 
 - returns: A promise with PKMGender
 */
public func fetchGender(genderId: String) -> Promise<PKMGender>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/gender/" + genderId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMGender, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Growth Rate list

- returns: A promise with PKMPagedObject
*/
public func fetchGrowthRates() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/growth-rate"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Growth Rate Information
 
 - parameter growthRateId: Growth Rate ID
 
 - returns: A promise with PKMGrowthRate
 */
public func fetchGrowthRate(growthRateId: String) -> Promise<PKMGrowthRate>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/growth-rate/" + growthRateId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMGrowthRate, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Nature list

- returns: A promise with PKMPagedObject
*/
public func fetchNatures() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/nature"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Nature Information
 
 - parameter natureId: Nature ID
 
 - returns: A promise with PKMNature
 */
public func fetchNature(natureId: String) -> Promise<PKMNature>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/nature/" + natureId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMNature, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokeathlon Stat list

- returns: A promise with PKMPagedObject
*/
public func fetchPokeathlonStats() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokeathlon-stat"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokeathlon Stat Information
 
 - parameter pokeathlonStatId: Pokeathlon Stat ID
 
 - returns: A promise with PKMPokeathlonStat
 */
public func fetchPokeathlonStat(pokeathlonStatId: String) -> Promise<PKMPokeathlonStat>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokeathlon-stat/" + pokeathlonStatId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPokeathlonStat, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokemon list

- returns: A promise with PKMPagedObject
*/
public func fetchPokemons() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokemon"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokemon Information
 
 - parameter pokemonId: Pokemon( ID
 
 - returns: A promise with PKMPokemon
 */
public func fetchPokemon(pokemonId: String) -> Promise<PKMPokemon>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokemon/" + pokemonId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPokemon, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokemon Color list

- returns: A promise with PKMPagedObject
*/
public func fetchPokemonColors() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokemon-color"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokemon Color Information
 
 - parameter pokemonColorId: Pokemon Color ID
 
 - returns: A promise with PKMPokemonColor
 */
public func fetchPokemonColor(pokemonColorId: String) -> Promise<PKMPokemonColor>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokemon-color/" + pokemonColorId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPokemonColor, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokemon Form list

- returns: A promise with PKMPagedObject
*/
public func fetchPokemonForms() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokemon-form"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokemon Form Information
 
 - parameter pokemonFormId: Pokemon Form ID
 
 - returns: A promise with PKMPokemonForm
 */
public func fetchPokemonForm(pokemonFormId: String) -> Promise<PKMPokemonForm>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokemon-form/" + pokemonFormId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPokemonForm, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokemon Habitat list

- returns: A promise with PKMPagedObject
*/
public func fetchPokemonHabitats() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokemon-habitat"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokemon Habitat Information
 
 - parameter pokemonHabitatId: Pokemon Habitat ID
 
 - returns: A promise with PKMPokemonHabitat
 */
public func fetchPokemonHabitat(pokemonHabitatId: String) -> Promise<PKMPokemonHabitat>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokemon-habitat/" + pokemonHabitatId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPokemonHabitat, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokemon Shape list

- returns: A promise with PKMPagedObject
*/
public func fetchPokemonShapes() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokemon-shape"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokemon Shape Information
 
 - parameter pokemonShapeId: Pokemon Shape ID
 
 - returns: A promise with PKMPokemonShape
 */
public func fetchPokemonShape(pokemonShapeId: String) -> Promise<PKMPokemonShape>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokemon-shape/" + pokemonShapeId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPokemonShape, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Pokemon Species list

- returns: A promise with PKMPagedObject
*/
public func fetchPokemonSpecies() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokemon-species"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Pokemon Species Information
 
 - parameter pokemonSpeciesId: Pokemon Species ID
 
 - returns: A promise with PKMPokemonSpecies
 */
public func fetchPokemonSpecies(pokemonSpeciesId: String) -> Promise<PKMPokemonSpecies>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/pokemon-species/" + pokemonSpeciesId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPokemonSpecies, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Stat list

- returns: A promise with PKMPagedObject
*/
public func fetchStats() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/stat"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Stat Information
 
 - parameter statId: Stat ID
 
 - returns: A promise with PKMStat
 */
public func fetchStat(statId: String) -> Promise<PKMStat>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/stat/" + statId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMStat, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Type list

- returns: A promise with PKMPagedObject
*/
public func fetchType() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/type"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Type Information
 
 - parameter typeId: Type ID
 
 - returns: A promise with PKMType
 */
public func fetchType(typeId: String) -> Promise<PKMType>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/type/" + typeId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMType, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}

/**
Fetch Languages list

- returns: A promise with PKMPagedObject
*/
public func fetchLanguages() -> Promise<PKMPagedObject> {
    return Promise { fulfill, reject in
        let URL = baseURL + "/language"
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMPagedObject, NSError>) in
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
        }
    }
}

/**
 Fetch Language Information
 
 - parameter languageId: Language ID
 
 - returns: A promise with PKMLanguage
 */
public func fetchLanguage(languageId: String) -> Promise<PKMLanguage>{
    return Promise { fulfill, reject in
        let URL = baseURL + "/language/" + languageId
        
        Alamofire.request(.GET, URL).responseObject() { (response: Response<PKMLanguage, NSError>) in
            
            if (response.result.isSuccess) {
                fulfill(response.result.value!)
            }else{
                reject(response.result.error!)
            }
            
        }
    }
}