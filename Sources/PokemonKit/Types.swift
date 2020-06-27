// PokemonKit 2019

/// Languages for translations of API resource information.
public struct Language: Codable {
    
    /// The identifier for this language resource
    public let id: Int
    
    /// The name for this language resource
    public let name: String
    
    /// Whether or not the games are published in this language
    public let official: Bool
    
    /// The two-letter code of the country where this language is spoken. Note that it is not unique.
    public let iso639: String
    
    /// The two-letter code of the language. Note that it is not unique.
    public let iso3166: String
    
    /// The name of this language listed in different languages
    public let names: [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case official = "official"
        case iso639 = "iso639"
        case iso3166 = "iso3166"
        case names = "names"
    }
}

/// Pokemon Type
public struct TypePokemon: Codable {
    
    /// The order the Pokémon's types are listed in
    public let slot: Int
    
    /// The Pokémon that has the referenced type
    public let pokemon: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case slot = "slot"
        case pokemon = "pokemon"
    }
}

/// Pokemon Type Relations
public struct TypeRelations: Codable {
    
    /// A list of types this type has no effect on
    public let noDamageTo: [NamedAPIResource]
    
    /// A list of types this type is not very effect against
    public let halfDamageTo: [NamedAPIResource]
    
    /// A list of types this type is very effect against
    public let doubleDamageTo: [NamedAPIResource]
    
    /// A list of types that have no effect on this type
    public let noDamageFrom: [NamedAPIResource]
    
    /// A list of types that are not very effective against this type
    public let halfDamageFrom: [NamedAPIResource]
    
    /// A list of types that are very effective against this type
    public let doubleDamageFrom: [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case noDamageTo = "no_damage_to"
        case halfDamageTo = "half_damage_to"
        case doubleDamageTo = "double_damage_to"
        case noDamageFrom = "no_damage_from"
        case halfDamageFrom = "half_damage_from"
        case doubleDamageFrom = "double_damage_from"
    }
}

/// Types are properties for Pokémon and their moves. Each type has three properties: which types of Pokémon it is super effective against, which types of Pokémon it is not very effective against, and which types of Pokémon it is completely ineffective against.
public struct Type: Codable {
    
    /// The identifier for this type resource
    public let id: Int
    
    /// The name for this type resource
    public let name: String
    
    /// A detail of how effective this type is toward others and vice versa
    public let damageRelations: TypeRelations
    
    /// A list of game indices relevent to this item by generation
    public let gameIndices: [GenerationGameIndex]
    
    /// The generation this type was introduced in
    public let generation: NamedAPIResource
    
    /// The class of damage inflicted by this type
    public let moveDamageClass: NamedAPIResource
    
    /// The name of this type listed in different languages
    public let names: [Name]
    
    /// A list of details of Pokémon that have this type
    public let pokemon: [TypePokemon]
    
    /// A list of moves that have this type
    public let moves: [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case damageRelations = "damage_relations"
        case gameIndices = "game_indices"
        case generation = "generation"
        case moveDamageClass = "move_damage_class"
        case names = "names"
        case pokemon = "pokemon"
        case moves = "moves"
    }
}


/// Nature Affect Set
public struct NatureStatAffectSets: Codable {
    
    /// A list of natures and how they change the referenced stat
    public let increase: [NatureStatAffect]
    
    /// A list of nature sand how they change the referenced stat
    public let decrease: [NatureStatAffect]

    enum CodingKeys: String, CodingKey {
        case increase = "increase"
        case decrease = "decrease"
    }
}


/// Nature Stat Affect
public struct NatureStatAffect: Codable {
    
    /// The maximum amount of change to the referenced stat
    public let maxChange: Int
    
    /// The nature causing the change
    public let nature: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case maxChange = "max_change"
        case nature = "nature"
    }
}

/// Move Stat Affect
public struct MoveStatAffect: Codable {
    
    /// The maximum amount of change to the referenced stat
    public let change: Int
    
    /// The move causing the change
    public let move: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case change = "change"
        case move = "move"
    }
}

/// Move Stat Affect Sets
public struct MoveStatAffectSets: Codable {
    
    /// A list of natures and how they change the referenced stat
    public let increase: [MoveStatAffect]
    
    /// A list of nature sand how they change the referenced stat
    public let decrease: [MoveStatAffect]

    enum CodingKeys: String, CodingKey {
        case increase = "increase"
        case decrease = "decrease"
    }
}

/// Stats determine certain aspects of battles. Each Pokémon has a value for each stat which grows as they gain levels and can be altered momentarily by effects in battles.
public struct Stat: Codable {
    
    /// The identifier for this stat resource
    public let id: Int
    
    /// The name for this stat resource
    public let name: String
    
    /// ID the games use for this stat
    public let gameIndex: Int
    
    /// Whether this stat only exists within a battle
    public let isBattleOnly: Bool
    
    /// A detail of moves which affect this stat positively or negatively
    public let affectingMoves: MoveStatAffectSets
    
    //// A detail of natures which affect this stat positively or negatively
    public let affectingNatures: NatureStatAffectSets
    
    /// A list of characteristics that are set on a Pokémon when its highest base stat is this stat
    public let characteristics: [APIResource]
    
    /// The class of damage this stat is directly related to
    public let moveDamageClass: NamedAPIResource?

    /// The name of this region listed in different languages
    public let names: [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case gameIndex = "game_index"
        case isBattleOnly = "is_battle_only"
        case affectingMoves = "affecting_moves"
        case affectingNatures = "affecting_natures"
        case characteristics = "characteristics"
        case moveDamageClass = "move_damage_class"
        case names = "names"
    }
}

/// Pokemon Species Dex Entry
public struct PokemonSpeciesDexEntry: Codable {
    
    /// The index number within the Pokédex
    public let entryNumber: Int
    
    /// The Pokédex the referenced Pokémon species can be found in
    public let pokedex: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case entryNumber = "entry_number"
        case pokedex = "pokedex"
    }
}

/// PalPark Encounter Area
public struct PalParkEncounterArea: Codable {
    
    /// The base score given to the player when the referenced Pokémon is caught during a pal park run
    public let baseScore: Int
    
    /// The base rate for encountering the referenced Pokémon in this pal park area
    public let rate: Int
    
    /// The pal park area where this encounter happens
    public let area: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case baseScore = "base_score"
        case rate = "rate"
        case area = "area"
    }
}

/// Pokemon Species Flavor Text
public struct PokemonSpeciesFlavorText: Codable {
    
    /// The localized flavor text for an API resource in a specific language
    public let flavorText: String
    
    /// The language this name is in
    public let language: NamedAPIResource
    
    /// The version this flavor text entry is used in
    public let version: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case flavorText = "flavor_text"
        case language = "language"
        case version = "version"
    }
}

/// TODO: Documentation
public struct AbilityFlavorText: Codable {

    /// The localized flavor text for an API resource in a specific language
    public let flavorText: String

    /// The language this name is in
    public let language: NamedAPIResource

    /// The version this flavor text entry is used in
    public let versionGroup: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case flavorText = "flavor_text"
        case language = "language"
        case versionGroup = "version_group"
    }
}

/// Genus
public struct Genus: Codable {
    
    /// The localized genus for the referenced pokemon species
    public let genus: String
    
    /// The language this genus is in
    public let language: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case genus = "genus"
        case language = "language"
    }
}

/// TODO: Documentation
public struct PokemonSpeciesVariety: Codable {

    /// TODO: Documentation
    public let isDefault: Bool

    /// TODO: Documentation
    public let pokemon: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case isDefault = "is_default"
        case pokemon = "pokemon"
    }
}

/// A Pokémon Species forms the basis for at least one Pokémon. Attributes of a Pokémon species are shared across all varieties of Pokémon within the species. A good example is Wormadam; Wormadam is the species which can be found in three different varieties, Wormadam-Trash, Wormadam-Sandy and Wormadam-Plant.
public struct PokemonSpecies: Codable {
    
    /// The identifier for this Pokémon species resource
    public let id: Int
    
    /// The name for this Pokémon species resource
    public let name: String
    
    /// The order in which species should be sorted. Based on National Dex order, except families are grouped together and sorted by stage.
    public let order: Int
    
    /// The chance of this Pokémon being female, in eighths; or -1 for genderless
    public let genderRate: Int
    
    /// The base capture rate; up to 255. The higher the number, the easier the catch.
    public let captureRate: Int
    
    /// The happiness when caught by a normal Pokéball; up to 255. The higher the number, the happier the Pokémon.
    public let baseHappiness: Int
    
    /// Whether or not this is a baby Pokémon
    public let isBaby: Bool
    
    /// Initial hatch counter: one must walk 255 × (hatch_counter + 1) steps before this Pokémon's egg hatches, unless utilizing bonuses like Flame Body's
    public let hatchCounter: Int
    
    /// Whether or not this Pokémon can have different genders
    public let hasGenderDifferences: Bool
    
    /// Whether or not this Pokémon has multiple forms and can switch between them
    public let formsSwitchable: Bool
    
    /// The rate at which this Pokémon species gains levels
    public let growthRate: NamedAPIResource
    
    /// A list of pokedexes and the indexes reserved within them for this Pokémon species
    public let pokedexNumbers: [PokemonSpeciesDexEntry]
    
    /// A list of egg groups this Pokémon species is a member of
    public let eggGroups: [NamedAPIResource]
    
    /// The color of this Pokémon for gimmicky Pokédex search
    public let color: NamedAPIResource
    
    /// The shape of this Pokémon for gimmicky Pokédex search
    public let shape: NamedAPIResource
    
    /// The Pokémon species that evolves into this pokemon_species
    public let evolvesFromSpecies: NamedAPIResource?
    
    /// The evolution chain this Pokémon species is a member of
    public let evolutionChain: APIResource
    
    /// The habitat this Pokémon species can be encountered in
    public let habitat: NamedAPIResource
    
    /// The generation this Pokémon species was introduced in
    public let generation: NamedAPIResource
    
    /// The name of this Pokémon species listed in different languages
    public let names: [Name]
    
    /// A list of encounters that can be had with this Pokémon species in pal park
    public let palParkEncounters: [PalParkEncounterArea]
    
    /// The flavor text of this flavor text listed in different languages
    public let flavorTextEntries: [PokemonSpeciesFlavorText]
    
    /// Descriptions of different forms Pokémon take on within the Pokémon species
    public let formDescriptions: [Description]
    
    /// The genus of this Pokémon species listed in multiple languages
    public let genera: [Genus]
    
    /// A list of the Pokémon that exist within this Pokémon species
    public let varieties: [PokemonSpeciesVariety]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case order = "order"
        case genderRate = "gender_rate"
        case captureRate = "capture_rate"
        case baseHappiness = "base_happiness"
        case isBaby = "is_baby"
        case hatchCounter = "hatch_counter"
        case hasGenderDifferences = "has_gender_differences"
        case formsSwitchable = "forms_switchable"
        case growthRate = "growth_rate"
        case pokedexNumbers = "pokedex_numbers"
        case eggGroups = "egg_groups"
        case color = "color"
        case shape = "shape"
        case evolvesFromSpecies = "evolves_from_species"
        case evolutionChain = "evolution_chain"
        case habitat = "habitat"
        case generation = "generation"
        case names = "names"
        case palParkEncounters = "pal_park_encounters"
        case flavorTextEntries = "flavor_text_entries"
        case formDescriptions = "form_descriptions"
        case genera = "genera"
        case varieties = "varieties"
    }
}

/// An Awesome Name
public struct AwesomeName: Codable {
    
    /// The localized "scientific" name for an API resource in a specific language
    public let awesomeName: String
    
    /// The language this "scientific" name is in
    public let language: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case awesomeName = "awesome_name"
        case language = "language"
    }
}

/// Shapes used for sorting Pokémon in a Pokédex.
public struct PokemonShape: Codable {
    
    /// The identifier for this Pokémon shape
    public let id: Int
    
    /// The name for this Pokémon shape resource
    public let name: String
    
    /// The "scientific" name of this Pokémon shape listed in different languages
    public let awesomeNames: [AwesomeName]
    
    /// The name of this Pokémon shape listed in different languages
    public let names: [Name]
    
    /// A list of the Pokémon species that have this shape
    public let pokemonSpecies: [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case awesomeNames = "awesome_names"
        case names = "names"
        case pokemonSpecies = "pokemon_species"
    }
}

/// Habitats are generally different terrain Pokémon can be found in but can also be areas designated for rare or legendary Pokémon.
public struct PokemonHabitat: Codable {
    
    /// The identifier for this Pokémon habitat resource
    public let id: Int
    
    /// The name for this Pokémon habitat resource
    public let name: String
    
    /// The name of this Pokémon habitat listed in different languages
    public let names: [Name]
    
    /// A list of the Pokémon species that can be found in this habitat
    public let pokemonSpecies: [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case names = "names"
        case pokemonSpecies = "pokemon_species"
    }
}

/// Pokemon Form Sprites
public struct PokemonFormSprites: Codable {
    
    /// The default depiction of this Pokémon form from the front in battle
    public let frontDefault: String
    
    /// The shiny depiction of this Pokémon form from the front in battle
    public let frontShiny: String
    
    /// The default depiction of this Pokémon form from the back in battle
    public let backDefault: String
    
    /// The shiny depiction of this Pokémon form from the back in battle
    public let backShiny: String

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
        case backDefault = "back_default"
        case backShiny = "back_shiny"
    }
}

/// Some Pokémon have the ability to take on different forms. At times, these differences are purely cosmetic and have no bearing on the difference in the Pokémon's stats from another; however, several Pokémon differ in stats (other than HP), type, and Ability depending on their form.
public struct PokemonForm: Codable {
    
    /// The identifier for this Pokémon form resource
    public let id: Int
    
    /// The name for this Pokémon form resource
    public let name: String
    
    /// The order in which forms should be sorted within all forms. Multiple forms may have equal order, in which case they should fall back on sorting by name.
    public let order: Int
    
    /// The order in which forms should be sorted within a species' forms
    public let formOrder: Int
    
    /// True for exactly one form used as the default for each Pokémon
    public let isDefault: Bool
    
    /// Whether or not this form can only happen during battle
    public let isBattleOnly: Bool
    
    /// Whether or not this form requires mega evolution
    public let isMega: Bool
    
    /// The name of this form
    public let formName: String
    
    /// The Pokémon that can take on this form
    public let pokemon: NamedAPIResource
    
    /// A set of sprites used to depict this Pokémon form in the game
    public let sprites: PokemonFormSprites
    
    /// The version group this Pokémon form was introduced in
    public let versionGroup: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case order = "order"
        case formOrder = "form_order"
        case isDefault = "is_default"
        case isBattleOnly = "is_battle_only"
        case isMega = "is_mega"
        case formName = "form_name"
        case pokemon = "pokemon"
        case sprites = "sprites"
        case versionGroup = "version_group"
    }
}

/// Colors used for sorting Pokémon in a Pokédex. The color listed in the Pokédex is usually the color most apparent or covering each Pokémon's body. No orange category exists; Pokémon that are primarily orange are listed as red or brown.
public struct PokemonColor: Codable {
    
    /// The identifier for this Pokémon color resource
    public let id: Int
    
    /// The name for this Pokémon color resource
    public let name: String
    
    /// The name of this Pokémon color listed in different languages
    public let names: [Name]
    
    /// A list of the Pokémon species that have this color
    public let pokemonSpecies: [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case names = "names"
        case pokemonSpecies = "pokemon_species"
    }
}

/// Version Game Index
public struct VersionGameIndex: Codable {
    
    /// The internal id of an API resource within game data
    public let gameIndex: Int
    
    /// The version relevent to this game index
    public let version: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case gameIndex = "game_index"
        case version = "version"
    }
}

/// Pokemon Ability
public struct PokemonAbility: Codable {
    
    /// Whether or not this is a hidden ability
    public let isHidden: Bool
    
    /// The slot this ability occupies in this Pokémon species
    public let slot: Int
    
    /// The ability the Pokémon may have
    public let ability: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case isHidden = "is_hidden"
        case slot = "slot"
        case ability = "ability"
    }
}

/// Location Area Encounter
public struct LocationAreaEncounter: Codable {
    
    /// The location area the referenced Pokémon can be encountered in
    public let locationArea: APIResource
    
    /// A list of versions and encounters with the referenced Pokémon that might happen
    public let versionDetails: [VersionEncounterDetail]

    enum CodingKeys: String, CodingKey {
        case locationArea = "location_area"
        case versionDetails = "version_details"
    }
}

/// Pokemon Sprites
public struct PokemonSprites: Codable {
    
    /// The default depiction of this Pokémon from the front in battle
    public let frontDefault: String?
    
    /// The shiny depiction of this Pokémon from the front in battle
    public let frontShiny: String?
    
    /// The female depiction of this Pokémon from the front in battle
    public let frontFemale: String?
    
    /// The shiny female depiction of this Pokémon from the front
    public let frontShinyFemale: String?
    
    /// The default depiction of this Pokémon from the back in battle
    public let backDefault: String?
    
    /// The shiny depiction of this Pokémon from the back in battle
    public let backShiny: String?
    
    /// The female depiction of this Pokémon from the back in battle
    public let backFemale: String?
    
    /// The shiny female depiction of this Pokémon from the back in battle
    public let backShinyFemale: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
        case frontFemale = "front_female"
        case frontShinyFemale = "front_shiny_female"
        case backDefault = "back_default"
        case backShiny = "back_shiny"
        case backFemale = "back_female"
        case backShinyFemale = "back_shiny_female"
    }
}

/// Pokemon Type
public struct PokemonType: Codable {
    
    /// The order the Pokémon's types are listed in
    public let slot: Int
    
    /// The type the referenced Pokémon has
    public let type: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case slot = "slot"
        case type = "type"
    }
}

/// TODO: Documentation
public struct PokemonMoveVersion: Codable {

    /// TODO: Documentation
    public let moveLearnMethod: NamedAPIResource

    /// TODO: Documentation
    public let versionGroup: NamedAPIResource

    /// TODO: Documentation
    public let levelLearnedAt: Int

    enum CodingKeys: String, CodingKey {
        case moveLearnMethod = "move_learn_method"
        case versionGroup = "version_group"
        case levelLearnedAt = "level_learned_at"
    }
}

/// TODO: Documentation
public struct PokemonMove: Codable {

    /// TODO: Documentation
    public let move: NamedAPIResource

    /// TODO: Documentation
    public let versionGroupDetails: [PokemonMoveVersion]

    enum CodingKeys: String, CodingKey {
        case move = "move"
        case versionGroupDetails = "version_group_details"
    }
}

/// TODO: Documentation
public struct PokemonStat: Codable {

    /// TODO: Documentation
    public let stat: NamedAPIResource

    /// TODO: Documentation
    public let effort: Int

    /// TODO: Documentation
    public let baseStat: Int

    enum CodingKeys: String, CodingKey {
        case stat = "stat"
        case effort = "effort"
        case baseStat = "base_stat"
    }
}

/// Pokémon are the creatures that inhabit the world of the Pokémon games. They can be caught using Pokéballs and trained by battling with other Pokémon. See Bulbapedia for greater detail.
public struct Pokemon: Codable {
    
    /// The identifier for this Pokémon resource
    public let id: Int
    
    /// The name for this Pokémon resource
    public let name: String
    
    /// The base experience gained for defeating this Pokémon
    public let baseExperience: Int
    
    /// The height of this Pokémon
    public let height: Int
    
    /// Set for exactly one Pokémon used as the default for each species
    public let isDefault: Bool
    
    /// Order for sorting. Almost national order, except families are grouped together.
    public let order: Int
    
    /// The weight of this Pokémon
    public let weight: Int
    
    /// A list of abilities this Pokémon could potentially have
    public let abilities: [PokemonAbility]
    
    /// A list of forms this Pokémon can take on
    public let forms: [NamedAPIResource]
    
    /// A list of game indices relevent to Pokémon item by generation
    public let gameIndices: [VersionGameIndex]
    
    /// A list of items this Pokémon may be holding when encountered
    public let heldItems: [NamedAPIResource]
    
    /// A list of location areas as well as encounter details pertaining to specific versions
    public let locationAreaEncounters: String
    
    /// A list of moves along with learn methods and level details pertaining to specific version groups
    public let moves: [PokemonMove]
    
    /// A set of sprites used to depict this Pokémon in the game
    public let sprites: PokemonSprites
    
    /// The species this Pokémon belongs to
    public let species: NamedAPIResource
    
    /// A list of base stat values for this Pokémon
    public let stats: [PokemonStat]
    
    /// A list of details showing types this Pokémon has
    public let types: [PokemonType]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case baseExperience = "base_experience"
        case height = "height"
        case isDefault = "is_default"
        case order = "order"
        case weight = "weight"
        case abilities = "abilities"
        case forms = "forms"
        case gameIndices = "game_indices"
        case heldItems = "held_items"
        case locationAreaEncounters = "location_area_encounters"
        case moves = "moves"
        case sprites = "sprites"
        case species = "species"
        case stats = "stats"
        case types = "types"
    }
}

/// Nature Pokeathlon Stat Affect
public struct NaturePokeathlonStatAffect: Codable {
    
    /// The maximum amount of change to the referenced Pokéathlon stat
    public let maxChange: Int
    
    /// The nature causing the change
    public let nature: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case maxChange = "max_change"
        case nature = "nature"
    }
}

/// Nature Pokeathlon Stat Affect Sets
public struct NaturePokeathlonStatAffectSets: Codable {
    
    /// A list of natures and how they change the referenced Pokéathlon stat
    public let increase: [NaturePokeathlonStatAffect]
    
    /// A list of natures and how they change the referenced Pokéathlon stat
    public let decrease: [NaturePokeathlonStatAffect]

    enum CodingKeys: String, CodingKey {
        case increase = "increase"
        case decrease = "decrease"
    }
}

/// Pokeathlon Stats are different attributes of a Pokémon's performance in Pokéathlons. In Pokéathlons, competitions happen on different courses; one for each of the different Pokéathlon stats. See Bulbapedia for greater detail.
public struct PokeathlonStat: Codable {
    
    /// The identifier for this Pokéathlon stat resource
    public let id: Int
    
    /// The name for this Pokéathlon stat resource
    public let name: String
    
    /// The name of this Pokéathlon stat listed in different languages
    public let names: [Name]
    
    /// A detail of natures which affect this Pokéathlon stat positively or negatively
    public let affectingNatures: NaturePokeathlonStatAffectSets

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case names = "names"
        case affectingNatures = "affecting_natures"
    }
}

/// Move Battle Style Preference
public struct MoveBattleStylePreference: Codable {
    
    /// Chance of using the move, in percent, if HP is under one half
    public let lowHpPreference: Int
    
    /// Chance of using the move, in percent, if HP is over one half
    public let highHpPreference: Int
    
    /// The move battle style
    public let moveBattleStyle: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case lowHpPreference = "low_hp_preference"
        case highHpPreference = "high_hp_preference"
        case moveBattleStyle = "move_battle_style"
    }
}


/*
 change	The amount of change	integer
 stat	The stat being affected	NamedAPIResource (PokeathlonStat)
 */
public struct NatureStatChange: Codable {
    public let maxChange: Int
    public let pokeathlonStat: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case maxChange = "max_change"
        case pokeathlonStat = "pokeathlon_stat"
    }
}

/// Natures influence how a Pokémon's stats grow. See Bulbapedia ( http://bulbapedia.bulbagarden.net/wiki/Nature ) for greater detail.
public struct Nature: Codable {
    
    /// The identifier for this nature resource
    public let id: Int
    
    /// The name for this nature resource
    public let name: String
    
    /// The stat decreased by 10% in Pokémon with this nature
    public let decreasedStat: NamedAPIResource?
    
    /// The stat increased by 10% in Pokémon with this nature
    public let increasedStat: NamedAPIResource?
    
    /// The flavor hated by Pokémon with this nature
    public let hatesFlavor: NamedAPIResource?
    
    /// he flavor liked by Pokémon with this nature
    public let likesFlavor: NamedAPIResource?
    
    /// A list of Pokéathlon stats this nature effects and how much it effects them
    public let pokeathlonStatChanges: [NatureStatChange]
    
    /// A list of battle styles and how likely a Pokémon with this nature is to use them in the Battle Palace or Battle Tent.
    public let moveBattleStylePreferences: [MoveBattleStylePreference]
    
    /// The name of this nature listed in different languages
    public let names: [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case decreasedStat = "decreased_stat"
        case increasedStat = "increased_stat"
        case hatesFlavor = "hates_flavor"
        case likesFlavor = "likes_flavor"
        case pokeathlonStatChanges = "pokeathlon_stat_changes"
        case moveBattleStylePreferences = "move_battle_style_preferences"
        case names = "names"
    }
}


/*
 level	The level gained	integer
 experience	The amount of experience required to reach the referenced level	integer
 */

/// Growth Rate Experience Level
public struct GrowthRateExperienceLevel: Codable {
    
    /// The level gained
    public let level: Int
    
    /// The amount of experience required to reach the referenced level
    public let experience: Int

    enum CodingKeys: String, CodingKey {
        case level = "level"
        case experience = "experience"
    }
}

/// Growth rates are the speed with which Pokémon gain levels through experience. Check out Bulbapedia ( http://bulbapedia.bulbagarden.net/wiki/Experience ) for greater detail.
public struct GrowthRate: Codable {
    
    /// The identifier for this gender resource
    public let id: Int
    
    /// The name for this gender resource
    public let name: String
    
    /// The formula used to calculate the rate at which the Pokémon species gains level
    public let formula: String
    
    /// The descriptions of this characteristic listed in different languages
    public let descriptions: [Description]
    
    /// A list of levels and the amount of experienced needed to atain them based on this growth rate
    public let levels: [GrowthRateExperienceLevel]
    
    /// A list of Pokémon species that gain levels at this growth rate
    public let pokemonSpecies: [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case formula = "formula"
        case descriptions = "descriptions"
        case levels = "levels"
        case pokemonSpecies = "pokemon_species"
    }
}

/// Pokemon Species Gender
public struct PokemonSpeciesGender: Codable {
    
    /// The chance of this Pokémon being female, in eighths; or -1 for genderless
    public let rate: Int
    
    /// A Pokémon species that can be the referenced gender
    public let pokemonSpecies: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case rate = "rate"
        case pokemonSpecies = "pokemon_species"
    }
}

/// Genders were introduced in Generation II for the purposes of breeding Pokémon but can also result in visual differences or even different evolutionary lines. Check out Bulbapedia for greater detail.
public struct Gender: Codable {
    
    /// The identifier for this gender resource
    public let id: Int
    
    /// The name for this gender resource
    public let name: String
    
    /// A list of Pokémon species that can be this gender and how likely it is that they will be
    public let pokemonSpeciesDetails: [PokemonSpeciesGender]
    
    /// A list of Pokémon species that required this gender in order for a Pokémon to evolve into them
    public let requiredForEvolution: [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case pokemonSpeciesDetails = "pokemon_species_details"
        case requiredForEvolution = "required_for_evolution"
    }
}

/// Egg Groups are categories which determine which Pokémon are able to interbreed. Pokémon may belong to either one or two Egg Groups. Check out Bulbapedia for greater detail.
public struct EggGroup: Codable {
    
    /// The identifier for this egg group resource
    public let id: Int
    
    /// The name for this egg group resource
    public let name: String
    
    /// The name of this egg group listed in different languages
    public let names: [Name]
    
    /// A list of all Pokémon species that are members of this egg group
    public let pokemonSpecies: [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case names = "names"
        case pokemonSpecies = "pokemon_species"
    }
}

/// Characteristics indicate which stat contains a Pokémon's highest IV. A Pokémon's Characteristic is determined by the remainder of its highest IV divided by 5 (gene_modulo). Check out Bulbapedia for greater detail.
public struct Characteristic: Codable {
    
    /// The identifier for this characteristic resource
    public let id: Int
    
    /// The remainder of the highest stat/IV divided by 5
    public let geneModulo: Int
    
    /// The possible values of the highest stat that would result in a Pokémon recieving this characteristic when divided by 5
    public let possibleValues: [Int]
    
    /// The descriptions of this characteristic listed in different languages
    public let descriptions: [Description]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case geneModulo = "gene_modulo"
        case possibleValues = "possible_values"
        case descriptions = "descriptions"
    }
}

/// Ability Pokemon
public struct AbilityPokemon: Codable {
    
    /// Whether or not this a hidden ability for the referenced Pokémon
    public let isHidden: Bool
    
    /// Pokémon have 3 ability 'slots' which hold references to possible abilities they could have. This is the slot of this ability for the referenced pokemon.
    public let slot: Int
    
    /// The Pokémon this ability could belong to
    public let pokemon: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case isHidden = "is_hidden"
        case slot = "slot"
        case pokemon = "pokemon"
    }
}

/// Abilities provide passive effects for Pokémon in battle or in the overworld. Pokémon have mutiple possible abilities but can have only one ability at a time. Check out Bulbapedia for greater detail.
public struct Ability: Codable {
    
    /// The identifier for this ability resource
    public let id: Int
    
    /// The name for this ability resource
    public let name: String
    
    /// Whether or not this ability originated in the main series of the video games
    public let isMainSeries: Bool
    
    /// The generation this ability originated in
    public let generation: NamedAPIResource
    
    /// The name of this ability listed in different languages
    public let names: [Name]
    
    /// The effect of this ability listed in different languages
    public let effectEntries: [VerboseEffect]
    
    /// The list of previous effects this ability has had across version groups
    public let effectChanges: [AbilityEffectChange]
    
    /// The flavor text of this ability listed in different languages
    public let flavorTextEntries: [AbilityFlavorText]

    /// A list of Pokémon that could potentially have this ability
    public let pokemon: [AbilityPokemon]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case isMainSeries = "is_main_series"
        case generation = "generation"
        case names = "names"
        case effectEntries = "effect_entries"
        case effectChanges = "effect_changes"
        case flavorTextEntries = "flavor_text_entries"
        case pokemon = "pokemon"
    }
}

/// A region is an organized area of the Pokémon world. Most often, the main difference between regions is the species of Pokémon that can be encountered within them.
public struct Region: Codable {
    
    /// The identifier for this region resource
    public let id: Int
    
    /// The name for this region resource
    public let name: String
    
    /// A list of locations that can be found in this region
    public let locations: [NamedAPIResource]
    
    /// The generation this region was introduced in
    public let mainGeneration: NamedAPIResource
    
    /// The name of this region listed in different languages
    public let names: [Name]
    
    /// A list of pokédexes that catalogue Pokémon in this region
    public let pokedexes: [NamedAPIResource]
    
    /// A list of version groups where this region can be visited
    public let versionGroups: [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case locations = "locations"
        case mainGeneration = "main_generation"
        case names = "names"
        case pokedexes = "pokedexes"
        case versionGroups = "version_groups"
    }
}

/// Areas used for grouping Pokémon encounters in Pal Park. They're like habitats that are specific to Pal Park.
public struct PalParkEncounterSpecies: Codable {
    
    /// The base score given to the player when this Pokémon is caught during a pal park run
    public let baseScore: Int
    
    /// The base rate for encountering this Pokémon in this pal park area
    public let rate: Int
    
    /// The Pokémon species being encountered
    public let pokemonSpecies: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case baseScore = "base_score"
        case rate = "rate"
        case pokemonSpecies = "pokemon_species"
    }
}

/// Pal Park Area
public struct PalParkArea: Codable {
    
    /// The identifier for this pal park area resource
    public let id: Int
    
    /// The name for this pal park area resource
    public let name: String
    
    /// The name of this pal park area listed in different languages
    public let names: [Name]
    
    /// A list of Pokémon encountered in thi pal park area along with details
    public let pokemonEncounters: [PalParkEncounterSpecies]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case names = "names"
        case pokemonEncounters = "pokemon_encounters"
    }
}

/// Locations that can be visited within the games. Locations make up sizable portions of regions, like cities or routes.
public struct Location: Codable {
    
    /// The identifier for this location resource
    public let id: Int
    
    /// The name for this location resource
    public let name: String
    
    /// The region this location can be found in
    public let region: NamedAPIResource
    
    /// The name of this language listed in different languages
    public let names: [Name]
    
    /// A list of game indices relevent to this location by generation
    public let gameIndices: [GenerationGameIndex]
    
    /// Areas that can be found within this location
    public let areas: [APIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case region = "region"
        case names = "names"
        case gameIndices = "game_indices"
        case areas = "areas"
    }
}

/// Encounter
public struct Encounter: Codable {
    
    /// The lowest level the Pokémon could be encountered at
    public let minLevel: Int
    
    /// The highest level the Pokémon could be encountered at
    public let maxLevel: Int
    
    /// A list of condition values that must be in effect for this encounter to occur
    public let conditionValues: [NamedAPIResource]
    
    /// percent chance that this encounter will occur
    public let chance: Int
    
    /// The method by which this encounter happens
    public let method: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case minLevel = "min_level"
        case maxLevel = "max_level"
        case conditionValues = "condition_values"
        case chance = "chance"
        case method = "method"
    }
}

/// Version Encounter Detail
public struct VersionEncounterDetail: Codable {
    
    /// The game version this encounter happens in
    public let version: NamedAPIResource
    
    /// The total percentage of all encounter potential
    public let maxChance: Int
    
    /// A list of encounters and their specifics
    public let encounterDetails:  [Encounter]

    enum CodingKeys: String, CodingKey {
        case version = "version"
        case maxChance = "max_chance"
        case encounterDetails = "encounter_details"
    }
}

/// Pokemon Encounter
public struct PokemonEncounter: Codable {
    
    /// The Pokémon being encountered
    public let pokemon: NamedAPIResource
    
    /// A list of versions and encounters with Pokémon that might happen in the referenced location area
    public let versionDetails:  [VersionEncounterDetail]

    enum CodingKeys: String, CodingKey {
        case pokemon = "pokemon"
        case versionDetails = "version_details"
    }
}

/// Encounter Version Details
public struct EncounterVersionDetails: Codable {
    
    /// The chance of an encounter to occur.
    public let rate: Int
    
    /// The version of the game in which the encounter can occur with the given chance.
    public let version: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case rate = "rate"
        case version = "version"
    }
}

/// Encounter Method Rate
public struct EncounterMethodRate: Codable {
    
    /// The method in which Pokémon may be encountered in an area.
    public let encounterMethod: NamedAPIResource
    
    /// The chance of the encounter to occur on a version of the game.
    public let versionDetails:  [EncounterVersionDetails]

    enum CodingKeys: String, CodingKey {
        case encounterMethod = "encounter_method"
        case versionDetails = "version_details"
    }
}

/// Location areas are sections of areas, such as floors in a building or cave. Each area has its own set of possible Pokémon encounters.
public struct LocationArea: Codable {
    
    /// The identifier for this location resource
    public let id: Int
    
    /// The name for this location resource
    public let name: String
    
    /// The internal id of an API resource within game data
    public let gameIndex: Int
    
    /// A list of methods in which Pokémon may be encountered in this area and how likely the method will occur depending on the version of the game
    public let encounterMethodRates:  [EncounterMethodRate]
    
    /// The region this location can be found in
    public let location: NamedAPIResource
    
    /// The name of this location area listed in different languages
    public let names:  [Name]
    
    /// A list of Pokémon that can be encountered in this area along with version specific details about the encounter
    public let pokemonEncounters:  [PokemonEncounter]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case gameIndex = "game_index"
        case encounterMethodRates = "encounter_method_rates"
        case location = "location"
        case names = "names"
        case pokemonEncounters = "pokemon_encounters"
    }
}

/// Targets moves can be directed at during battle. Targets can be Pokémon, environments or even other moves.
public struct MoveTarget: Codable {
    
    /// The identifier for this move target resource
    public let id: Int
    
    /// The name for this move target resource
    public let name: String
    
    /// The description of this move target listed in different languages
    public let descriptions:  [Description]
    
    /// A list of moves that that are directed at this target
    public let moves:  [NamedAPIResource]
    
    /// The name of this move target listed in different languages
    public let names:  [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case descriptions = "descriptions"
        case moves = "moves"
        case names = "names"
    }
}

/// Methods by which Pokémon can learn moves.
public struct MoveLearnMethod: Codable {
    
    /// The identifier for this move learn method resource
    public let id: Int
    
    /// The name for this move learn method resource
    public let name: String
    
    /// The description of this move learn method listed in different languages
    public let descriptions:  [Description]
    
    /// The name of this move learn method listed in different languages
    public let names:  [Name]
    
    /// A list of version groups where moves can be learned through this method
    public let versionGroups:  [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case descriptions = "descriptions"
        case names = "names"
        case versionGroups = "version_groups"
    }
}

/// Damage classes moves can have, e.g. physical, special, or non-damaging.
public struct MoveDamageClass: Codable {
    
    /// The identifier for this move damage class resource
    public let id: Int
    
    /// The name for this move damage class resource
    public let name: String
    
    /// The description of this move damage class listed in different languages
    public let descriptions:  [Description]
    
    /// A list of moves that fall into this damage class
    public let moves:  [NamedAPIResource]
    
    /// The name of this move damage class listed in different languages
    public let names:  [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case descriptions = "descriptions"
        case moves = "moves"
        case names = "names"
    }
}

/// Very general categories that loosely group move effects.
public struct MoveCategory: Codable {
    
    /// The identifier for this move category resource
    public let id: Int
    
    /// The name for this move category resource
    public let name: String
    
    /// A list of moves that fall into this category
    public let moves:  [NamedAPIResource]
    
    /// The description of this move ailment listed in different languages
    public let descriptions:  [Description]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case moves = "moves"
        case descriptions = "descriptions"
    }
}

/// Styles of moves when used in the Battle Palace. See Bulbapedia for greater detail.
public struct MoveBattleStyle: Codable {
    
    /// The identifier for this move battle style resource
    public let id: Int
    
    /// The name for this move battle style resource
    public let name: String
    
    /// The name of this move battle style listed in different languages
    public let names:  [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case names = "names"
    }
}

/// Move Ailments are status conditions caused by moves used during battle. See Bulbapedia for greater detail.
public struct MoveAilment: Codable {
    
    /// The identifier for this move ailment resource
    public let id: Int
    
    /// The name for this move ailment resource
    public let name: String
    
    /// A list of moves that cause this ailment
    public let moves:  [NamedAPIResource]
    
    /// The name of this move ailment listed in different languages
    public let names:  [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case moves = "moves"
        case names = "names"
    }
}

/// Move Stat Change
public struct MoveStatChange: Codable {
    
    /// The amount of change
    public let change: Int
    
    /// The stat being affected
    public let stat: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case change = "change"
        case stat = "stat"
    }
}

/// Past Move Stat Values
public struct PastMoveStatValues: Codable {
    
    /// The percent value of how likely this move is to be successful
    public let accuracy: Int
    
    /// The percent value of how likely it is this moves effect will take effect
    public let effectChance: Int
    
    /// The base power of this move with a value of 0 if it does not have a base power
    public let power: Int
    
    /// Power points. The number of times this move can be used
    public let pp: Int
    
    /// The effect of this move listed in different languages
    public let effectEntries:  [VerboseEffect]
    
    /// The elemental type of this move
    public let type: NamedAPIResource
    
    /// The version group in which these move stat values were in effect
    public let versionGroup: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case accuracy = "accuracy"
        case effectChance = "effect_chance"
        case power = "power"
        case pp = "pp"
        case effectEntries = "effect_entries"
        case type = "type"
        case versionGroup = "version_group"
    }
}

/// Move Meta Data
public struct MoveMetaData: Codable {
    
    /// The status ailment this move inflicts on its target
    public let ailment: NamedAPIResource
    
    /// The category of move this move falls under, e.g. damage or ailment
    public let category: NamedAPIResource
    
    /// The minimum number of times this move hits. Null if it always only hits once.
    public let minHits: Int?
    
    /// The maximum number of times this move hits. Null if it always only hits once.
    public let maxHits: Int?
    
    /// The minimum number of turns this move continues to take effect. Null if it always only lasts one turn.
    public let minTurns: Int?
    
    /// The maximum number of turns this move continues to take effect. Null if it always only lasts one turn.
    public let maxTurns: Int?
    
    /// HP drain (if positive) or Recoil damage (if negative), in percent of damage done
    public let drain: Int
    
    /// The amount of hp gained by the attacking pokemon, in percent of it's maximum HP
    public let healing: Int
    
    /// Critical hit rate bonus
    public let critRate: Int
    
    /// The likelyhood this attack will cause an ailment
    public let ailmentChance: Int
    
    /// The likelyhood this attack will cause the target pokemon to flinch
    public let flinchEhance: Int
    
    /// The likelyhood this attack will cause a stat change in the target pokemon
    public let statChance: Int

    enum CodingKeys: String, CodingKey {
        case ailment = "ailment"
        case category = "category"
        case minHits = "min_hits"
        case maxHits = "max_hits"
        case minTurns = "min_turns"
        case maxTurns = "max_turns"
        case drain = "drain"
        case healing = "healing"
        case critRate = "crit_rate"
        case ailmentChance = "ailment_chance"
        case flinchEhance = "flinch_chance"
        case statChance = "stat_chance"
    }
}

/// Ability Effect Change
public struct AbilityEffectChange: Codable {
    
    /// The previous effect of this ability listed in different languages
    public let effectEntries:  [Effect]
    
    /// The version group in which the previous effect of this ability originated
    public let versionGroup: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case effectEntries = "effect_entries"
        case versionGroup = "version_group"
    }
}

/// Contest Combo Detail
public struct ContestComboDetail: Codable {
    
    /// A list of moves to use before this move
    public let useBefore:  [NamedAPIResource]?
    
    /// A list of moves to use after this move
    public let useAfter:  [NamedAPIResource]?

    enum CodingKeys: String, CodingKey {
        case useBefore = "use_before"
        case useAfter = "use_after"
    }
}

/// Contest Combo Sets
public struct ContestComboSets: Codable {
    
    /// A detail of moves this move can be used before or after, granting additional appeal points in contests
    public let normalMove: ContestComboDetail
    
    /// A detail of moves this move can be used before or after, granting additional appeal points in super contests
    public let superMove: ContestComboDetail

    enum CodingKeys: String, CodingKey {
        case normalMove = "normal"
        case superMove = "super"
    }
}

/// Moves are the skills of Pokémon in battle. In battle, a Pokémon uses one move each turn. Some moves (including those learned by Hidden Machine) can be used outside of battle as well, usually for the purpose of removing obstacles or exploring new areas.
public struct Move: Codable {
    
    /// The identifier for this move resource
    public let id: Int
    
    /// The name for this move resource
    public let name: String
    
    /// The percent value of how likely this move is to be successful
    public let accuracy: Int
    
    /// The percent value of how likely it is this moves effect will happen
    public let effectChance: Int?
    
    /// Power points. The number of times this move can be used
    public let pp: Int
    
    /// A value between -8 and 8. Sets the order in which moves are executed during battle. See Bulbapedia for greater detail.
    public let priority: Int
    
    /// The base power of this move with a value of 0 if it does not have a base power
    public let power: Int
    
    /// A detail of normal and super contest combos that require this move
    public let contestCombos: ContestComboSets
    
    /// The type of appeal this move gives a Pokémon when used in a contest
    public let contestType: NamedAPIResource
    
    /// The effect the move has when used in a contest
    public let contestEffect: APIResource
    
    /// The type of damage the move inflicts on the target, e.g. physical
    public let damageClass: NamedAPIResource
    
    /// The effect of this move listed in different languages
    public let effectEntries:  [VerboseEffect]
    
    /// The list of previous effects this move has had across version groups of the games
    public let effectChanges:  [AbilityEffectChange]
    
    /// The generation in which this move was introduced
    public let generation: NamedAPIResource
    
    /// Metadata about this move
    public let meta: MoveMetaData
    
    /// The name of this move listed in different languages
    public let names:  [Name]
    
    /// A list of move resource value changes across ersion groups of the game
    public let pastValues:  [PastMoveStatValues]
    
    /// A list of stats this moves effects and how much it effects them
    public let statChanges:  [MoveStatChange]
    
    /// The effect the move has when used in a super contest
    public let superContestEffect: APIResource
    
    /// The type of target that will recieve the effects of the attack
    public let target: NamedAPIResource
    
    /// The elemental type of this move	NamedAPIResource
    public let type: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case names = "names"
        case accuracy = "accuracy"
        case effectChance = "effect_chance"
        case pp = "pp"
        case priority = "priority"
        case power = "power"
        case contestCombos = "contest_combos"
        case contestType = "contest_type"
        case contestEffect = "contest_effect"
        case damageClass = "damage_class"
        case effectEntries = "effect_entries"
        case effectChanges = "effect_changes"
        case generation = "generation"
        case meta = "meta"
        case pastValues = "past_values"
        case statChanges = "stat_changes"
        case superContestEffect = "super_contest_effect"
        case target = "target"
        case type = "type"
    }
}

/// Pockets within the players bag used for storing items by category.
public struct ItemPocket: Codable {
    
    /// The identifier for this item pocket resource
    public let id: Int
    
    /// The name for this item pocket resource
    public let name: String
    
    /// A list of item categories that are relevent to this item pocket
    public let categories:  [NamedAPIResource]
    
    /// The name of this item pocket listed in different languages
    public let names:  [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case categories = "categories"
        case names = "names"
    }
}

/// Effect
public struct Effect: Codable {
    
    /// The localized effect text for an API resource in a specific language
    public let effect: String
    
    /// The language this effect is in
    public let language: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case effect = "effect"
        case language = "language"
    }
}

/// The various effects of the move "Fling" when used with different items.
public struct ItemFlingEffect: Codable {
    
    /// The identifier for this fling effect resource
    public let id: Int
    
    /// The name for this fling effect resource
    public let name: String
    
    /// The result of this fling effect listed in different languages
    public let effectEntries:  [Effect]
    
    /// A list of items that have this fling effect	list
    public let items:  [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case effectEntries = "effect_entries"
        case items = "items"
    }
}

/// Item categories determine where items will be placed in the players bag.
public struct ItemCategory: Codable {
    
    /// The identifier for this item category resource
    public let id: Int
    
    /// The name for this item category resource
    public let name: String
    
    /// A list of items that are a part of this category
    public let items:  [NamedAPIResource]
    
    /// The name of this item category listed in different languages
    public let names:  [Name]
    
    /// The pocket items in this category would be put in
    public let pocket: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case items = "items"
        case names = "names"
        case pocket = "pocket"
    }
}

/// Item attributes define particular aspects of items, e.g. "usable in battle" or "consumable".
public struct ItemAttribute: Codable {
    
    /// The identifier for this item attribute resource
    public let id: Int
    
    /// The name for this item attribute resource
    public let name: String
    
    /// A list of items that have this attribute
    public let items:  [NamedAPIResource]
    
    /// The name of this item attribute listed in different languages
    public let names:  [Name]
    
    /// The description of this item attribute listed in different languages
    public let descriptions:  [Description]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case items = "items"
        case names = "names"
        case descriptions = "descriptions"
    }
}

/// Verbose Effect
public struct VerboseEffect: Codable {
    
    /// The localized effect text for an API resource in a specific language
    public let effect: String
    
    /// The localized effect text in brief
    public let shortEffect: String
    
    /// The language this effect is in
    public let language: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case effect = "effect"
        case shortEffect = "short_effect"
        case language = "language"
    }
}

/// Version Group Flavor Text
public struct VersionGroupFlavorText: Codable {
    
    /// The localized name for an API resource in a specific language
    public let text: String
    
    /// The language this name is in
    public let language: NamedAPIResource
    
    /// The version group which uses this flavor text
    public let versionGroup: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case text = "text"
        case language = "language"
        case versionGroup = "version_group"
    }
}

/// Generation Game Index
public struct GenerationGameIndex: Codable {
    
    /// The internal id of an API resource within game data
    public let gameIndex: Int
    
    /// The generation relevent to this game index
    public let generation: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case gameIndex = "game_index"
        case generation = "generation"
    }
}

/// Item Sprites
public struct ItemSprites: Codable {
    /// The default depiction of this item
    public let defaultDepiction: String

    enum CodingKeys: String, CodingKey {
        case defaultDepiction = "default"
    }
}


/// API Referenced Resource
public struct APIResource: Codable {
    /// The URL of the referenced resource
    public let url: String

    enum CodingKeys: String, CodingKey {
        case url = "url"
    }
}

/// An item is an object in the games which the player can pick up, keep in their bag, and use in some manner. They have various uses, including healing, powering up, helping catch Pokémon, or to access a new area.
public struct Item: Codable {
    
    /// The identifier for this item resource
    public let id: Int
    
    /// The name for this item resource
    public let name: String
    
    /// The price of this item in stores
    public let cost: Int
    
    /// The power of the move Fling when used with this item.
    public let flingPower: Int?
    
    /// The effect of the move Fling when used with this item
    public let flingEffect: NamedAPIResource?
    
    /// A list of attributes this item has
    public let attributes:  [NamedAPIResource]
    
    /// The category of items this item falls into
    public let category: NamedAPIResource
    
    /// The effect of this ability listed in different languages
    public let effectEntries:  [VerboseEffect]
    
    /// The flavor text of this ability listed in different languages
    public let flavorTextEntries:  [VersionGroupFlavorText]
    
    /// A list of game indices relevent to this item by generation
    public let gameIndices:  [GenerationGameIndex]
    
    /// The name of this item listed in different languages
    public let names:  [Name]
    
    /// A set of sprites used to depict this item in the game
    public let sprites: ItemSprites
    
    /// A list of Pokémon that might be found in the wild holding this item
    public let heldByPokemon:  [NamedAPIResource]
    
    /// An evolution chain this item requires to produce a bay during mating
    public let babyTriggerFor:  [APIResource]?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case cost = "cost"
        case flingPower = "fling_power"
        case flingEffect = "fling_effect"
        case attributes = "attributes"
        case category = "category"
        case effectEntries = "effect_entries"
        case flavorTextEntries = "flavor_text_entries"
        case gameIndices = "game_indices"
        case names = "names"
        case sprites = "sprites"
        case heldByPokemon = "held_by_pokemon"
        case babyTriggerFor = "baby_trigger_for"
    }
}

/// Version groups categorize highly similar versions of the games.
public struct VersionGroup: Codable {
    
    /// The identifier for this version group resource
    public let id: Int
    
    /// The name for this version group resource
    public let name: String
    
    /// Order for sorting. Almost by date of release, except similar versions are grouped together.
    public let order: Int
    
    /// The generation this version was introduced in
    public let generation: NamedAPIResource
    
    /// A list of methods in which Pokémon can learn moves in this version group
    public let moveLearnMethods:  [NamedAPIResource]
    
    /// A list of Pokédexes introduces in this version group
    public let pokedexes:  [NamedAPIResource]
    
    /// A list of regions that can be visited in this version group	list
    public let regions:  [NamedAPIResource]
    
    /// The versions this version group owns
    public let versions:  [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case order = "order"
        case generation = "generation"
        case moveLearnMethods = "move_learn_methods"
        case pokedexes = "pokedexes"
        case regions = "regions"
        case versions = "versions"
    }
}

/// Versions of the games, e.g., Red, Blue or Yellow.
public struct Version: Codable {
    
    /// The identifier for this version resource
    public let id: Int
    
    /// The name for this version resource
    public let name: String
    
    /// The name of this version listed in different languages
    public let names:  [Name]
    
    /// The version group this version belongs to
    public let versionGroup: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case names = "names"
        case versionGroup = "version_group"
    }
}

/// Description
public struct Description: Codable {
    
    /// The localized description for an API resource in a specific language
    public let description: String
    
    /// The language this name is in
    public let language: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case description = "description"
        case language = "language"
    }
}

/// Entry
public struct Entry: Codable {
    
    /// The index of this pokemon species entry within the Pokédex
    public let entryNumber: Int
    
    /// The Pokémon species being encountered
    public let pokemonSpecies: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case entryNumber = "entry_number"
        case pokemonSpecies = "pokemon_species"
    }
}

/// A Pokédex is a handheld electronic encyclopedia device; one which is capable of recording and retaining information of the various Pokémon in a given region with the exception of the national dex and some smaller dexes related to portions of a region. See Bulbapedia for greater detail.
public struct Pokedex: Codable {
    
    /// The identifier for this Pokédex resource
    public let id: Int
    
    /// The name for this Pokédex resource
    public let name: String
    
    /// Whether or not this Pokédex originated in the main series of the video games
    public let isMainSeries: Bool
    
    /// The description of this Pokédex listed in different languages
    public let descriptions:  [Description]
    
    /// The name of this Pokédex listed in different languages
    public let names:  [Name]
    
    /// A list of pokemon catalogued in this Pokédex and their indexes
    public let pokemonEntries:  [Entry]
    
    /// The region this Pokédex catalogues pokemon for
    public let region: NamedAPIResource?
    
    /// A list of version groups this Pokédex is relevent to
    public let versionGroups:  [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case isMainSeries = "is_main_series"
        case descriptions = "descriptions"
        case names = "names"
        case pokemonEntries = "pokemon_entries"
        case region = "region"
        case versionGroups = "version_groups"
    }
}

/// A generation is a grouping of the Pokémon games that separates them based on the Pokémon they include. In each generation, a new set of Pokémon, Moves, Abilities and Types that did not exist in the previous generation are released.
public struct Generation: Codable {
    
    /// The identifier for this generation resource
    public let id: Int
    
    /// The name for this generation resource
    public let name: String
    
    /// The name of this generation listed in different languages
    public let names:  [Name]
    
    /// A list of abilities that were introduced in this generation
    public let abilities:  [NamedAPIResource]
    
    /// The main region travelled in this generation
    public let mainRegion: NamedAPIResource
    
    /// A list of moves that were introduced in this generation
    public let moves:  [NamedAPIResource]
    
    /// A list of Pokémon species that were introduced in this generation
    public let pokemonSpecies:  [NamedAPIResource]
    
    /// A list of types that were introduced in this generation
    public let types:  [NamedAPIResource]
    
    /// A list of version groups that were introduced in this generation
    public let versionGroups:  [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case names = "names"
        case abilities = "abilities"
        case mainRegion = "main_region"
        case moves = "moves"
        case pokemonSpecies = "pokemon_species"
        case types = "types"
        case versionGroups = "version_groups"
    }
}

/// Evolution triggers are the events and conditions that cause a pokemon to evolve. Check out Bulbapedia for greater detail.
public struct EvolutionTrigger: Codable {
    
    /// The identifier for this evolution trigger resource
    public let id: Int
    
    /// The name for this evolution trigger resource
    public let name: String
    
    /// The name of this evolution trigger listed in different languages
    public let names:  [Name]
    
    /// A list of pokemon species that result from this evolution trigger
    public let pokemonSpecies:  [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case names = "names"
        case pokemonSpecies = "pokemon_species"
    }
}

/// Evolution Detail
public struct EvolutionDetail: Codable {
    
    /// The item required to cause evolution this into Pokémon species
    public let item: NamedAPIResource?
    
    /// The type of event that triggers evolution into this Pokémon species
    public let trigger: NamedAPIResource
    
    /// The gender the evolving Pokémon species must be in order to evolve into this Pokémon species
    public let gender: NamedAPIResource?
    
    /// The item the evolving Pokémon species must be holding during the evolution
    public let heldItem: NamedAPIResource?
    
    /// The move that must be known by the evolving Pokémon species during the evolution trigger event in order to evolve into this Pokémon species
    public let knownMove: NamedAPIResource?
    
    /// The evolving Pokémon species must know a move with this type during the evolution trigger event in order to evolve into this Pokémon species
    public let knownMoveType: NamedAPIResource?
    
    /// The location the evolution must be triggered at.
    public let location: NamedAPIResource?
    
    /// The minimum required level of the evolving Pokémon species to evolve into this Pokémon species
    public let minLevel: Int
    
    /// The minimum required level of happiness the evolving Pokémon species to evolve into this Pokémon species
    public let minHappiness: Int?
    
    /// The minimum required level of beauty the evolving Pokémon species to evolve into this Pokémon species
    public let minBeauty: Int?
    
    /// The minimum required level of affection the evolving Pokémon species to evolve into this Pokémon species
    public let minAffection: Int?
    
    /// Whether or not it must be raining in the overworld to cause evolution this Pokémon species
    public let needsOverworldRain: Bool
    
    /// The pokemon species that must be in the players party in order for the evolving Pokémon species to evolve into this Pokémon species
    public let partySpecies: NamedAPIResource?
    
    /// The player must have a pokemon of this type in their party during the evolution trigger event in order for the evolving Pokémon species to evolve into this Pokémon species
    public let partyType: NamedAPIResource?
    
    /// The required relation between the Pokémon's Attack and Defense stats. 1 means Attack > Defense. 0 means Attack = Defense. -1 means Attack < Defense.
    public let relativePhysicalStats: Int?
    
    /// The required time of day. Day or night.
    public let timeOfDay: String
    
    /// Pokémon species for which this one must be traded.
    public let tradeSpecies: NamedAPIResource?
    
    /// Whether or not the 3DS needs to be turned upside-down as this Pokémon levels up.
    public let turnUpsideDown: Bool

    enum CodingKeys: String, CodingKey {
        case item = "item"
        case trigger = "trigger"
        case gender = "gender"
        case heldItem = "held_item"
        case knownMove = "known_move"
        case knownMoveType = "known_move_type"
        case location = "location"
        case minLevel = "min_level"
        case minHappiness = "min_happiness"
        case minBeauty = "min_beauty"
        case minAffection = "min_affection"
        case needsOverworldRain = "needs_overworld_rain"
        case partySpecies = "party_species"
        case partyType = "party_type"
        case relativePhysicalStats = "relative_physical_stats"
        case timeOfDay = "time_of_day"
        case tradeSpecies = "trade_species"
        case turnUpsideDown = "turn_upside_down"
    }
}

/// Clain Link
public struct ClainLink: Codable {
    
    /// Whether or not this link is for a baby Pokémon. This would only ever be true on the base link.
    public let isBaby: Bool
    
    /// The Pokémon species at this point in the evolution chain
    public let species: NamedAPIResource
    
    /// All details regarding the specific details of the referenced Pokémon species evolution
    public let evolutionDetails:  [EvolutionDetail]
    
    /// A List of chain objects.
    public let evolvesTo:  [ClainLink]

    enum CodingKeys: String, CodingKey {
        case isBaby = "is_baby"
        case species = "species"
        case evolutionDetails = "evolution_details"
        case evolvesTo = "evolves_to"
    }
}

/// Evolution Chain
public struct EvolutionChain: Codable {
    
    /// The identifier for this evolution chain resource
    public let id: Int
    
    /// The item that a Pokémon would be holding when mating that would trigger the egg hatching a baby Pokémon rather than a basic Pokémon
    public let babyTriggerItem: NamedAPIResource?
    
    /// The base chain link object. Each link contains evolution details for a Pokémon in the chain. Each link references the next Pokémon in the natural evolution order.
    public let chain: ClainLink

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case babyTriggerItem = "baby_trigger_item"
        case chain = "chain"
    }
}


/// Encounter Condition Value
public struct EncounterConditionValue: Codable {
    
    /// The identifier for this encounter condition value resource
    public let id: Int
    
    /// The name for this encounter condition value resource
    public let name: String
    
    /// The condition this encounter condition value pertains to
    public let condition: NamedAPIResource
    
    /// The name of this encounter condition value listed in different languages
    public let names:  [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case condition = "condition"
        case names = "names"
    }
}

/// Encounter Condition
public struct EncounterCondition: Codable {
    
    /// The identifier for this encounter condition resource
    public let id: Int
    
    /// The name for this encounter condition resource
    public let name: String
    
    /// A list of possible values for this encounter condition
    public let values:  [NamedAPIResource]
    
    /// The name of this encounter method listed in different languages
    public let names:  [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case values = "values"
        case names = "names"
    }
}

/// Methods by which the player might can encounter Pokémon in the wild, e.g., walking in tall grass. Check out Bulbapedia for greater detail.
public struct EncounterMethod: Codable {
    
    /// The identifier for this encounter method resource
    public let id: Int
    
    /// The name for this encounter method resource
    public let name: String
    
    /// A good value for sorting
    public let order: Int
    
    /// The name of this encounter method listed in different languages
    public let names:  [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case order = "order"
        case names = "names"
    }
}

/// Super contest effects refer to the effects of moves when used in super contests.
public struct SuperContestEffect: Codable {
    
    /// The identifier for this super contest effect resource
    public let id: Int
    
    /// The level of appeal this super contest effect has
    public let appeal: Int
    
    /// The flavor text of this super contest effect listed in different languages
    public let flavorTextEntries:  [FlavorText]
    
    /// A list of moves that have the effect when used in super contests
    public let moves:  [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case appeal = "appeal"
        case flavorTextEntries = "flavor_text_entries"
        case moves = "moves"
    }
}


/// Flavor Text
public struct FlavorText: Codable {
    
    /// The localized flavor text for an API resource in a specific language
    public let flavorText: String
    
    /// The language this name is in
    public let language: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case flavorText = "flavor_text"
        case language = "language"
    }
}


/// Effect Entry
public struct EffectEntry: Codable {
    
    /// The localized effect text for an API resource in a specific language
    public let effect: String
    
    /// The language this effect is in
    public let language: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case effect = "effect"
        case language = "language"
    }
}

/// Contest effects refer to the effects of moves when used in contests.
public struct ContestEffect: Codable {
    
    /// The identifier for this contest type resource
    public let id: Int
    
    /// The base number of hearts the user of this move gets
    public let appeal: Int
    
    /// The base number of hearts the user's opponent loses
    public let jam: Int
    
    /// The result of this contest effect listed in different languages
    public let effectEntries:  [EffectEntry]
    
    /// The flavor text of this contest effect listed in different languages
    public let flavorTextEntries:  [FlavorText]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case appeal = "appeal"
        case jam = "jam"
        case effectEntries = "effect_entries"
        case flavorTextEntries = "flavor_text_entries"
    }
}

/// Contest types are categories judges used to weigh a Pokémon's condition in Pokémon contests. Check out Bulbapedia for greater detail.
public struct ContestType: Codable {
    
    /// The identifier for this contest type resource
    public let id: Int
    
    /// The name for this contest type resource
    public let name: String
    
    /// The berry flavor that correlates with this contest type
    public let berryFlavor: NamedAPIResource
    
    /// The name of this contest type listed in different languages
    public let names:  [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case berryFlavor = "berry_flavor"
        case names = "names"
    }
}

/// Named API Resource List
public struct NamedAPIResourceList: Codable {
    
    /// The total number of resources abailable from this API
    public let count: Int
    
    /// The url for the next 'page' in the list
    public let next: String?
    
    /// The url for the previous page in the list
    public let previous: String?
    
    /// List of named API resources
    public let results:  [NamedAPIResource]

    enum CodingKeys: String, CodingKey {
        case count = "count"
        case next = "next"
        case previous = "previous"
        case results = "results"
    }
}

/// API Resource List
public struct APIResourceList: Codable {

    /// The total number of resources abailable from this API
    public let count: Int

    /// The url for the next 'page' in the list
    public let next: String?

    /// The url for the previous page in the list
    public let previous: String?

    /// List of unnamed API resources
    public let results:  [APIResource]

    enum CodingKeys: String, CodingKey {
        case count = "count"
        case next = "next"
        case previous = "previous"
        case results = "results"
    }
}

/// Name
public struct Name: Codable {
    
    /// The localized name for an API resource in a specific language
    public let name: String
    
    /// The language this name is in
    public let language: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case language = "language"
    }
}


/// Named API Resource
public struct NamedAPIResource: Codable {
    
    /// The name of the referenced resource
    public let name: String
    
    /// The URL of the referenced resource
    public let url: String

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case url = "url"
    }
}

public struct BerryFlavourMap: Codable {
    
    /// How powerful the referenced flavor is for this berry
    public let potency: Int
    
    /// The berry with the referenced flavor
    public let flavor: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case potency = "potency"
        case flavor = "flavor"
    }
}

/// Flavors determine whether a Pokémon will benefit or suffer from eating a berry based on their nature. Check out Bulbapedia for greater detail.
public struct BerryFlavour: Codable {
    
    /// The identifier for this berry flavor resource
    public let id: Int
    
    /// The name for this berry flavor resource
    public let name: String
    
    /// A list of the berries with this flavor
    public let berries:  [FlavourBerryMap]
    
    /// The contest type that correlates with this berry flavor
    public let contestType: NamedAPIResource
    
    /// The name of this berry flavor listed in different languages
    public let names: [Name]

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case berries = "berries"
        case contestType = "contest_type"
        case names = "names"
    }
}

/// Flavour Berry Map
public struct FlavourBerryMap: Codable {
    
    /// How powerful the referenced flavor is for this berry
    public let potency: Int
    
    /// The berry with the referenced flavor
    public let berry: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case potency = "potency"
        case berry = "berry"
    }
}

/// Berries are small fruits that can provide HP and status condition restoration, stat enhancement, and even damage negation when eaten by Pokémon. Check out Bulbapedia for greater detail.
public struct Berry: Codable {
    
    /// The identifier for this berry resource
    public let id: Int
    
    /// The name for this berry resource
    public let name: String
    
    /// Time it takes the tree to grow one stage, in hours. Berry trees go through four of these growth stages before they can be picked.
    public let growthTime: Int
    
    /// The maximum number of these berries that can grow on one tree in Generation IV
    public let maxHarvest: Int
    
    /// The power of the move "Natural Gift" when used with this Berry
    public let naturalGiftPower: Int
    
    /// The size of this Berry, in millimeters
    public let size: Int
    
    /// The smoothness of this Berry, used in making Pokéblocks or Poffins
    public let smoothness: Int
    
    /// The speed at which this Berry dries out the soil as it grows. A higher rate means the soil dries more quickly.
    public let soilDryness: Int
    
    /// The firmness of this berry, used in making Pokéblocks or Poffins
    public let firmness: NamedAPIResource
    
    /// A list of references to each flavor a berry can have and the potency of each of those flavors in regard to this berry
    public let flavors:  [BerryFlavourMap]
    
    /// Berries are actually items. This is a reference to the item specific data for this berry.
    public let item: NamedAPIResource
    
    /// The Type the move "Natural Gift" has when used with this Berry
    public let naturalGiftType: NamedAPIResource

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case growthTime = "growth_time"
        case maxHarvest = "max_harvest"
        case naturalGiftPower = "natural_gift_power"
        case size = "size"
        case smoothness = "smoothness"
        case soilDryness = "soil_dryness"
        case firmness = "firmness"
        case flavors = "flavors"
        case item = "item"
        case naturalGiftType = "natural_gift_type"
    }
}

/// Berry Firmness
public struct BerryFirmness: Codable {
    
    /// The identifier for this berry firmness resource
    public let id: Int
    
    /// The name of this berry firmness listed in different languages
    public let berries:  [NamedAPIResource]
    
    /// A list of the berries with this firmness
    public let names:  [Name]
    
    /// The name for this berry firmness resource
    public let name: String

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case berries = "berries"
        case names = "names"
        case name = "name"
    }
}
