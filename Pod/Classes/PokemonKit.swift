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


/*
slot	The order the Pokémon's types are listed in	integer
pokemon	The Pokémon that has the referenced type	NamedAPIResource (Pokemon)
*/
public class PKMTypePokemon: Mappable {
    public var slot: Int?
    public var pokemon: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        slot <- map["slot"]
        pokemon <- map["pokemon"]
    }
}


/*
no_damage_to	A list of types this type has no effect on	list NamedAPIResource (Type)
half_damage_to	A list of types this type is not very effect against	list NamedAPIResource (Type)
double_damage_to	A list of types this type is very effect against	list NamedAPIResource (Type)
no_damage_from	A list of types that have no effect on this type	list NamedAPIResource (Type)
half_damage_from	A list of types that are not very effective against this type	list NamedAPIResource (Type)
double_damage_from	A list of types that are very effective against this type	list NamedAPIResource (Type)
*/
public class PKMTypeRelations: Mappable {
    public var noDamageTo: [PKMNamedAPIResource]?
    public var halfDamageTo: [PKMNamedAPIResource]?
    public var doubleDamageTo: [PKMNamedAPIResource]?
    public var noDamageFrom: [PKMNamedAPIResource]?
    public var halfDamageFrom: [PKMNamedAPIResource]?
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


/*
id	The identifier for this type resource	integer
name	The name for this type resource	string
damage_relations	A detail of how effective this type is toward others and vice versa	TypeRelations
game_indices	A list of game indices relevent to this item by generation	list GenerationGameIndex
generation	The generation this type was introduced in	NamedAPIResource (Generation)
move_damage_class	The class of damage inflicted by this type	NamedAPIResource (MoveDamageClass)
names	The name of this type listed in different languages	list Name
pokemon	A list of details of Pokémon that have this type	TypePokemon
moves	A list of moves that have this type	list NamedAPIResource (Move)
*/
public class PKMType: Mappable {
    public var id: Int?
    public var name: String?
    public var damageRelations: PKMTypeRelations?
    public var gameIndices: [PKMGenerationGameIndex]?
    public var generation: PKMNamedAPIResource?
    public var moveDamageClass: PKMNamedAPIResource?
    public var names: [PKMName]?
    public var pokemon: [PKMTypePokemon]?
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


/*
increase	A list of natures and how they change the referenced stat	list NatureStatAffect
decrease	A list of nature sand how they change the referenced stat	list NatureStatAffect
*/
public class PKMNatureStatAffectSets: Mappable {
    public var increase: [PKMNatureStatAffect]?
    public var decrease: [PKMNatureStatAffect]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        increase <- map["increase"]
        decrease <- map["decrease"]
    }
}


/*
max_change	The maximum amount of change to the referenced stat	integer
nature	The nature causing the change	NamedAPIResource (Nature)
*/
public class PKMNatureStatAffect: Mappable {
    public var maxChange: Int?
    public var nature: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        maxChange <- map["max_change"]
        nature <- map["nature"]
    }
}

/*
max_change	The maximum amount of change to the referenced stat	integer
move	The move causing the change	NamedAPIResource (Move)
*/
public class PKMMoveStatAffect: Mappable {
    public var maxChange: Int?
    public var move: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        maxChange <- map["max_change"]
        move <- map["move"]
    }
}


/*
increase	A list of natures and how they change the referenced stat	list NatureStatAffect
decrease	A list of nature sand how they change the referenced stat	list NatureStatAffect
*/
public class PKMMoveStatAffectSets: Mappable {
    public var increase: [PKMMoveStatAffect]?
    public var decrease: [PKMMoveStatAffect]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        increase <- map["increase"]
        decrease <- map["decrease"]
    }
}


/*
id	The identifier for this stat resource	integer
name	The name for this stat resource	string
game_index	ID the games use for this stat	integer
is_battle_only	Whether this stat only exists within a battle	boolean
affecting_moves	A detail of moves which affect this stat positively or negatively	MoveStatAffectSets
affecting_natures	A detail of natures which affect this stat positively or negatively	NatureStatAffectSets
characteristics	A list of characteristics that are set on a Pokémon when its highest base stat is this stat	list APIResource (Characteristic)
move_damage_class	The class of damage this stat is directly related to	NamedAPIResource (MoveDamageClass)
names	The name of this region listed in different languages	list Name
*/
public class PKMStat: Mappable {
    public var id: Int?
    public var name: String?
    public var gameIndex: Int?
    public var isBattleOnly: Bool?
    public var affectingMoves: PKMMoveStatAffectSets?
    public var affectingNatures: PKMNatureStatAffectSets?
    public var characteristics: [PKMAPIResource]?
    public var moveDamageClass: PKMNamedAPIResource?
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


/*
entry_number	The index number within the Pokédex	integer
name	The Pokédex the referenced Pokémon species can be found in	NamedAPIResource (Pokedex)
*/
public class PKMPokemonSpeciesDexEntry: Mappable {
    public var entryNumber: Int?
    public var name: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        entryNumber <- map["entry_number"]
        name <- map["name"]
    }
}

/*
base_score	The base score given to the player when the referenced Pokémon is caught during a pal park run	integer
rate	The base rate for encountering the referenced Pokémon in this pal park area	integer
area	The pal park area where this encounter happens	NamedAPIResource (PalParkArea)
*/
public class PKMPalParkEncounterArea: Mappable {
    public var baseScore: Int?
    public var rate: Int?
    public var area: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        baseScore <- map["base_score"]
        rate <- map["rate"]
        area <- map["area"]
    }
}

/*
flavor_text	The localized flavor text for an API resource in a specific language	string
language	The language this name is in	NamedAPIResource (Language)
version	The version this flavor text entry is used in	NamedAPIResource (Version)
*/
public class PKMPokemonSpeciesFlavorText: Mappable {
    public var flavorText: String?
    public var language: PKMNamedAPIResource?
    public var version: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        flavorText <- map["flavor_text"]
        language <- map["language"]
        version <- map["version"]
    }
}

/*
genus	The localized genus for the referenced pokemon species	string
language	The language this genus is in	NamedAPIResource (Language)
*/
public class PKMGenus: Mappable {
    public var genus: String?
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        genus <- map["genus"]
        language <- map["language"]
    }
}


/*
id	The identifier for this Pokémon species resource	integer
name	The name for this Pokémon species resource	string
order	The order in which species should be sorted. Based on National Dex order, except families are grouped together and sorted by stage.	integer
gender_rate	The chance of this Pokémon being female, in eighths; or -1 for genderless	integer
capture_rate	The base capture rate; up to 255. The higher the number, the easier the catch.	integer
base_happiness	The happiness when caught by a normal Pokéball; up to 255. The higher the number, the happier the Pokémon.	integer
is_baby	Whether or not this is a baby Pokémon	boolean
hatch_counter	Initial hatch counter: one must walk 255 × (hatch_counter + 1) steps before this Pokémon's egg hatches, unless utilizing bonuses like Flame Body's	integer
has_gender_differences	Whether or not this Pokémon can have different genders	boolean
forms_switchable	Whether or not this Pokémon has multiple forms and can switch between them	boolean
growth_rate	The rate at which this Pokémon species gains levels	NamedAPIResource (GrowthRate)
pokedex_numbers	A list of pokedexes and the indexes reserved within them for this Pokémon species	list PokemonSpeciesDexEntry
egg_groups	A list of egg groups this Pokémon species is a member of	list NamedAPIResource (EggGroup)
color	The color of this Pokémon for gimmicky Pokédex search	list NamedAPIResource (PokemonColor)
shape	The shape of this Pokémon for gimmicky Pokédex search	list NamedAPIResource (PokemonShape)
evolves_from_species	The Pokémon species that evolves into this pokemon_species	NamedAPIResource (PokemonSpecies)
evolution_chain	The evolution chain this Pokémon species is a member of	APIResource (EvolutionChain)
habitat	The habitat this Pokémon species can be encountered in	NamedAPIResource (PokemonHabitat)
generation	The generation this Pokémon species was introduced in	NamedAPIResource (Generation)
names	The name of this Pokémon species listed in different languages	list Name
pal_park_encounters	A list of encounters that can be had with this Pokémon species in pal park	list PalParkEncounterArea
flavor_text_entries	The flavor text of this flavor text listed in different languages	list PokemonSpeciesFlavorText
form_descriptions	Descriptions of different forms Pokémon take on within the Pokémon species	list Description
genera	The genus of this Pokémon species listed in multiple languages	Genus
varieties	A list of the Pokémon that exist within this Pokémon species	list NamedAPIResource (Pokemon)
*/
public class PKMPokemonSpecies: Mappable {
    public var id: Int?
    public var name: String?
    public var order: Int?
    public var genderRate: Int?
    public var captureRate: Int?
    public var baseHappiness: Int?
    public var isBaby: Bool?
    public var hatchCounter: Int?
    public var hasGenderDifferences: Bool?
    public var formsSwitchable: Bool?
    public var growthRate: PKMNamedAPIResource?
    public var pokedexNumbers: [PKMPokemonSpeciesDexEntry]?
    public var eggGroups: [PKMNamedAPIResource]?
    public var color: PKMNamedAPIResource?
    public var shape: PKMNamedAPIResource?
    public var evolutionChain: PKMAPIResource?
    public var habitat: PKMNamedAPIResource?
    public var generation: PKMNamedAPIResource?
    public var names: [PKMName]?
    public var palParkEncounters: [PKMPalParkEncounterArea]?
    public var flavorTextEntries: [PKMPokemonSpeciesFlavorText]?
    public var formDescriptions: [PKMDescription]?
    public var genera: [PKMGenus]?
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


/*
awesome_name	The localized "scientific" name for an API resource in a specific language	string
language	The language this "scientific" name is in	NamedAPIResource (Language)
*/
public class PKMAwesomeName: Mappable {
    public var awesomeName: String?
    public var language: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        awesomeName <- map["awesome_name"]
        language <- map["language"]
    }
}


/*
id	The identifier for this Pokémon shape resource	integer
name	The name for this Pokémon shape resource	string
awesome_names	The "scientific" name of this Pokémon shape listed in different languages	list AwesomeName
names	The name of this Pokémon shape listed in different languages	list Name
pokemon_species	A list of the Pokémon species that have this shape	list NamedAPIResource (PokemonSpecies)
*/
public class PKMPokemonShape: Mappable {
    public var id: Int?
    public var name: String?
    public var awesomeNames: [PKMAwesomeName]?
    public var names: [PKMName]?
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


/*
id	The identifier for this Pokémon habitat resource	integer
name	The name for this Pokémon habitat resource	string
names	The name of this Pokémon habitat listed in different languages	list Name
pokemon_species	A list of the Pokémon species that can be found in this habitat	list NamedAPIResource (PokemonSpecies)
*/
public class PKMPokemonHabitat: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMName]?
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


/*
front_default	The default depiction of this Pokémon form from the front in battle	string
front_shiny	The shiny depiction of this Pokémon form from the front in battle	string
back_default	The default depiction of this Pokémon form from the back in battle	string
back_shiny	The shiny depiction of this Pokémon form from the back in battle	string
*/
public class PKMPokemonFormSprites: Mappable {
    public var frontDefault: String?
    public var frontShiny: String?
    public var backDefault: String?
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


/*
id	The identifier for this Pokémon form resource	integer
name	The name for this Pokémon form resource	string
order	The order in which forms should be sorted within all forms. Multiple forms may have equal order, in which case they should fall back on sorting by name.	integer
form_order	The order in which forms should be sorted within a species' forms	integer
is_default	True for exactly one form used as the default for each Pokémon	boolean
is_battle_only	Whether or not this form can only happen during battle	boolean
is_mega	Whether or not this form requires mega evolution	boolean
form_name	The name of this form	string
pokemon	The Pokémon that can take on this form	NamedAPIResource (Pokemon)
sprites	A set of sprites used to depict this Pokémon form in the game	PokemonFormSprites
version_group	The version group this Pokémon form was introduced in	NamedAPIResource (VersionGroup)
*/
public class PKMPokemonForm: Mappable {
    public var id: Int?
    public var name: String?
    public var order: Int?
    public var formOrder: Int?
    public var isDefault: Bool?
    public var isBattleOnly: Bool?
    public var isMega: Bool?
    public var formName: String?
    public var pokemon: PKMNamedAPIResource?
    public var sprites: PKMPokemonFormSprites?
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


/*
id	The identifier for this Pokémon color resource	integer
name	The name for this Pokémon color resource	string
names	The name of this Pokémon color listed in different languages	list Name
pokemon_species	A list of the Pokémon species that have this color	list NamedAPIResource (PokemonSpecies)
*/
public class PKMPokemonColor: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMName]?
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


/*
game_index	The internal id of an API resource within game data	integer
version	The version relevent to this game index	NamedAPIResource (Version)
*/
public class PKMVersionGameIndex: Mappable {
    public var gameIndex: Int?
    public var version: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        gameIndex <- map["game_index"]
        version <- map["version"]
    }
}


/*
is_hidden	Whether or not this is a hidden ability	boolean
slot	The slot this ability occupies in this Pokémon species	integer
ability	The ability the Pokémon may have	NamedAPIResource (Ability)
*/
public class PKMPokemonAbility: Mappable {
    public var isHidden: Bool?
    public var slot: Int?
    public var ability: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        isHidden <- map["is_hidden"]
        slot <- map["slot"]
        ability <- map["ability"]
    }
}

/*
location_area	The location area the referenced Pokémon can be encountered in	APIResource (LocationArea)
version_details	A list of versions and encounters with the referenced Pokémon that might happen	list VersionEncounterDetail
*/
public class PKMLocationAreaEncounter: Mappable {
    public var locationArea: PKMAPIResource?
    public var versionDetails: [PKMVersionEncounterDetail]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        locationArea <- map["location_area"]
        versionDetails <- map["version_details"]
    }
}

/*
front_default	The default depiction of this Pokémon from the front in battle	string
front_shiny	The shiny depiction of this Pokémon from the front in battle	string
front_female	The female depiction of this Pokémon from the front in battle	string
front_shiny_female	The shiny female depiction of this Pokémon from the front in battle	string
back_default	The default depiction of this Pokémon from the back in battle	string
back_shiny	The shiny depiction of this Pokémon from the back in battle	string
back_female	The female depiction of this Pokémon from the back in battle	string
back_shiny_female	The shiny female depiction of this Pokémon from the back in battle	string
*/
public class PKMPokemonSprites: Mappable {
    public var frontDefault: String?
    public var frontShiny: String?
    public var frontFemale: String?
    public var frontShinyFemale: String?
    public var backDefault: String?
    public var backShiny: String?
    public var backFemale: String?
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

/*
slot	The order the Pokémon's types are listed in	integer
type	The type the referenced Pokémon has	string
*/
public class PKMPokemonType: Mappable {
    public var slot: Int?
    public var type: String?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        slot <- map["slot"]
        type <- map["type"]
    }
}


/*
id	The identifier for this Pokémon resource	integer
name	The name for this Pokémon resource	string
base_experience	The base experience gained for defeating this Pokémon	integer
height	The height of this Pokémon	integer
is_default	Set for exactly one Pokémon used as the default for each species	boolean
order	Order for sorting. Almost national order, except families are grouped together.	integer
weight	The weight of this Pokémon	integer
abilities	A list of abilities this Pokémon could potentially have	list PokemonAbility
forms	A list of forms this Pokémon can take on	list NamedAPIResource (PokemonForm)
game_indices	A list of game indices relevent to Pokémon item by generation	list VersionGameIndex
held_items	A list of items this Pokémon may be holding when encountered	list NamedAPIResource (Item)
location_area_encounters	A list of location areas as well as encounter details pertaining to specific versions	list LocationAreaEncounter
moves	A list of moves along with learn methods and level details pertaining to specific version groups	list NamedAPIResource (Move)
sprites	A set of sprites used to depict this Pokémon in the game	PokemonSprites
species	The species this Pokémon belongs to	NamedAPIResource (PokemonSpecies)
stats	A list of base stat values for this Pokémon	list NamedAPIResource (Stat)
types	A list of details showing types this Pokémon has	list PokemonType
*/
public class PKMPokemon: Mappable {
    public var id: Int?
    public var name: String?
    public var base_experience: Int?
    public var height: Int?
    public var is_default: Bool?
    public var order: Int?
    public var weight: Int?
    public var abilities: [PKMPokemonAbility]?
    public var forms: [PKMNamedAPIResource]?
    public var gameIndices: [PKMVersionGameIndex]?
    public var heldItems: [PKMNamedAPIResource]?
    public var locationAreaEncounters: [PKMLocationAreaEncounter]?
    public var moves: [PKMNamedAPIResource]?
    public var sprites: PKMPokemonSprites?
    public var species: PKMNamedAPIResource?
    public var stats: [PKMNamedAPIResource]?
    public var types: [PKMPokemonType]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        base_experience <- map["base_experience"]
        height <- map["height"]
        is_default <- map["is_default"]
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


/*
max_change	The maximum amount of change to the referenced Pokéathlon stat	integer
nature	The nature causing the change	NamedAPIResource (Nature)
*/
public class PKMNaturePokeathlonStatAffect: Mappable {
    public var maxChange: Int?
    public var nature: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        maxChange <- map["max_change"]
        nature <- map["nature"]
    }
}

/*
increase	A list of natures and how they change the referenced Pokéathlon stat	list NaturePokeathlonStatAffect
decrease	A list of natures and how they change the referenced Pokéathlon stat	list NaturePokeathlonStatAffect
*/
public class PKMNaturePokeathlonStatAffectSets: Mappable {
    public var increase: [PKMNaturePokeathlonStatAffect]?
    public var decrease: [PKMNaturePokeathlonStatAffect]?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        increase <- map["increase"]
        decrease <- map["decrease"]
    }
}


/*
id	The identifier for this Pokéathlon stat resource	integer
name	The name for this Pokéathlon stat resource	string
names	The name of this Pokéathlon stat listed in different languages	list Name
affecting_natures	A detail of natures which affect this Pokéathlon stat positively or negatively	NaturePokeathlonStatAffectSets
*/
public class PKMPokeathlonStat: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMName]?
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


/*
low_hp_preference	Chance of using the move, in percent, if HP is under one half	integer
high_hp_preference	Chance of using the move, in percent, if HP is over one half	integer
move_battle_style	The move battle style	NamedAPIResource (MoveBattleStyle)
*/
public class PKMMoveBattleStylePreference: Mappable {
    public var lowHpPreference: Int?
    public var highHpPreference: Int?
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


/*
id	The identifier for this nature resource	integer
name	The name for this nature resource	string
decreased_stat	The stat decreased by 10% in Pokémon with this nature	NamedAPIResource (Stat)
increased_stat	The stat increased by 10% in Pokémon with this nature	NamedAPIResource (Stat)
hates_flavor	The flavor hated by Pokémon with this nature	NamedAPIResource (BerryFlavor)
likes_flavor	The flavor liked by Pokémon with this nature	NamedAPIResource (BerryFlavor)
pokeathlon_stat_changes	A list of Pokéathlon stats this nature effects and how much it effects them	list NatureStatChange
move_battle_style_preferences	A list of battle styles and how likely a Pokémon with this nature is to use them in the Battle Palace or Battle Tent.	list MoveBattleStylePreference
names	The name of this nature listed in different languages	list Name
*/
public class PKMNature: Mappable {
    public var id: Int?
    public var name: String?
    public var decreasedStat: PKMNamedAPIResource?
    public var increasedStat: PKMNamedAPIResource?
    public var hatesFlavor: PKMNamedAPIResource?
    public var likesFlavor: PKMNamedAPIResource?
    public var pokeathlonStatChanges: [PKMNatureStatChange]?
    public var moveBattleStylePreferences: [PKMMoveBattleStylePreference]?
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
public class PKMGrowthRateExperienceLevel: Mappable {
    public var level: Int?
    public var experience: Int?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        level <- map["level"]
        experience <- map["experience"]
    }
}


/*
id	The identifier for this gender resource	integer
name	The name for this gender resource	string
formula	The formula used to calculate the rate at which the Pokémon species gains level	string
descriptions	The descriptions of this characteristic listed in different languages	list Description
levels	A list of levels and the amount of experienced needed to atain them based on this growth rate	list GrowthRateExperienceLevel
pokemon_species	A list of Pokémon species that gain levels at this growth rate	list NamedAPIResource (PokemonSpecies)
*/
public class PKMGrowthRate: Mappable {
    public var id: Int?
    public var name: String?
    public var formula: String?
    public var descriptions: [PKMDescription]?
    public var levels: [PKMGrowthRateExperienceLevel]?
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


/*
rate	The chance of this Pokémon being female, in eighths; or -1 for genderless	integer
pokemon_species	A Pokémon species that can be the referenced gender	NamedAPIResource (PokemonSpecies)
*/
public class PKMPokemonSpeciesGender: Mappable {
    public var rate: Int?
    public var pokemonSpecies: PKMNamedAPIResource?
    
    required public init?(_ map: Map) {
        
    }
    
    public func mapping(map: Map) {
        rate <- map["rate"]
        pokemonSpecies <- map["pokemon_species"]
    }
}


/*
id	The identifier for this gender resource	integer
name	The name for this gender resource	string
pokemon_species_details	A list of Pokémon species that can be this gender and how likely it is that they will be	list PokemonSpeciesGender
required_for_evolution	A list of Pokémon species that required this gender in order for a Pokémon to evolve into them	list NamedAPIResource (PokemonSpecies)
*/
public class PKMGender: Mappable {
    public var id: Int?
    public var name: String?
    public var pokemonSpeciesDetails: [PKMPokemonSpeciesGender]?
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


/*
id	The identifier for this egg group resource	integer
name	The name for this egg group resource	string
names	The name of this egg group listed in different languages	list Name
pokemon_species	A list of all Pokémon species that are members of this egg group	list NamedAPIResource (PokemonSpecies)
*/
public class PKMEggGroup: Mappable {
    public var id: Int?
    public var name: String?
    public var names: [PKMName]?
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


/*
id	The identifier for this characteristic resource	integer
gene_modulo	The remainder of the highest stat/IV divided by 5	integer
possible_values	The possible values of the highest stat that would result in a Pokémon recieving this characteristic when divided by 5	list integer
descriptions	The descriptions of this characteristic listed in different languages	list (Description)
*/
public class PKMCharacteristic: Mappable {
    public var id: Int?
    public var geneModulo: Int?
    public var possibleValues: [Int]?
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

//Characteristic

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

//EggGroup

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

//Gender

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

//GrowthRate

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

//Nature

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

//PokeathlonStat

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

//Pokemon

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

//PokemonColor

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

//PokemonForm

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

//PokemonHabitat

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

//PokemonShape

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

//PokemonSpecies

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

//Stat

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

//Type

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

//Language

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