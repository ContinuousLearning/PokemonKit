// PokemonKit 2019

import Foundation

public enum PokeAPI {

    case berryList
    case berry(id: String)

    case berryFirmnessList
    case berryFirmness(id: String)

    case berryFlavorList
    case berryFlavor(id: String)

    case contestTypeList
    case contestType(id: String)

    case contestEffectList
    case contestEffect(id: String)

    case superContestEffectList
    case superContestEffect(id: String)

    case encounterMethodList
    case encounterMethod(id: String)

    case encounterConditionList
    case encounterCondition(id: String)

    case encounterConditionValueList
    case encounterConditionValue(id: String)

    case evolutionChainList
    case evolutionChain(id: String)

    case evolutionTriggerList
    case evolutionTrigger(id: String)

    case generationList
    case generation(id: String)

    case pokedexList
    case pokedex(id: String)

    case versionList
    case version(id: String)

    case versionGroupList
    case versionGroup(id: String)

    case itemList
    case item(id: String)

    case itemAttributeList
    case itemAttribute(id: String)

    case itemCategoryList
    case itemCategory(id: String)

    case itemFlingEffectList
    case itemFlingEffect(id: String)

    case itemPocketList
    case itemPocket(id: String)

    case moveList
    case move(id: String)

    case moveAilmentList
    case moveAilment(id: String)

    case moveBattleStyleList
    case moveBattleStyle(id: String)

    case moveCategoryList
    case moveCategory(id: String)

    case moveDamageClassList
    case moveDamageClass(id: String)

    case moveLearnMethodList
    case moveLearnMethod(id: String)

    case moveTargetList
    case moveTarget(id: String)

    case locationList
    case location(id: String)

    case locationAreaList
    case locationArea(id: String)

    case palParkAreaList
    case palParkArea(id: String)

    case regionList
    case region(id: String)

    case abilityList
    case ability(id: String)

    case characteristicList
    case characteristic(id: String)

    case eggGroupList
    case eggGroup(id: String)

    case genderList
    case gender(id: String)

    case growthRateList
    case growthRate(id: String)

    case natureList
    case nature(id: String)

    case pokeathlonStatList
    case pokeathlonStat(id: String)

    case pokemonList
    case pokemon(id: String)

    case pokemonColorList
    case pokemonColor(id: String)

    case pokemonFormList
    case pokemonForm(id: String)

    case pokemonHabitatList
    case pokemonHabitat(id: String)

    case pokemonShapeList
    case pokemonShape(id: String)

    case pokemonSpeciesList
    case pokemonSpecies(id: String)

    case statList
    case stat(id: String)

    case typeList
    case type(id: String)

    case languageList
    case language(id: String)

}

internal var _baseURL: String = "https://pokeapi.co/api/v2"

extension PokeAPI {
    public var baseURL: String {
        return _baseURL
    }

    public var url: URL {
        return URL(string: baseURL + path + "/")!
    }

    public var path: String {
        switch self {

        case .berryList: return "/berry"
        case .berry(let id): return "/berry/" + id

        case .berryFirmnessList: return "/berry-firmness"
        case .berryFirmness(let id): return "/berry-firmness/" + id

        case .berryFlavorList: return "/berry-flavor"
        case .berryFlavor(let id): return "/berry-flavor/" + id

        case .contestTypeList: return "/contest-type"
        case .contestType(let id): return "/contest-type/" + id

        case .contestEffectList: return "/contest-effect"
        case .contestEffect(let id): return "/contest-effect/" + id

        case .superContestEffectList: return "/super-contest-effect"
        case .superContestEffect(let id): return "/super-contest-effect/" + id

        case .encounterMethodList: return "/encounter-method"
        case .encounterMethod(let id): return "/encounter-method/" + id

        case .encounterConditionList: return "/encounter-condition"
        case .encounterCondition(let id): return "/encounter-condition/" + id

        case .encounterConditionValueList: return "/encounter-condition-value"
        case .encounterConditionValue(let id): return "/encounter-condition-value/" + id

        case .evolutionChainList: return "/evolution-chain"
        case .evolutionChain(let id): return "/evolution-chain/" + id

        case .evolutionTriggerList: return "/evolution-trigger"
        case .evolutionTrigger(let id): return "/evolution-trigger/" + id

        case .generationList: return "/generation"
        case .generation(let id): return "/generation/" + id

        case .pokedexList: return "/pokedex"
        case .pokedex(let id): return "/pokedex/" + id

        case .versionList: return "/version"
        case .version(let id): return "/version/" + id

        case .versionGroupList: return "/version-group"
        case .versionGroup(let id): return "/version-group/" + id

        case .itemList: return "/item"
        case .item(let id): return "/item/" + id

        case .itemAttributeList: return "/item-attribute"
        case .itemAttribute(let id): return "/item-attribute/" + id

        case .itemCategoryList: return "/item-category"
        case .itemCategory(let id): return "/item-category/" + id

        case .itemFlingEffectList: return "/item-fling-effect"
        case .itemFlingEffect(let id): return "/item-fling-effect/" + id

        case .itemPocketList: return "/item-pocket"
        case .itemPocket(let id): return "/item-pocket/" + id

        case .moveList: return "/move"
        case .move(let id): return "/move/" + id

        case .moveAilmentList: return "/move-ailment"
        case .moveAilment(let id): return "/move-ailment/" + id

        case .moveBattleStyleList: return "/move-battle-style"
        case .moveBattleStyle(let id): return "/move-battle-style/" + id

        case .moveCategoryList: return "/move-category"
        case .moveCategory(let id): return "/move-category/" + id

        case .moveDamageClassList: return "/move-damage-class"
        case .moveDamageClass(let id): return "/move-damage-class/" + id

        case .moveLearnMethodList: return "/move-learn-method"
        case .moveLearnMethod(let id): return "/move-learn-method/" + id

        case .moveTargetList: return "/move-target"
        case .moveTarget(let id): return "/move-target/" + id

        case .locationList: return "/location"
        case .location(let id): return "/location/" + id

        case .locationAreaList: return "/location-area"
        case .locationArea(let id): return "/location-area/" + id

        case .palParkAreaList: return "/pal-park-area"
        case .palParkArea(let id): return "/pal-park-area/" + id

        case .regionList: return "/region"
        case .region(let id): return "/region/" + id

        case .abilityList: return "/ability"
        case .ability(let id): return "/ability/" + id

        case .characteristicList: return "/characteristic"
        case .characteristic(let id): return "/characteristic/" + id

        case .eggGroupList: return "/egg-group"
        case .eggGroup(let id): return "/egg-group/" + id

        case .genderList: return "/gender"
        case .gender(let id): return "/gender/" + id

        case .growthRateList: return "/growth-rate"
        case .growthRate(let id): return "/growth-rate/" + id

        case .natureList: return "/nature"
        case .nature(let id): return "/nature/" + id

        case .pokeathlonStatList: return "/pokeathlon-stat"
        case .pokeathlonStat(let id): return "/pokeathlon-stat/" + id

        case .pokemonList: return "/pokemon"
        case .pokemon(let id): return "/pokemon/" + id

        case .pokemonColorList: return "/pokemon-color"
        case .pokemonColor(let id): return "/pokemon-color/" + id

        case .pokemonFormList: return "/pokemon-form"
        case .pokemonForm(let id): return "/pokemon-form/" + id

        case .pokemonHabitatList: return "/pokemon-habitat"
        case .pokemonHabitat(let id): return "/pokemon-habitat/" + id

        case .pokemonShapeList: return "/pokemon-shape"
        case .pokemonShape(let id): return "/pokemon-shape/" + id

        case .pokemonSpeciesList: return "/pokemon-species"
        case .pokemonSpecies(let id): return "/pokemon-species/" + id

        case .statList: return "/stat"
        case .stat(let id): return "/stat/" + id

        case .typeList: return "/type"
        case .type(let id): return "/type/" + id

        case .languageList: return "/language"
        case .language(let id): return "/language/" + id

        }
    }
}
