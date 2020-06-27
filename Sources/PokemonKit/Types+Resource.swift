// PokemonKit 2020

extension Ability: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/ability/" }
}

extension Berry: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/berry/" }
}

extension BerryFirmness: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/berry-firmness/" }
}

extension BerryFlavour: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/berry-flavor/" }
}

extension Characteristic: Resource {
    public typealias List = APIResourceList
    public static var path: String { "/characteristic/" }
}

extension ContestEffect: Resource {
    public typealias List = APIResourceList
    public static var path: String { "/contest-effect/" }
}

extension ContestType: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/contest-type/" }
}

extension EggGroup: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/egg-group/" }
}

extension EncounterCondition: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/encounter-condition/" }
}

extension EncounterConditionValue: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/encounter-condition-value/" }
}

extension EncounterMethod: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/encounter-method/" }
}

extension EvolutionChain: Resource {
    public typealias List = APIResourceList
    public static var path: String { "/evolution-chain/" }
}

extension EvolutionTrigger: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/evolution-trigger/" }
}

extension Gender: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/gender/" }
}

extension Generation: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/generation/" }
}

extension GrowthRate: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/growth-rate/" }
}

extension Item: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/item/" }
}

extension ItemAttribute: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/item-attribute/" }
}

extension ItemCategory: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/item-category/" }
}

extension ItemFlingEffect: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/item-fling-effect/" }
}

extension ItemPocket: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/item-pocket/" }
}

extension Language: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/language/" }
}

extension Location: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/location/" }
}

extension LocationArea: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/location-area/" }
}

extension Move: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/move/" }
}

extension MoveAilment: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/move-ailment/" }
}

extension MoveBattleStyle: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/move-battle-style/" }
}

extension MoveCategory: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/move-category/" }
}

extension MoveDamageClass: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/move-damage-class/" }
}

extension MoveLearnMethod: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/move-learn-method/" }
}

extension MoveTarget: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/move-target/" }
}

extension Nature: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/nature/" }
}

extension PalParkArea: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/pal-park-area/" }
}

extension PokeathlonStat: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/pokeathlon-stat/" }
}

extension Pokedex: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/pokedex/" }
}

extension Pokemon: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/pokemon/" }
}

extension PokemonColor: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/pokemon-color/" }
}

extension PokemonForm: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/pokemon-form/" }
}

extension PokemonHabitat: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/pokemon-habitat/" }
}

extension PokemonShape: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/pokemon-shape/" }
}

extension PokemonSpecies: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/pokemon-species/" }
}

extension Region: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/region/" }
}

extension Stat: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/stat/" }
}

extension SuperContestEffect: Resource {
    public typealias List = APIResourceList
    public static var path: String { "/super-contest-effect/" }
}

extension Type: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/type/" }
}

extension Version: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/version/" }
}

extension VersionGroup: Resource {
    public typealias List = NamedAPIResourceList
    public static var path: String { "/version-group/" }
}
