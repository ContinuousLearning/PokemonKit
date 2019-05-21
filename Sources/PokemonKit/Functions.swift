// PokemonKit 2019

import PromiseKit

/**
 Fetch Berry list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchBerryList() -> Promise<PKMNamedAPIResourceList>{
    return decode(request(target: .berryList))
}

/**
 Fetch Berry Information

 - parameter berryId: Berry ID

 - returns: A promise with PKMBerry
 */
public func fetchBerry(_ berryId: String) -> Promise<PKMBerry>{
    return decode(request(target: .berry(id: berryId)))
}

/**
 Fetch Berry Firmness list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchBerryFirmnessList() -> Promise<PKMNamedAPIResourceList>{
    return decode(request(target: .berryFirmnessList))
}

/**
 Fetch Berry Firmness Information

 - parameter berryFirmnessId: Berry Firmness ID

 - returns: A promise with PKMBerryFirmness
 */
public func fetchBerryFirmness(_ berryFirmnessId: String) -> Promise<PKMBerryFirmness>{
    return decode(request(target: .berryFirmness(id: berryFirmnessId)))
}

/**
 Fetch Berry Flavours list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchBerryFlavours() -> Promise<PKMNamedAPIResourceList>{
    return decode(request(target: .berryFlavorList))
}

/**
 Fetch Berry Flavour Information

 - parameter berryFlavourId: Berry Flavour ID

 - returns: A promise with PKMBerryFlavour
 */
public func fetchBerryFlavour(_ berryFlavourId: String) -> Promise<PKMBerryFlavour>{
    return decode(request(target: .berryFlavor(id: berryFlavourId)))
}

/**
 Fetch Contest list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchContestList() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .contestTypeList))
}

/**
 Fetch Contest Type Information

 - parameter contestTypeId: Contest Type ID

 - returns: A promise with PKMContestType
 */
public func fetchContestType(_ contestTypeId: String) -> Promise<PKMContestType>{
    return decode(request(target: .contestType(id: contestTypeId)))
}

/**
 Fetch Contest Effects list

 - returns: A promise with PKMAPIResourceList
 */
public func fetchContestEffects() -> Promise<PKMAPIResourceList> {
    return decode(request(target: .contestEffectList))
}

/**
 Fetch Contest Effect Information

 - parameter contestEffectId: Contest Effect ID

 - returns: A promise with PKMContestEffect
 */
public func fetchContestEffect(_ contestEffectId: String) -> Promise<PKMContestEffect>{
    return decode(request(target: .contestEffect(id: contestEffectId)))
}

/**
 Fetch Super Contest Effects list

 - returns: A promise with PKMAPIResourceList
 */
public func fetchSuperContestEffects() -> Promise<PKMAPIResourceList> {
    return decode(request(target: .superContestEffectList))
}

/**
 Fetch Super Contest Effect Information

 - parameter superContestEffectId: Super Contest Effect ID

 - returns: A promise with PKMSuperContestEffect
 */
public func fetchSuperContestEffect(_ superContestEffectId: String) -> Promise<PKMSuperContestEffect>{
    return decode(request(target: .superContestEffect(id: superContestEffectId)))
}

/**
 Fetch Encounter Methods list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEncounterMethods() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .encounterMethodList))
}

/**
 Fetch Encounter Method Information

 - parameter encounterMethodId: Encounter Method ID

 - returns: A promise with PKMEncounterMethod
 */
public func fetchEncounterMethod(_ encounterMethodId: String) -> Promise<PKMEncounterMethod>{
    return decode(request(target: .encounterMethod(id: encounterMethodId)))
}

/**
 Fetch Encounter Conditions list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEncounterConditions() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .encounterConditionList))
}

/**
 Fetch Encounter Condition Information

 - parameter encounterConditionId: Encounter Condition ID

 - returns: A promise with PKMEncounterCondition
 */
public func fetchEncounterCondition(_ encounterConditionId: String) -> Promise<PKMEncounterCondition>{
    return decode(request(target: .encounterCondition(id: encounterConditionId)))
}

/**
 Fetch Encounter Condition Values list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEncounterConditionValues() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .encounterConditionValueList))
}

/**
 Fetch Encounter Condition Value Information

 - parameter encounterConditionValueId: Encounter Condition Value ID

 - returns: A promise with PKMEncounterConditionValue
 */
public func fetchEncounterConditionValue(_ encounterConditionValueId: String) -> Promise<PKMEncounterConditionValue>{
    return decode(request(target: .encounterConditionValue(id: encounterConditionValueId)))
}

/**
 Fetch Encounter Chains list

 - returns: A promise with PKMAPIResourceList
 */
public func fetchEvolutionChains() -> Promise<PKMAPIResourceList> {
    return decode(request(target: .evolutionChainList))
}

/**
 Fetch Evolution Chain Information

 - parameter evolutionChainId: Evolution Chain ID

 - returns: A promise with PKMEvolutionChain
 */
public func fetchEvolutionChain(_ evolutionChainId: String) -> Promise<PKMEvolutionChain>{
    return decode(request(target: .evolutionChain(id: evolutionChainId)))
}

/**
 Fetch Encounter Triggers list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEvolutionTriggers() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .evolutionTriggerList))
}

/**
 Fetch Evolution Trigger Information

 - parameter evolutionTriggerId: Evolution Trigger ID

 - returns: A promise with PKMEvolutionTrigger
 */
public func fetchEvolutionTrigger(_ evolutionTriggerId: String) -> Promise<PKMEvolutionTrigger>{
    return decode(request(target: .evolutionTrigger(id: evolutionTriggerId)))
}

/**
 Fetch Generations list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchGenerations() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .generationList))
}

/**
 Fetch Generation Information

 - parameter generationId: Generation ID

 - returns: A promise with PKMGeneration
 */
public func fetchGeneration(_ generationId: String) -> Promise<PKMGeneration>{
    return decode(request(target: .generation(id: generationId)))
}

/**
 Fetch Pokedexes list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokedexes() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .pokedexList))
}

/**
 Fetch Pokedex Information

 - parameter pokedexId: Pokedex ID

 - returns: A promise with PKMPokedex
 */
public func fetchPokedex(_ pokedexId: String) -> Promise<PKMPokedex>{
    return decode(request(target: .pokedex(id: pokedexId)))
}

/**
 Fetch Versions list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchVersions() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .versionList))
}

/**
 Fetch Version Information

 - parameter versionId: Version ID

 - returns: A promise with PKMVersion
 */
public func fetchVersion(_ versionId: String) -> Promise<PKMVersion>{
    return decode(request(target: .version(id: versionId)))
}

/**
 Fetch Versions Groups list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchVersionGroups() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .versionGroupList))
}

/**
 Fetch Version Group Information

 - parameter versionGroupId: Version Group ID

 - returns: A promise with PKMVersionGroup
 */
public func fetchVersionGroup(_ versionGroupId: String) -> Promise<PKMVersionGroup>{
    return decode(request(target: .versionGroup(id: versionGroupId)))
}

/**
 Fetch Items list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItems() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .itemList))
}

/**
 Fetch Item Information

 - parameter itemId: Item ID

 - returns: A promise with PKMItem
 */
public func fetchItem(_ itemId: String) -> Promise<PKMItem>{
    return decode(request(target: .item(id: itemId)))
}

/**
 Fetch Item Attributes list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItemAttributes() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .itemAttributeList))
}

/**
 Fetch Item Attribute Information

 - parameter itemAttributeId: Item Attribute ID

 - returns: A promise with PKMItemAttribute
 */
public func fetchItemAttribute(_ itemAttributeId: String) -> Promise<PKMItemAttribute>{
    return decode(request(target: .itemAttribute(id: itemAttributeId)))
}

/**
 Fetch Item Categories list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItemCategories() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .itemCategoryList))
}

/**
 Fetch Item Category Information

 - parameter itemCategoryId: Item Category ID

 - returns: A promise with PKMItemCategory
 */
public func fetchItemCategory(_ itemCategoryId: String) -> Promise<PKMItemCategory>{
    return decode(request(target: .itemCategory(id: itemCategoryId)))
}

/**
 Fetch Item Fling Effects list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItemFlingEffects() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .itemFlingEffectList))
}

/**
 Fetch Item Fling Effect Information

 - parameter itemFlingEffectsId: Item Fling Effect ID

 - returns: A promise with PKMItemFlingEffect
 */
public func fetchItemFlingEffect(_ itemFlingEffectsId: String) -> Promise<PKMItemFlingEffect>{
    return decode(request(target: .itemFlingEffect(id: itemFlingEffectsId)))
}

/**
 Fetch Item Pockets list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItemPockets() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .itemPocketList))
}

/**
 Fetch Item Pocket Information

 - parameter itemPocketId: Item Pocket ID

 - returns: A promise with PKMItemPocket
 */
public func fetchItemPocket(_ itemPocketId: String) -> Promise<PKMItemPocket>{
    return decode(request(target: .itemPocket(id: itemPocketId)))
}

/**
 Fetch Moves list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoves() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .moveList))
}

/**
 Fetch Move Information

 - parameter moveId: Move ID

 - returns: A promise with PKMMove
 */
public func fetchMove(_ moveId: String) -> Promise<PKMMove>{
    return decode(request(target: .move(id: moveId)))
}

/**
 Fetch Moves Ailments list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveAilments() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .moveAilmentList))
}

/**
 Fetch Move Ailment Information

 - parameter moveAilmentId: Move Ailment ID

 - returns: A promise with PKMMoveAilment
 */
public func fetchMoveAilment(_ moveAilmentId: String) -> Promise<PKMMoveAilment>{
    return decode(request(target: .moveAilment(id: moveAilmentId)))
}

/**
 Fetch Moves Battle Styles list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveBattleStyles() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .moveBattleStyleList))
}

/**
 Fetch Move Battle Style Information

 - parameter moveBattleStyleId: Move Battle Style ID

 - returns: A promise with PKMMoveBattleStyle
 */
public func fetchMoveBattleStyle(_ moveBattleStyleId: String) -> Promise<PKMMoveBattleStyle>{
    return decode(request(target: .moveBattleStyle(id: moveBattleStyleId)))
}

/**
 Fetch Moves Categories list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveCategories() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .moveCategoryList))
}

/**
 Fetch Move Category Information

 - parameter moveCategoryId: Move Category ID

 - returns: A promise with PKMMoveCategory
 */
public func fetchMoveCategory(_ moveCategoryId: String) -> Promise<PKMMoveCategory>{
    return decode(request(target: .moveCategory(id: moveCategoryId)))
}

/**
 Fetch Moves Damage Classes list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveDamageClasses() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .moveDamageClassList))
}

/**
 Fetch Move Damage Class Information

 - parameter moveDamageClassId: Move Damage Class ID

 - returns: A promise with PKMMoveDamageClass
 */
public func fetchMoveDamageClass(_ moveDamageClassId: String) -> Promise<PKMMoveDamageClass>{
    return decode(request(target: .moveDamageClass(id: moveDamageClassId)))
}

/**
 Fetch Moves Learn Methods list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveLearnMethods() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .moveLearnMethodList))
}

/**
 Fetch Move Learn Method Information

 - parameter moveLearnMethodId: Move Learn Method ID

 - returns: A promise with PKMMoveLearnMethod
 */
public func fetchMoveLearnMethod(_ moveLearnMethodId: String) -> Promise<PKMMoveLearnMethod>{
    return decode(request(target: .moveLearnMethod(id: moveLearnMethodId)))
}

/**
 Fetch Moves Targets list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveTargets() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .moveTargetList))
}

/**
 Fetch Move Target Information

 - parameter moveTargetId: Move Target ID

 - returns: A promise with PKMMoveTarget
 */
public func fetchMoveTarget(_ moveTargetId: String) -> Promise<PKMMoveTarget>{
    return decode(request(target: .moveTarget(id: moveTargetId)))
}

/**
 Fetch Locations list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchLocations() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .locationList))
}

/**
 Fetch Location Information

 - parameter locationId: Location ID

 - returns: A promise with PKMLocation
 */
public func fetchLocation(_ locationId: String) -> Promise<PKMLocation>{
    return decode(request(target: .location(id: locationId)))
}

/**
 Fetch Location Area list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchLocationAreas() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .locationAreaList))
}

/**
 Fetch Location Area Information

 - parameter locationAreaId: Location Area ID

 - returns: A promise with PKMLocationArea
 */
public func fetchLocationArea(_ locationAreaId: String) -> Promise<PKMLocationArea>{
    return decode(request(target: .locationArea(id: locationAreaId)))
}

/**
 Fetch Pal Park Areas list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPalParkAreas() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .palParkAreaList))
}

/**
 Fetch Pal Park Area Information

 - parameter palParkAreaId: Pal Park Area ID

 - returns: A promise with PKMPalParkArea
 */
public func fetchPalParkArea(_ palParkAreaId: String) -> Promise<PKMPalParkArea>{
    return decode(request(target: .palParkArea(id: palParkAreaId)))
}

/**
 Fetch Regions list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchRegions() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .regionList))
}

/**
 Fetch Region Information

 - parameter regionId: Region ID

 - returns: A promise with PKMRegion
 */
public func fetchRegion(_ regionId: String) -> Promise<PKMRegion>{
    return decode(request(target: .region(id: regionId)))
}

/**
 Fetch Abilities list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchAbilities() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .abilityList))
}

/**
 Fetch Ability Information

 - parameter abilityId: Ability ID

 - returns: A promise with PKMAbility
 */
public func fetchAbility(_ abilityId: String) -> Promise<PKMAbility>{
    return decode(request(target: .ability(id: abilityId)))
}

/**
 Fetch Characteristics list

 - returns: A promise with PKMAPIResourceList
 */
public func fetchCharacteristics() -> Promise<PKMAPIResourceList> {
    return decode(request(target: .characteristicList))
}

/**
 Fetch Characteristic Information

 - parameter characteristicId: Characteristic ID

 - returns: A promise with PKMCharacteristic
 */
public func fetchCharacteristic(_ characteristicId: String) -> Promise<PKMCharacteristic>{
    return decode(request(target: .characteristic(id: characteristicId)))
}

/**
 Fetch Egg Group list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEggGroup() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .eggGroupList))
}

/**
 Fetch Egg Group Information

 - parameter eggGroupId: Egg Group ID

 - returns: A promise with PKMEggGroup
 */
public func fetchEggGroup(_ eggGroupId: String) -> Promise<PKMEggGroup>{
    return decode(request(target: .eggGroup(id: eggGroupId)))
}

/**
 Fetch Genders list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchGenders() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .genderList))
}

/**
 Fetch Gender Information

 - parameter genderId: Gender ID

 - returns: A promise with PKMGender
 */
public func fetchGender(_ genderId: String) -> Promise<PKMGender>{
    return decode(request(target: .gender(id: genderId)))
}

/**
 Fetch Growth Rate list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchGrowthRates() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .growthRateList))
}

/**
 Fetch Growth Rate Information

 - parameter growthRateId: Growth Rate ID

 - returns: A promise with PKMGrowthRate
 */
public func fetchGrowthRate(_ growthRateId: String) -> Promise<PKMGrowthRate>{
    return decode(request(target: .growthRate(id: growthRateId)))
}

/**
 Fetch Nature list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchNatures() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .natureList))
}

/**
 Fetch Nature Information

 - parameter natureId: Nature ID

 - returns: A promise with PKMNature
 */
public func fetchNature(_ natureId: String) -> Promise<PKMNature>{
    return decode(request(target: .nature(id: natureId)))
}

/**
 Fetch Pokeathlon Stat list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokeathlonStats() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .pokeathlonStatList))
}

/**
 Fetch Pokeathlon Stat Information

 - parameter pokeathlonStatId: Pokeathlon Stat ID

 - returns: A promise with PKMPokeathlonStat
 */
public func fetchPokeathlonStat(_ pokeathlonStatId: String) -> Promise<PKMPokeathlonStat>{
    return decode(request(target: .pokeathlonStat(id: pokeathlonStatId)))
}

/**
 Fetch Pokemon list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemons() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .pokemonList))
}

/**
 Fetch Pokemon Information

 - parameter pokemonId: Pokemon( ID

 - returns: A promise with PKMPokemon
 */
public func fetchPokemon(_ pokemonId: String) -> Promise<PKMPokemon>{
    return decode(request(target: .pokemon(id: pokemonId)))
}

/**
 Fetch Pokemon Color list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonColors() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .pokemonColorList))
}

/**
 Fetch Pokemon Color Information

 - parameter pokemonColorId: Pokemon Color ID

 - returns: A promise with PKMPokemonColor
 */
public func fetchPokemonColor(_ pokemonColorId: String) -> Promise<PKMPokemonColor>{
    return decode(request(target: .pokemonColor(id: pokemonColorId)))
}

/**
 Fetch Pokemon Form list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonForms() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .pokemonFormList))
}

/**
 Fetch Pokemon Form Information

 - parameter pokemonFormId: Pokemon Form ID

 - returns: A promise with PKMPokemonForm
 */
public func fetchPokemonForm(_ pokemonFormId: String) -> Promise<PKMPokemonForm>{
    return decode(request(target: .pokemonForm(id: pokemonFormId)))
}

/**
 Fetch Pokemon Habitat list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonHabitats() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .pokemonHabitatList))
}

/**
 Fetch Pokemon Habitat Information

 - parameter pokemonHabitatId: Pokemon Habitat ID

 - returns: A promise with PKMPokemonHabitat
 */
public func fetchPokemonHabitat(_ pokemonHabitatId: String) -> Promise<PKMPokemonHabitat>{
    return decode(request(target: .pokemonHabitat(id: pokemonHabitatId)))
}

/**
 Fetch Pokemon Shape list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonShapes() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .pokemonShapeList))
}

/**
 Fetch Pokemon Shape Information

 - parameter pokemonShapeId: Pokemon Shape ID

 - returns: A promise with PKMPokemonShape
 */
public func fetchPokemonShape(_ pokemonShapeId: String) -> Promise<PKMPokemonShape>{
    return decode(request(target: .pokemonShape(id: pokemonShapeId)))
}

/**
 Fetch Pokemon Species list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonSpecies() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .pokemonSpeciesList))
}

/**
 Fetch Pokemon Species Information

 - parameter pokemonSpeciesId: Pokemon Species ID

 - returns: A promise with PKMPokemonSpecies
 */
public func fetchPokemonSpecies(_ pokemonSpeciesId: String) -> Promise<PKMPokemonSpecies>{
    return decode(request(target: .pokemonSpecies(id: pokemonSpeciesId)))
}

/**
 Fetch Stat list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchStats() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .statList))
}

/**
 Fetch Stat Information

 - parameter statId: Stat ID

 - returns: A promise with PKMStat
 */
public func fetchStat(_ statId: String) -> Promise<PKMStat>{
    return decode(request(target: .stat(id: statId)))
}

/**
 Fetch Type list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchType() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .typeList))
}

/**
 Fetch Type Information

 - parameter typeId: Type ID

 - returns: A promise with PKMType
 */
public func fetchType(_ typeId: String) -> Promise<PKMType>{
    return decode(request(target: .type(id: typeId)))
}

/**
 Fetch Languages list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchLanguages() -> Promise<PKMNamedAPIResourceList> {
    return decode(request(target: .languageList))
}

/**
 Fetch Language Information

 - parameter languageId: Language ID

 - returns: A promise with PKMLanguage
 */
public func fetchLanguage(_ languageId: String) -> Promise<PKMLanguage>{
    return decode(request(target: .language(id: languageId)))
}
