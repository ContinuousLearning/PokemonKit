
/// Fetch Ability
///
/// - parameter id: identifies the ability
/// - parameter completion: Result<PKMAbility, Error>
///
/// Error is either a DecodingError or URLError
public func fetchAbility(id: String, _ completion: @escaping (Result<PKMAbility, Error>) -> Void) {
    fetch(api: .ability(id: id), completion: completion)
}

/// Fetch AbilityList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchAbilityList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .abilityList, completion: completion)
}

/// Fetch Berry
///
/// - parameter id: identifies the berry
/// - parameter completion: Result<PKMBerry, Error>
///
/// Error is either a DecodingError or URLError
public func fetchBerry(id: String, _ completion: @escaping (Result<PKMBerry, Error>) -> Void) {
    fetch(api: .berry(id: id), completion: completion)
}

/// Fetch BerryFirmness
///
/// - parameter id: identifies the berryFirmness
/// - parameter completion: Result<PKMBerryFirmness, Error>
///
/// Error is either a DecodingError or URLError
public func fetchBerryFirmness(id: String, _ completion: @escaping (Result<PKMBerryFirmness, Error>) -> Void) {
    fetch(api: .berryFirmness(id: id), completion: completion)
}

/// Fetch BerryFirmnessList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchBerryFirmnessList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .berryFirmnessList, completion: completion)
}

/// Fetch BerryFlavor
///
/// - parameter id: identifies the berryFlavor
/// - parameter completion: Result<PKMBerryFlavour, Error>
///
/// Error is either a DecodingError or URLError
public func fetchBerryFlavor(id: String, _ completion: @escaping (Result<PKMBerryFlavour, Error>) -> Void) {
    fetch(api: .berryFlavor(id: id), completion: completion)
}

/// Fetch BerryFlavorList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchBerryFlavorList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .berryFlavorList, completion: completion)
}

/// Fetch BerryList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchBerryList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .berryList, completion: completion)
}

/// Fetch Characteristic
///
/// - parameter id: identifies the characteristic
/// - parameter completion: Result<PKMCharacteristic, Error>
///
/// Error is either a DecodingError or URLError
public func fetchCharacteristic(id: String, _ completion: @escaping (Result<PKMCharacteristic, Error>) -> Void) {
    fetch(api: .characteristic(id: id), completion: completion)
}

/// Fetch CharacteristicList
///
/// - parameter completion: Result<PKMAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchCharacteristicList(_ completion: @escaping (Result<PKMAPIResourceList, Error>) -> Void) {
    fetch(api: .characteristicList, completion: completion)
}

/// Fetch ContestEffect
///
/// - parameter id: identifies the contestEffect
/// - parameter completion: Result<PKMContestEffect, Error>
///
/// Error is either a DecodingError or URLError
public func fetchContestEffect(id: String, _ completion: @escaping (Result<PKMContestEffect, Error>) -> Void) {
    fetch(api: .contestEffect(id: id), completion: completion)
}

/// Fetch ContestEffectList
///
/// - parameter completion: Result<PKMAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchContestEffectList(_ completion: @escaping (Result<PKMAPIResourceList, Error>) -> Void) {
    fetch(api: .contestEffectList, completion: completion)
}

/// Fetch ContestType
///
/// - parameter id: identifies the contestType
/// - parameter completion: Result<PKMContestType, Error>
///
/// Error is either a DecodingError or URLError
public func fetchContestType(id: String, _ completion: @escaping (Result<PKMContestType, Error>) -> Void) {
    fetch(api: .contestType(id: id), completion: completion)
}

/// Fetch ContestTypeList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchContestTypeList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .contestTypeList, completion: completion)
}

/// Fetch EggGroup
///
/// - parameter id: identifies the eggGroup
/// - parameter completion: Result<PKMEggGroup, Error>
///
/// Error is either a DecodingError or URLError
public func fetchEggGroup(id: String, _ completion: @escaping (Result<PKMEggGroup, Error>) -> Void) {
    fetch(api: .eggGroup(id: id), completion: completion)
}

/// Fetch EggGroupList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchEggGroupList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .eggGroupList, completion: completion)
}

/// Fetch EncounterCondition
///
/// - parameter id: identifies the encounterCondition
/// - parameter completion: Result<PKMEncounterCondition, Error>
///
/// Error is either a DecodingError or URLError
public func fetchEncounterCondition(id: String, _ completion: @escaping (Result<PKMEncounterCondition, Error>) -> Void) {
    fetch(api: .encounterCondition(id: id), completion: completion)
}

/// Fetch EncounterConditionList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchEncounterConditionList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .encounterConditionList, completion: completion)
}

/// Fetch EncounterConditionValue
///
/// - parameter id: identifies the encounterConditionValue
/// - parameter completion: Result<PKMEncounterConditionValue, Error>
///
/// Error is either a DecodingError or URLError
public func fetchEncounterConditionValue(id: String, _ completion: @escaping (Result<PKMEncounterConditionValue, Error>) -> Void) {
    fetch(api: .encounterConditionValue(id: id), completion: completion)
}

/// Fetch EncounterConditionValueList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchEncounterConditionValueList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .encounterConditionValueList, completion: completion)
}

/// Fetch EncounterMethod
///
/// - parameter id: identifies the encounterMethod
/// - parameter completion: Result<PKMEncounterMethod, Error>
///
/// Error is either a DecodingError or URLError
public func fetchEncounterMethod(id: String, _ completion: @escaping (Result<PKMEncounterMethod, Error>) -> Void) {
    fetch(api: .encounterMethod(id: id), completion: completion)
}

/// Fetch EncounterMethodList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchEncounterMethodList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .encounterMethodList, completion: completion)
}

/// Fetch EvolutionChain
///
/// - parameter id: identifies the evolutionChain
/// - parameter completion: Result<PKMEvolutionChain, Error>
///
/// Error is either a DecodingError or URLError
public func fetchEvolutionChain(id: String, _ completion: @escaping (Result<PKMEvolutionChain, Error>) -> Void) {
    fetch(api: .evolutionChain(id: id), completion: completion)
}

/// Fetch EvolutionChainList
///
/// - parameter completion: Result<PKMAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchEvolutionChainList(_ completion: @escaping (Result<PKMAPIResourceList, Error>) -> Void) {
    fetch(api: .evolutionChainList, completion: completion)
}

/// Fetch EvolutionTrigger
///
/// - parameter id: identifies the evolutionTrigger
/// - parameter completion: Result<PKMEvolutionTrigger, Error>
///
/// Error is either a DecodingError or URLError
public func fetchEvolutionTrigger(id: String, _ completion: @escaping (Result<PKMEvolutionTrigger, Error>) -> Void) {
    fetch(api: .evolutionTrigger(id: id), completion: completion)
}

/// Fetch EvolutionTriggerList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchEvolutionTriggerList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .evolutionTriggerList, completion: completion)
}

/// Fetch Gender
///
/// - parameter id: identifies the gender
/// - parameter completion: Result<PKMGender, Error>
///
/// Error is either a DecodingError or URLError
public func fetchGender(id: String, _ completion: @escaping (Result<PKMGender, Error>) -> Void) {
    fetch(api: .gender(id: id), completion: completion)
}

/// Fetch GenderList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchGenderList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .genderList, completion: completion)
}

/// Fetch Generation
///
/// - parameter id: identifies the generation
/// - parameter completion: Result<PKMGeneration, Error>
///
/// Error is either a DecodingError or URLError
public func fetchGeneration(id: String, _ completion: @escaping (Result<PKMGeneration, Error>) -> Void) {
    fetch(api: .generation(id: id), completion: completion)
}

/// Fetch GenerationList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchGenerationList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .generationList, completion: completion)
}

/// Fetch GrowthRate
///
/// - parameter id: identifies the growthRate
/// - parameter completion: Result<PKMGrowthRate, Error>
///
/// Error is either a DecodingError or URLError
public func fetchGrowthRate(id: String, _ completion: @escaping (Result<PKMGrowthRate, Error>) -> Void) {
    fetch(api: .growthRate(id: id), completion: completion)
}

/// Fetch GrowthRateList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchGrowthRateList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .growthRateList, completion: completion)
}

/// Fetch Item
///
/// - parameter id: identifies the item
/// - parameter completion: Result<PKMItem, Error>
///
/// Error is either a DecodingError or URLError
public func fetchItem(id: String, _ completion: @escaping (Result<PKMItem, Error>) -> Void) {
    fetch(api: .item(id: id), completion: completion)
}

/// Fetch ItemAttribute
///
/// - parameter id: identifies the itemAttribute
/// - parameter completion: Result<PKMItemAttribute, Error>
///
/// Error is either a DecodingError or URLError
public func fetchItemAttribute(id: String, _ completion: @escaping (Result<PKMItemAttribute, Error>) -> Void) {
    fetch(api: .itemAttribute(id: id), completion: completion)
}

/// Fetch ItemAttributeList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchItemAttributeList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .itemAttributeList, completion: completion)
}

/// Fetch ItemCategory
///
/// - parameter id: identifies the itemCategory
/// - parameter completion: Result<PKMItemCategory, Error>
///
/// Error is either a DecodingError or URLError
public func fetchItemCategory(id: String, _ completion: @escaping (Result<PKMItemCategory, Error>) -> Void) {
    fetch(api: .itemCategory(id: id), completion: completion)
}

/// Fetch ItemCategoryList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchItemCategoryList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .itemCategoryList, completion: completion)
}

/// Fetch ItemFlingEffect
///
/// - parameter id: identifies the itemFlingEffect
/// - parameter completion: Result<PKMItemFlingEffect, Error>
///
/// Error is either a DecodingError or URLError
public func fetchItemFlingEffect(id: String, _ completion: @escaping (Result<PKMItemFlingEffect, Error>) -> Void) {
    fetch(api: .itemFlingEffect(id: id), completion: completion)
}

/// Fetch ItemFlingEffectList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchItemFlingEffectList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .itemFlingEffectList, completion: completion)
}

/// Fetch ItemList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchItemList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .itemList, completion: completion)
}

/// Fetch ItemPocket
///
/// - parameter id: identifies the itemPocket
/// - parameter completion: Result<PKMItemPocket, Error>
///
/// Error is either a DecodingError or URLError
public func fetchItemPocket(id: String, _ completion: @escaping (Result<PKMItemPocket, Error>) -> Void) {
    fetch(api: .itemPocket(id: id), completion: completion)
}

/// Fetch ItemPocketList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchItemPocketList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .itemPocketList, completion: completion)
}

/// Fetch Language
///
/// - parameter id: identifies the language
/// - parameter completion: Result<PKMLanguage, Error>
///
/// Error is either a DecodingError or URLError
public func fetchLanguage(id: String, _ completion: @escaping (Result<PKMLanguage, Error>) -> Void) {
    fetch(api: .language(id: id), completion: completion)
}

/// Fetch LanguageList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchLanguageList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .languageList, completion: completion)
}

/// Fetch Location
///
/// - parameter id: identifies the location
/// - parameter completion: Result<PKMLocation, Error>
///
/// Error is either a DecodingError or URLError
public func fetchLocation(id: String, _ completion: @escaping (Result<PKMLocation, Error>) -> Void) {
    fetch(api: .location(id: id), completion: completion)
}

/// Fetch LocationArea
///
/// - parameter id: identifies the locationArea
/// - parameter completion: Result<PKMLocationArea, Error>
///
/// Error is either a DecodingError or URLError
public func fetchLocationArea(id: String, _ completion: @escaping (Result<PKMLocationArea, Error>) -> Void) {
    fetch(api: .locationArea(id: id), completion: completion)
}

/// Fetch LocationAreaList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchLocationAreaList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .locationAreaList, completion: completion)
}

/// Fetch LocationList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchLocationList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .locationList, completion: completion)
}

/// Fetch Move
///
/// - parameter id: identifies the move
/// - parameter completion: Result<PKMMove, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMove(id: String, _ completion: @escaping (Result<PKMMove, Error>) -> Void) {
    fetch(api: .move(id: id), completion: completion)
}

/// Fetch MoveAilment
///
/// - parameter id: identifies the moveAilment
/// - parameter completion: Result<PKMMoveAilment, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveAilment(id: String, _ completion: @escaping (Result<PKMMoveAilment, Error>) -> Void) {
    fetch(api: .moveAilment(id: id), completion: completion)
}

/// Fetch MoveAilmentList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveAilmentList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .moveAilmentList, completion: completion)
}

/// Fetch MoveBattleStyle
///
/// - parameter id: identifies the moveBattleStyle
/// - parameter completion: Result<PKMMoveBattleStyle, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveBattleStyle(id: String, _ completion: @escaping (Result<PKMMoveBattleStyle, Error>) -> Void) {
    fetch(api: .moveBattleStyle(id: id), completion: completion)
}

/// Fetch MoveBattleStyleList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveBattleStyleList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .moveBattleStyleList, completion: completion)
}

/// Fetch MoveCategory
///
/// - parameter id: identifies the moveCategory
/// - parameter completion: Result<PKMMoveCategory, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveCategory(id: String, _ completion: @escaping (Result<PKMMoveCategory, Error>) -> Void) {
    fetch(api: .moveCategory(id: id), completion: completion)
}

/// Fetch MoveCategoryList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveCategoryList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .moveCategoryList, completion: completion)
}

/// Fetch MoveDamageClass
///
/// - parameter id: identifies the moveDamageClass
/// - parameter completion: Result<PKMMoveDamageClass, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveDamageClass(id: String, _ completion: @escaping (Result<PKMMoveDamageClass, Error>) -> Void) {
    fetch(api: .moveDamageClass(id: id), completion: completion)
}

/// Fetch MoveDamageClassList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveDamageClassList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .moveDamageClassList, completion: completion)
}

/// Fetch MoveLearnMethod
///
/// - parameter id: identifies the moveLearnMethod
/// - parameter completion: Result<PKMMoveLearnMethod, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveLearnMethod(id: String, _ completion: @escaping (Result<PKMMoveLearnMethod, Error>) -> Void) {
    fetch(api: .moveLearnMethod(id: id), completion: completion)
}

/// Fetch MoveLearnMethodList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveLearnMethodList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .moveLearnMethodList, completion: completion)
}

/// Fetch MoveList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .moveList, completion: completion)
}

/// Fetch MoveTarget
///
/// - parameter id: identifies the moveTarget
/// - parameter completion: Result<PKMMoveTarget, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveTarget(id: String, _ completion: @escaping (Result<PKMMoveTarget, Error>) -> Void) {
    fetch(api: .moveTarget(id: id), completion: completion)
}

/// Fetch MoveTargetList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchMoveTargetList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .moveTargetList, completion: completion)
}

/// Fetch Nature
///
/// - parameter id: identifies the nature
/// - parameter completion: Result<PKMNature, Error>
///
/// Error is either a DecodingError or URLError
public func fetchNature(id: String, _ completion: @escaping (Result<PKMNature, Error>) -> Void) {
    fetch(api: .nature(id: id), completion: completion)
}

/// Fetch NatureList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchNatureList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .natureList, completion: completion)
}

/// Fetch PalParkArea
///
/// - parameter id: identifies the palParkArea
/// - parameter completion: Result<PKMPalParkArea, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPalParkArea(id: String, _ completion: @escaping (Result<PKMPalParkArea, Error>) -> Void) {
    fetch(api: .palParkArea(id: id), completion: completion)
}

/// Fetch PalParkAreaList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPalParkAreaList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .palParkAreaList, completion: completion)
}

/// Fetch PokeathlonStat
///
/// - parameter id: identifies the pokeathlonStat
/// - parameter completion: Result<PKMPokeathlonStat, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokeathlonStat(id: String, _ completion: @escaping (Result<PKMPokeathlonStat, Error>) -> Void) {
    fetch(api: .pokeathlonStat(id: id), completion: completion)
}

/// Fetch PokeathlonStatList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokeathlonStatList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .pokeathlonStatList, completion: completion)
}

/// Fetch Pokedex
///
/// - parameter id: identifies the pokedex
/// - parameter completion: Result<PKMPokedex, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokedex(id: String, _ completion: @escaping (Result<PKMPokedex, Error>) -> Void) {
    fetch(api: .pokedex(id: id), completion: completion)
}

/// Fetch PokedexList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokedexList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .pokedexList, completion: completion)
}

/// Fetch Pokemon
///
/// - parameter id: identifies the pokemon
/// - parameter completion: Result<PKMPokemon, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokemon(id: String, _ completion: @escaping (Result<PKMPokemon, Error>) -> Void) {
    fetch(api: .pokemon(id: id), completion: completion)
}

/// Fetch PokemonColor
///
/// - parameter id: identifies the pokemonColor
/// - parameter completion: Result<PKMPokemonColor, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokemonColor(id: String, _ completion: @escaping (Result<PKMPokemonColor, Error>) -> Void) {
    fetch(api: .pokemonColor(id: id), completion: completion)
}

/// Fetch PokemonColorList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokemonColorList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .pokemonColorList, completion: completion)
}

/// Fetch PokemonForm
///
/// - parameter id: identifies the pokemonForm
/// - parameter completion: Result<PKMPokemonForm, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokemonForm(id: String, _ completion: @escaping (Result<PKMPokemonForm, Error>) -> Void) {
    fetch(api: .pokemonForm(id: id), completion: completion)
}

/// Fetch PokemonFormList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokemonFormList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .pokemonFormList, completion: completion)
}

/// Fetch PokemonHabitat
///
/// - parameter id: identifies the pokemonHabitat
/// - parameter completion: Result<PKMPokemonHabitat, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokemonHabitat(id: String, _ completion: @escaping (Result<PKMPokemonHabitat, Error>) -> Void) {
    fetch(api: .pokemonHabitat(id: id), completion: completion)
}

/// Fetch PokemonHabitatList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokemonHabitatList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .pokemonHabitatList, completion: completion)
}

/// Fetch PokemonList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokemonList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .pokemonList, completion: completion)
}

/// Fetch PokemonShape
///
/// - parameter id: identifies the pokemonShape
/// - parameter completion: Result<PKMPokemonShape, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokemonShape(id: String, _ completion: @escaping (Result<PKMPokemonShape, Error>) -> Void) {
    fetch(api: .pokemonShape(id: id), completion: completion)
}

/// Fetch PokemonShapeList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokemonShapeList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .pokemonShapeList, completion: completion)
}

/// Fetch PokemonSpecies
///
/// - parameter id: identifies the pokemonSpecies
/// - parameter completion: Result<PKMPokemonSpecies, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokemonSpecies(id: String, _ completion: @escaping (Result<PKMPokemonSpecies, Error>) -> Void) {
    fetch(api: .pokemonSpecies(id: id), completion: completion)
}

/// Fetch PokemonSpeciesList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchPokemonSpeciesList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .pokemonSpeciesList, completion: completion)
}

/// Fetch Region
///
/// - parameter id: identifies the region
/// - parameter completion: Result<PKMRegion, Error>
///
/// Error is either a DecodingError or URLError
public func fetchRegion(id: String, _ completion: @escaping (Result<PKMRegion, Error>) -> Void) {
    fetch(api: .region(id: id), completion: completion)
}

/// Fetch RegionList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchRegionList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .regionList, completion: completion)
}

/// Fetch Stat
///
/// - parameter id: identifies the stat
/// - parameter completion: Result<PKMStat, Error>
///
/// Error is either a DecodingError or URLError
public func fetchStat(id: String, _ completion: @escaping (Result<PKMStat, Error>) -> Void) {
    fetch(api: .stat(id: id), completion: completion)
}

/// Fetch StatList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchStatList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .statList, completion: completion)
}

/// Fetch SuperContestEffect
///
/// - parameter id: identifies the superContestEffect
/// - parameter completion: Result<PKMSuperContestEffect, Error>
///
/// Error is either a DecodingError or URLError
public func fetchSuperContestEffect(id: String, _ completion: @escaping (Result<PKMSuperContestEffect, Error>) -> Void) {
    fetch(api: .superContestEffect(id: id), completion: completion)
}

/// Fetch SuperContestEffectList
///
/// - parameter completion: Result<PKMAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchSuperContestEffectList(_ completion: @escaping (Result<PKMAPIResourceList, Error>) -> Void) {
    fetch(api: .superContestEffectList, completion: completion)
}

/// Fetch Type
///
/// - parameter id: identifies the type
/// - parameter completion: Result<PKMType, Error>
///
/// Error is either a DecodingError or URLError
public func fetchType(id: String, _ completion: @escaping (Result<PKMType, Error>) -> Void) {
    fetch(api: .type(id: id), completion: completion)
}

/// Fetch TypeList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchTypeList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .typeList, completion: completion)
}

/// Fetch Version
///
/// - parameter id: identifies the version
/// - parameter completion: Result<PKMVersion, Error>
///
/// Error is either a DecodingError or URLError
public func fetchVersion(id: String, _ completion: @escaping (Result<PKMVersion, Error>) -> Void) {
    fetch(api: .version(id: id), completion: completion)
}

/// Fetch VersionGroup
///
/// - parameter id: identifies the versionGroup
/// - parameter completion: Result<PKMVersionGroup, Error>
///
/// Error is either a DecodingError or URLError
public func fetchVersionGroup(id: String, _ completion: @escaping (Result<PKMVersionGroup, Error>) -> Void) {
    fetch(api: .versionGroup(id: id), completion: completion)
}

/// Fetch VersionGroupList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchVersionGroupList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .versionGroupList, completion: completion)
}

/// Fetch VersionList
///
/// - parameter completion: Result<PKMNamedAPIResourceList, Error>
///
/// Error is either a DecodingError or URLError
public func fetchVersionList(_ completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) {
    fetch(api: .versionList, completion: completion)
}
