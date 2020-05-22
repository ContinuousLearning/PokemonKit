// PokemonKit 2020

extension PKMAbility: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/ability/" }
}

extension PKMBerry: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/berry/" }
}

extension PKMBerryFirmness: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/berry-firmness/" }
}

extension PKMBerryFlavour: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/berry-flavor/" }
}

extension PKMCharacteristic: Resource {
    public typealias List = PKMAPIResourceList
    public static var path: String { "/characteristic/" }
}

extension PKMContestEffect: Resource {
    public typealias List = PKMAPIResourceList
    public static var path: String { "/contest-effect/" }
}

extension PKMContestType: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/contest-type/" }
}

extension PKMEggGroup: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/egg-group/" }
}

extension PKMEncounterCondition: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/encounter-condition/" }
}

extension PKMEncounterConditionValue: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/encounter-condition-value/" }
}

extension PKMEncounterMethod: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/encounter-method/" }
}

extension PKMEvolutionChain: Resource {
    public typealias List = PKMAPIResourceList
    public static var path: String { "/evolution-chain/" }
}

extension PKMEvolutionTrigger: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/evolution-trigger/" }
}

extension PKMGender: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/gender/" }
}

extension PKMGeneration: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/generation/" }
}

extension PKMGrowthRate: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/growth-rate/" }
}

extension PKMItem: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/item/" }
}

extension PKMItemAttribute: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/item-attribute/" }
}

extension PKMItemCategory: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/item-category/" }
}

extension PKMItemFlingEffect: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/item-fling-effect/" }
}

extension PKMItemPocket: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/item-pocket/" }
}

extension PKMLanguage: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/language/" }
}

extension PKMLocation: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/location/" }
}

extension PKMLocationArea: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/location-area/" }
}

extension PKMMove: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/move/" }
}

extension PKMMoveAilment: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/move-ailment/" }
}

extension PKMMoveBattleStyle: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/move-battle-style/" }
}

extension PKMMoveCategory: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/move-category/" }
}

extension PKMMoveDamageClass: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/move-damage-class/" }
}

extension PKMMoveLearnMethod: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/move-learn-method/" }
}

extension PKMMoveTarget: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/move-target/" }
}

extension PKMNature: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/nature/" }
}

extension PKMPalParkArea: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/pal-park-area/" }
}

extension PKMPokeathlonStat: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/pokeathlon-stat/" }
}

extension PKMPokedex: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/pokedex/" }
}

extension PKMPokemon: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/pokemon/" }
}

extension PKMPokemonColor: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/pokemon-color/" }
}

extension PKMPokemonForm: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/pokemon-form/" }
}

extension PKMPokemonHabitat: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/pokemon-habitat/" }
}

extension PKMPokemonShape: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/pokemon-shape/" }
}

extension PKMPokemonSpecies: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/pokemon-species/" }
}

extension PKMRegion: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/region/" }
}

extension PKMStat: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/stat/" }
}

extension PKMSuperContestEffect: Resource {
    public typealias List = PKMAPIResourceList
    public static var path: String { "/super-contest-effect/" }
}

extension PKMType: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/type/" }
}

extension PKMVersion: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/version/" }
}

extension PKMVersionGroup: Resource {
    public typealias List = PKMNamedAPIResourceList
    public static var path: String { "/version-group/" }
}
