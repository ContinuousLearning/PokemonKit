// PokemonKit 2019

import PromiseKit

/**
 Fetch Berry list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchBerryList() -> Promise<PKMNamedAPIResourceList>{
    return Provider.shared.fetch(target: .berryList)
}

/**
 Fetch Berry Information

 - parameter berryId: Berry ID

 - returns: A promise with PKMBerry
 */
public func fetchBerry(_ berryId: String) -> Promise<PKMBerry>{
    return Provider.shared.fetch(target: .berry(id: berryId))
}

/**
 Fetch Berry Firmness list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchBerryFirmnessList() -> Promise<PKMNamedAPIResourceList>{
    return Provider.shared.fetch(target: .berryFirmnessList)
}

/**
 Fetch Berry Firmness Information

 - parameter berryFirmnessId: Berry Firmness ID

 - returns: A promise with PKMBerryFirmness
 */
public func fetchBerryFirmness(_ berryFirmnessId: String) -> Promise<PKMBerryFirmness>{
    return Provider.shared.fetch(target: .berryFirmness(id: berryFirmnessId))
}

/**
 Fetch Berry Flavours list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchBerryFlavours() -> Promise<PKMNamedAPIResourceList>{
    return Provider.shared.fetch(target: .berryFlavorList)
}

/**
 Fetch Berry Flavour Information

 - parameter berryFlavourId: Berry Flavour ID

 - returns: A promise with PKMBerryFlavour
 */
public func fetchBerryFlavour(_ berryFlavourId: String) -> Promise<PKMBerryFlavour>{
    return Provider.shared.fetch(target: .berryFlavor(id: berryFlavourId))
}

/**
 Fetch Contest list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchContestList() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .contestTypeList)
}

/**
 Fetch Contest Type Information

 - parameter contestTypeId: Contest Type ID

 - returns: A promise with PKMContestType
 */
public func fetchContestType(_ contestTypeId: String) -> Promise<PKMContestType>{
    return Provider.shared.fetch(target: .contestType(id: contestTypeId))
}

/**
 Fetch Contest Effects list

 - returns: A promise with PKMAPIResourceList
 */
public func fetchContestEffects() -> Promise<PKMAPIResourceList> {
    return Provider.shared.fetch(target: .contestEffectList)
}

/**
 Fetch Contest Effect Information

 - parameter contestEffectId: Contest Effect ID

 - returns: A promise with PKMContestEffect
 */
public func fetchContestEffect(_ contestEffectId: String) -> Promise<PKMContestEffect>{
    return Provider.shared.fetch(target: .contestEffect(id: contestEffectId))
}

/**
 Fetch Super Contest Effects list

 - returns: A promise with PKMAPIResourceList
 */
public func fetchSuperContestEffects() -> Promise<PKMAPIResourceList> {
    return Provider.shared.fetch(target: .superContestEffectList)
}

/**
 Fetch Super Contest Effect Information

 - parameter superContestEffectId: Super Contest Effect ID

 - returns: A promise with PKMSuperContestEffect
 */
public func fetchSuperContestEffect(_ superContestEffectId: String) -> Promise<PKMSuperContestEffect>{
    return Provider.shared.fetch(target: .superContestEffect(id: superContestEffectId))
}

/**
 Fetch Encounter Methods list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEncounterMethods() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .encounterMethodList)
}

/**
 Fetch Encounter Method Information

 - parameter encounterMethodId: Encounter Method ID

 - returns: A promise with PKMEncounterMethod
 */
public func fetchEncounterMethod(_ encounterMethodId: String) -> Promise<PKMEncounterMethod>{
    return Provider.shared.fetch(target: .encounterMethod(id: encounterMethodId))
}

/**
 Fetch Encounter Conditions list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEncounterConditions() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .encounterConditionList)
}

/**
 Fetch Encounter Condition Information

 - parameter encounterConditionId: Encounter Condition ID

 - returns: A promise with PKMEncounterCondition
 */
public func fetchEncounterCondition(_ encounterConditionId: String) -> Promise<PKMEncounterCondition>{
    return Provider.shared.fetch(target: .encounterCondition(id: encounterConditionId))
}

/**
 Fetch Encounter Condition Values list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEncounterConditionValues() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .encounterConditionValueList)
}

/**
 Fetch Encounter Condition Value Information

 - parameter encounterConditionValueId: Encounter Condition Value ID

 - returns: A promise with PKMEncounterConditionValue
 */
public func fetchEncounterConditionValue(_ encounterConditionValueId: String) -> Promise<PKMEncounterConditionValue>{
    return Provider.shared.fetch(target: .encounterConditionValue(id: encounterConditionValueId))
}

/**
 Fetch Encounter Chains list

 - returns: A promise with PKMAPIResourceList
 */
public func fetchEvolutionChains() -> Promise<PKMAPIResourceList> {
    return Provider.shared.fetch(target: .evolutionChainList)
}

/**
 Fetch Evolution Chain Information

 - parameter evolutionChainId: Evolution Chain ID

 - returns: A promise with PKMEvolutionChain
 */
public func fetchEvolutionChain(_ evolutionChainId: String) -> Promise<PKMEvolutionChain>{
    return Provider.shared.fetch(target: .evolutionChain(id: evolutionChainId))
}

/**
 Fetch Encounter Triggers list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEvolutionTriggers() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .evolutionTriggerList)
}

/**
 Fetch Evolution Trigger Information

 - parameter evolutionTriggerId: Evolution Trigger ID

 - returns: A promise with PKMEvolutionTrigger
 */
public func fetchEvolutionTrigger(_ evolutionTriggerId: String) -> Promise<PKMEvolutionTrigger>{
    return Provider.shared.fetch(target: .evolutionTrigger(id: evolutionTriggerId))
}

/**
 Fetch Generations list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchGenerations() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .generationList)
}

/**
 Fetch Generation Information

 - parameter generationId: Generation ID

 - returns: A promise with PKMGeneration
 */
public func fetchGeneration(_ generationId: String) -> Promise<PKMGeneration>{
    return Provider.shared.fetch(target: .generation(id: generationId))
}

/**
 Fetch Pokedexes list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokedexes() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .pokedexList)
}

/**
 Fetch Pokedex Information

 - parameter pokedexId: Pokedex ID

 - returns: A promise with PKMPokedex
 */
public func fetchPokedex(_ pokedexId: String) -> Promise<PKMPokedex>{
    return Provider.shared.fetch(target: .pokedex(id: pokedexId))
}

/**
 Fetch Versions list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchVersions() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .versionList)
}

/**
 Fetch Version Information

 - parameter versionId: Version ID

 - returns: A promise with PKMVersion
 */
public func fetchVersion(_ versionId: String) -> Promise<PKMVersion>{
    return Provider.shared.fetch(target: .version(id: versionId))
}

/**
 Fetch Versions Groups list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchVersionGroups() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .versionGroupList)
}

/**
 Fetch Version Group Information

 - parameter versionGroupId: Version Group ID

 - returns: A promise with PKMVersionGroup
 */
public func fetchVersionGroup(_ versionGroupId: String) -> Promise<PKMVersionGroup>{
    return Provider.shared.fetch(target: .versionGroup(id: versionGroupId))
}

/**
 Fetch Items list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItems() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .itemList)
}

/**
 Fetch Item Information

 - parameter itemId: Item ID

 - returns: A promise with PKMItem
 */
public func fetchItem(_ itemId: String) -> Promise<PKMItem>{
    return Provider.shared.fetch(target: .item(id: itemId))
}

/**
 Fetch Item Attributes list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItemAttributes() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .itemAttributeList)
}

/**
 Fetch Item Attribute Information

 - parameter itemAttributeId: Item Attribute ID

 - returns: A promise with PKMItemAttribute
 */
public func fetchItemAttribute(_ itemAttributeId: String) -> Promise<PKMItemAttribute>{
    return Provider.shared.fetch(target: .itemAttribute(id: itemAttributeId))
}

/**
 Fetch Item Categories list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItemCategories() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .itemCategoryList)
}

/**
 Fetch Item Category Information

 - parameter itemCategoryId: Item Category ID

 - returns: A promise with PKMItemCategory
 */
public func fetchItemCategory(_ itemCategoryId: String) -> Promise<PKMItemCategory>{
    return Provider.shared.fetch(target: .itemCategory(id: itemCategoryId))
}

/**
 Fetch Item Fling Effects list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItemFlingEffects() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .itemFlingEffectList)
}

/**
 Fetch Item Fling Effect Information

 - parameter itemFlingEffectsId: Item Fling Effect ID

 - returns: A promise with PKMItemFlingEffect
 */
public func fetchItemFlingEffect(_ itemFlingEffectsId: String) -> Promise<PKMItemFlingEffect>{
    return Provider.shared.fetch(target: .itemFlingEffect(id: itemFlingEffectsId))
}

/**
 Fetch Item Pockets list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItemPockets() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .itemPocketList)
}

/**
 Fetch Item Pocket Information

 - parameter itemPocketId: Item Pocket ID

 - returns: A promise with PKMItemPocket
 */
public func fetchItemPocket(_ itemPocketId: String) -> Promise<PKMItemPocket>{
    return Provider.shared.fetch(target: .itemPocket(id: itemPocketId))
}

/**
 Fetch Moves list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoves() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .moveList)
}

/**
 Fetch Move Information

 - parameter moveId: Move ID

 - returns: A promise with PKMMove
 */
public func fetchMove(_ moveId: String) -> Promise<PKMMove>{
    return Provider.shared.fetch(target: .move(id: moveId))
}

/**
 Fetch Moves Ailments list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveAilments() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .moveAilmentList)
}

/**
 Fetch Move Ailment Information

 - parameter moveAilmentId: Move Ailment ID

 - returns: A promise with PKMMoveAilment
 */
public func fetchMoveAilment(_ moveAilmentId: String) -> Promise<PKMMoveAilment>{
    return Provider.shared.fetch(target: .moveAilment(id: moveAilmentId))
}

/**
 Fetch Moves Battle Styles list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveBattleStyles() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .moveBattleStyleList)
}

/**
 Fetch Move Battle Style Information

 - parameter moveBattleStyleId: Move Battle Style ID

 - returns: A promise with PKMMoveBattleStyle
 */
public func fetchMoveBattleStyle(_ moveBattleStyleId: String) -> Promise<PKMMoveBattleStyle>{
    return Provider.shared.fetch(target: .moveBattleStyle(id: moveBattleStyleId))
}

/**
 Fetch Moves Categories list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveCategories() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .moveCategoryList)
}

/**
 Fetch Move Category Information

 - parameter moveCategoryId: Move Category ID

 - returns: A promise with PKMMoveCategory
 */
public func fetchMoveCategory(_ moveCategoryId: String) -> Promise<PKMMoveCategory>{
    return Provider.shared.fetch(target: .moveCategory(id: moveCategoryId))
}

/**
 Fetch Moves Damage Classes list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveDamageClasses() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .moveDamageClassList)
}

/**
 Fetch Move Damage Class Information

 - parameter moveDamageClassId: Move Damage Class ID

 - returns: A promise with PKMMoveDamageClass
 */
public func fetchMoveDamageClass(_ moveDamageClassId: String) -> Promise<PKMMoveDamageClass>{
    return Provider.shared.fetch(target: .moveDamageClass(id: moveDamageClassId))
}

/**
 Fetch Moves Learn Methods list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveLearnMethods() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .moveLearnMethodList)
}

/**
 Fetch Move Learn Method Information

 - parameter moveLearnMethodId: Move Learn Method ID

 - returns: A promise with PKMMoveLearnMethod
 */
public func fetchMoveLearnMethod(_ moveLearnMethodId: String) -> Promise<PKMMoveLearnMethod>{
    return Provider.shared.fetch(target: .moveLearnMethod(id: moveLearnMethodId))
}

/**
 Fetch Moves Targets list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveTargets() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .moveTargetList)
}

/**
 Fetch Move Target Information

 - parameter moveTargetId: Move Target ID

 - returns: A promise with PKMMoveTarget
 */
public func fetchMoveTarget(_ moveTargetId: String) -> Promise<PKMMoveTarget>{
    return Provider.shared.fetch(target: .moveTarget(id: moveTargetId))
}

/**
 Fetch Locations list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchLocations() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .locationList)
}

/**
 Fetch Location Information

 - parameter locationId: Location ID

 - returns: A promise with PKMLocation
 */
public func fetchLocation(_ locationId: String) -> Promise<PKMLocation>{
    return Provider.shared.fetch(target: .location(id: locationId))
}

/**
 Fetch Location Area list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchLocationAreas() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .locationAreaList)
}

/**
 Fetch Location Area Information

 - parameter locationAreaId: Location Area ID

 - returns: A promise with PKMLocationArea
 */
public func fetchLocationArea(_ locationAreaId: String) -> Promise<PKMLocationArea>{
    return Provider.shared.fetch(target: .locationArea(id: locationAreaId))
}

/**
 Fetch Pal Park Areas list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPalParkAreas() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .palParkAreaList)
}

/**
 Fetch Pal Park Area Information

 - parameter palParkAreaId: Pal Park Area ID

 - returns: A promise with PKMPalParkArea
 */
public func fetchPalParkArea(_ palParkAreaId: String) -> Promise<PKMPalParkArea>{
    return Provider.shared.fetch(target: .palParkArea(id: palParkAreaId))
}

/**
 Fetch Regions list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchRegions() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .regionList)
}

/**
 Fetch Region Information

 - parameter regionId: Region ID

 - returns: A promise with PKMRegion
 */
public func fetchRegion(_ regionId: String) -> Promise<PKMRegion>{
    return Provider.shared.fetch(target: .region(id: regionId))
}

/**
 Fetch Abilities list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchAbilities() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .abilityList)
}

/**
 Fetch Ability Information

 - parameter abilityId: Ability ID

 - returns: A promise with PKMAbility
 */
public func fetchAbility(_ abilityId: String) -> Promise<PKMAbility>{
    return Provider.shared.fetch(target: .ability(id: abilityId))
}

/**
 Fetch Characteristics list

 - returns: A promise with PKMAPIResourceList
 */
public func fetchCharacteristics() -> Promise<PKMAPIResourceList> {
    return Provider.shared.fetch(target: .characteristicList)
}

/**
 Fetch Characteristic Information

 - parameter characteristicId: Characteristic ID

 - returns: A promise with PKMCharacteristic
 */
public func fetchCharacteristic(_ characteristicId: String) -> Promise<PKMCharacteristic>{
    return Provider.shared.fetch(target: .characteristic(id: characteristicId))
}

/**
 Fetch Egg Group list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEggGroup() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .eggGroupList)
}

/**
 Fetch Egg Group Information

 - parameter eggGroupId: Egg Group ID

 - returns: A promise with PKMEggGroup
 */
public func fetchEggGroup(_ eggGroupId: String) -> Promise<PKMEggGroup>{
    return Provider.shared.fetch(target: .eggGroup(id: eggGroupId))
}

/**
 Fetch Genders list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchGenders() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .genderList)
}

/**
 Fetch Gender Information

 - parameter genderId: Gender ID

 - returns: A promise with PKMGender
 */
public func fetchGender(_ genderId: String) -> Promise<PKMGender>{
    return Provider.shared.fetch(target: .gender(id: genderId))
}

/**
 Fetch Growth Rate list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchGrowthRates() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .growthRateList)
}

/**
 Fetch Growth Rate Information

 - parameter growthRateId: Growth Rate ID

 - returns: A promise with PKMGrowthRate
 */
public func fetchGrowthRate(_ growthRateId: String) -> Promise<PKMGrowthRate>{
    return Provider.shared.fetch(target: .growthRate(id: growthRateId))
}

/**
 Fetch Nature list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchNatures() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .natureList)
}

/**
 Fetch Nature Information

 - parameter natureId: Nature ID

 - returns: A promise with PKMNature
 */
public func fetchNature(_ natureId: String) -> Promise<PKMNature>{
    return Provider.shared.fetch(target: .nature(id: natureId))
}

/**
 Fetch Pokeathlon Stat list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokeathlonStats() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .pokeathlonStatList)
}

/**
 Fetch Pokeathlon Stat Information

 - parameter pokeathlonStatId: Pokeathlon Stat ID

 - returns: A promise with PKMPokeathlonStat
 */
public func fetchPokeathlonStat(_ pokeathlonStatId: String) -> Promise<PKMPokeathlonStat>{
    return Provider.shared.fetch(target: .pokeathlonStat(id: pokeathlonStatId))
}

/**
 Fetch Pokemon list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemons() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .pokemonList)
}

/**
 Fetch Pokemon Information

 - parameter pokemonId: Pokemon( ID

 - returns: A promise with PKMPokemon
 */
public func fetchPokemon(_ pokemonId: String) -> Promise<PKMPokemon>{
    return Provider.shared.fetch(target: .pokemon(id: pokemonId))
}

/**
 Fetch Pokemon Color list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonColors() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .pokemonColorList)
}

/**
 Fetch Pokemon Color Information

 - parameter pokemonColorId: Pokemon Color ID

 - returns: A promise with PKMPokemonColor
 */
public func fetchPokemonColor(_ pokemonColorId: String) -> Promise<PKMPokemonColor>{
    return Provider.shared.fetch(target: .pokemonColor(id: pokemonColorId))
}

/**
 Fetch Pokemon Form list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonForms() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .pokemonFormList)
}

/**
 Fetch Pokemon Form Information

 - parameter pokemonFormId: Pokemon Form ID

 - returns: A promise with PKMPokemonForm
 */
public func fetchPokemonForm(_ pokemonFormId: String) -> Promise<PKMPokemonForm>{
    return Provider.shared.fetch(target: .pokemonForm(id: pokemonFormId))
}

/**
 Fetch Pokemon Habitat list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonHabitats() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .pokemonHabitatList)
}

/**
 Fetch Pokemon Habitat Information

 - parameter pokemonHabitatId: Pokemon Habitat ID

 - returns: A promise with PKMPokemonHabitat
 */
public func fetchPokemonHabitat(_ pokemonHabitatId: String) -> Promise<PKMPokemonHabitat>{
    return Provider.shared.fetch(target: .pokemonHabitat(id: pokemonHabitatId))
}

/**
 Fetch Pokemon Shape list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonShapes() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .pokemonShapeList)
}

/**
 Fetch Pokemon Shape Information

 - parameter pokemonShapeId: Pokemon Shape ID

 - returns: A promise with PKMPokemonShape
 */
public func fetchPokemonShape(_ pokemonShapeId: String) -> Promise<PKMPokemonShape>{
    return Provider.shared.fetch(target: .pokemonShape(id: pokemonShapeId))
}

/**
 Fetch Pokemon Species list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonSpecies() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .pokemonSpeciesList)
}

/**
 Fetch Pokemon Species Information

 - parameter pokemonSpeciesId: Pokemon Species ID

 - returns: A promise with PKMPokemonSpecies
 */
public func fetchPokemonSpecies(_ pokemonSpeciesId: String) -> Promise<PKMPokemonSpecies>{
    return Provider.shared.fetch(target: .pokemonSpecies(id: pokemonSpeciesId))
}

/**
 Fetch Stat list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchStats() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .statList)
}

/**
 Fetch Stat Information

 - parameter statId: Stat ID

 - returns: A promise with PKMStat
 */
public func fetchStat(_ statId: String) -> Promise<PKMStat>{
    return Provider.shared.fetch(target: .stat(id: statId))
}

/**
 Fetch Type list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchType() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .typeList)
}

/**
 Fetch Type Information

 - parameter typeId: Type ID

 - returns: A promise with PKMType
 */
public func fetchType(_ typeId: String) -> Promise<PKMType>{
    return Provider.shared.fetch(target: .type(id: typeId))
}

/**
 Fetch Languages list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchLanguages() -> Promise<PKMNamedAPIResourceList> {
    return Provider.shared.fetch(target: .languageList)
}

/**
 Fetch Language Information

 - parameter languageId: Language ID

 - returns: A promise with PKMLanguage
 */
public func fetchLanguage(_ languageId: String) -> Promise<PKMLanguage>{
    return Provider.shared.fetch(target: .language(id: languageId))
}
