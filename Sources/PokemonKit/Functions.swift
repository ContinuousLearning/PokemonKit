// PokemonKit 2019


/**
 Fetch Berry list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchBerryList(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .berryList, completion: completion) }

/**
 Fetch Berry Information

 - parameter berryId: Berry ID

 - returns: A promise with PKMBerry
 */
public func fetchBerry(_ berryId: String, completion: @escaping (Result<PKMBerry, Error>) -> Void) { fetch(api: .berry(id: berryId), completion: completion) }

/**
 Fetch Berry Firmness list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchBerryFirmnessList(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .berryFirmnessList, completion: completion) }

/**
 Fetch Berry Firmness Information

 - parameter berryFirmnessId: Berry Firmness ID

 - returns: A promise with PKMBerryFirmness
 */
public func fetchBerryFirmness(_ berryFirmnessId: String, completion: @escaping (Swift.Result<PKMBerryFirmness, Error>) -> Void) { fetch(api: .berryFirmness(id: berryFirmnessId), completion: completion) }

/**
 Fetch Berry Flavours list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchBerryFlavours(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .berryFlavorList, completion: completion) }

/**
 Fetch Berry Flavour Information

 - parameter berryFlavourId: Berry Flavour ID

 - returns: A promise with PKMBerryFlavour
 */
public func fetchBerryFlavour(_ berryFlavourId: String, completion: @escaping (Result<PKMBerryFlavour, Error>) -> Void) { fetch(api: .berryFlavor(id: berryFlavourId), completion: completion) }

/**
 Fetch Contest list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchContestList(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .contestTypeList, completion: completion) }

/**
 Fetch Contest Type Information

 - parameter contestTypeId: Contest Type ID

 - returns: A promise with PKMContestType
 */
public func fetchContestType(_ contestTypeId: String, completion: @escaping (Result<PKMContestType, Error>) -> Void) { fetch(api: .contestType(id: contestTypeId), completion: completion) }

/**
 Fetch Contest Effects list

 - returns: A promise with PKMAPIResourceList
 */
public func fetchContestEffects(completion: @escaping (Result<PKMAPIResourceList, Error>) -> Void) { fetch(api: .contestEffectList, completion: completion) }

/**
 Fetch Contest Effect Information

 - parameter contestEffectId: Contest Effect ID

 - returns: A promise with PKMContestEffect
 */
public func fetchContestEffect(_ contestEffectId: String, completion: @escaping (Result<PKMContestEffect, Error>) -> Void) { fetch(api: .contestEffect(id: contestEffectId), completion: completion) }

/**
 Fetch Super Contest Effects list

 - returns: A promise with PKMAPIResourceList
 */
public func fetchSuperContestEffects(completion: @escaping (Result<PKMAPIResourceList, Error>) -> Void) { fetch(api: .superContestEffectList, completion: completion) }

/**
 Fetch Super Contest Effect Information

 - parameter superContestEffectId: Super Contest Effect ID

 - returns: A promise with PKMSuperContestEffect
 */
public func fetchSuperContestEffect(_ superContestEffectId: String, completion: @escaping (Result<PKMSuperContestEffect, Error>) -> Void) { fetch(api: .superContestEffect(id: superContestEffectId), completion: completion) }

/**
 Fetch Encounter Methods list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEncounterMethods(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .encounterMethodList, completion: completion) }

/**
 Fetch Encounter Method Information

 - parameter encounterMethodId: Encounter Method ID

 - returns: A promise with PKMEncounterMethod
 */
public func fetchEncounterMethod(_ encounterMethodId: String, completion: @escaping (Result<PKMEncounterMethod, Error>) -> Void) { fetch(api: .encounterMethod(id: encounterMethodId), completion: completion) }

/**
 Fetch Encounter Conditions list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEncounterConditions(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .encounterConditionList, completion: completion) }

/**
 Fetch Encounter Condition Information

 - parameter encounterConditionId: Encounter Condition ID

 - returns: A promise with PKMEncounterCondition
 */
public func fetchEncounterCondition(_ encounterConditionId: String, completion: @escaping (Result<PKMEncounterCondition, Error>) -> Void) { fetch(api: .encounterCondition(id: encounterConditionId), completion: completion) }

/**
 Fetch Encounter Condition Values list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEncounterConditionValues(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .encounterConditionValueList, completion: completion) }

/**
 Fetch Encounter Condition Value Information

 - parameter encounterConditionValueId: Encounter Condition Value ID

 - returns: A promise with PKMEncounterConditionValue
 */
public func fetchEncounterConditionValue(_ encounterConditionValueId: String, completion: @escaping (Result<PKMEncounterConditionValue, Error>) -> Void) { fetch(api: .encounterConditionValue(id: encounterConditionValueId), completion: completion) }

/**
 Fetch Encounter Chains list

 - returns: A promise with PKMAPIResourceList
 */
public func fetchEvolutionChains(completion: @escaping (Result<PKMAPIResourceList, Error>) -> Void) { fetch(api: .evolutionChainList, completion: completion) }

/**
 Fetch Evolution Chain Information

 - parameter evolutionChainId: Evolution Chain ID

 - returns: A promise with PKMEvolutionChain
 */
public func fetchEvolutionChain(_ evolutionChainId: String, completion: @escaping (Result<PKMEvolutionChain, Error>) -> Void) { fetch(api: .evolutionChain(id: evolutionChainId), completion: completion) }

/**
 Fetch Encounter Triggers list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEvolutionTriggers(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .evolutionTriggerList, completion: completion) }

/**
 Fetch Evolution Trigger Information

 - parameter evolutionTriggerId: Evolution Trigger ID

 - returns: A promise with PKMEvolutionTrigger
 */
public func fetchEvolutionTrigger(_ evolutionTriggerId: String, completion: @escaping (Result<PKMEvolutionTrigger, Error>) -> Void) { fetch(api: .evolutionTrigger(id: evolutionTriggerId), completion: completion) }

/**
 Fetch Generations list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchGenerations(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .generationList, completion: completion) }

/**
 Fetch Generation Information

 - parameter generationId: Generation ID

 - returns: A promise with PKMGeneration
 */
public func fetchGeneration(_ generationId: String, completion: @escaping (Result<PKMGeneration, Error>) -> Void) { fetch(api: .generation(id: generationId), completion: completion) }

/**
 Fetch Pokedexes list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokedexes(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .pokedexList, completion: completion) }

/**
 Fetch Pokedex Information

 - parameter pokedexId: Pokedex ID

 - returns: A promise with PKMPokedex
 */
public func fetchPokedex(_ pokedexId: String, completion: @escaping (Result<PKMPokedex, Error>) -> Void) { fetch(api: .pokedex(id: pokedexId), completion: completion) }

/**
 Fetch Versions list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchVersions(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .versionList, completion: completion) }

/**
 Fetch Version Information

 - parameter versionId: Version ID

 - returns: A promise with PKMVersion
 */
public func fetchVersion(_ versionId: String, completion: @escaping (Result<PKMVersion, Error>) -> Void) { fetch(api: .version(id: versionId), completion: completion) }

/**
 Fetch Versions Groups list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchVersionGroups(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .versionGroupList, completion: completion) }

/**
 Fetch Version Group Information

 - parameter versionGroupId: Version Group ID

 - returns: A promise with PKMVersionGroup
 */
public func fetchVersionGroup(_ versionGroupId: String, completion: @escaping (Result<PKMVersionGroup, Error>) -> Void) { fetch(api: .versionGroup(id: versionGroupId), completion: completion) }

/**
 Fetch Items list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItems(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .itemList, completion: completion) }

/**
 Fetch Item Information

 - parameter itemId: Item ID

 - returns: A promise with PKMItem
 */
public func fetchItem(_ itemId: String, completion: @escaping (Result<PKMItem, Error>) -> Void) { fetch(api: .item(id: itemId), completion: completion) }

/**
 Fetch Item Attributes list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItemAttributes(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .itemAttributeList, completion: completion) }

/**
 Fetch Item Attribute Information

 - parameter itemAttributeId: Item Attribute ID

 - returns: A promise with PKMItemAttribute
 */
public func fetchItemAttribute(_ itemAttributeId: String, completion: @escaping (Result<PKMItemAttribute, Error>) -> Void) { fetch(api: .itemAttribute(id: itemAttributeId), completion: completion) }

/**
 Fetch Item Categories list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItemCategories(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .itemCategoryList, completion: completion) }

/**
 Fetch Item Category Information

 - parameter itemCategoryId: Item Category ID

 - returns: A promise with PKMItemCategory
 */
public func fetchItemCategory(_ itemCategoryId: String, completion: @escaping (Result<PKMItemCategory, Error>) -> Void) { fetch(api: .itemCategory(id: itemCategoryId), completion: completion) }

/**
 Fetch Item Fling Effects list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItemFlingEffects(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .itemFlingEffectList, completion: completion) }

/**
 Fetch Item Fling Effect Information

 - parameter itemFlingEffectsId: Item Fling Effect ID

 - returns: A promise with PKMItemFlingEffect
 */
public func fetchItemFlingEffect(_ itemFlingEffectsId: String, completion: @escaping (Result<PKMItemFlingEffect, Error>) -> Void) { fetch(api: .itemFlingEffect(id: itemFlingEffectsId), completion: completion) }

/**
 Fetch Item Pockets list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchItemPockets(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .itemPocketList, completion: completion) }

/**
 Fetch Item Pocket Information

 - parameter itemPocketId: Item Pocket ID

 - returns: A promise with PKMItemPocket
 */
public func fetchItemPocket(_ itemPocketId: String, completion: @escaping (Result<PKMItemPocket, Error>) -> Void) { fetch(api: .itemPocket(id: itemPocketId), completion: completion) }

/**
 Fetch Moves list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoves(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .moveList, completion: completion) }

/**
 Fetch Move Information

 - parameter moveId: Move ID

 - returns: A promise with PKMMove
 */
public func fetchMove(_ moveId: String, completion: @escaping (Result<PKMMove, Error>) -> Void) { fetch(api: .move(id: moveId), completion: completion) }

/**
 Fetch Moves Ailments list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveAilments(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .moveAilmentList, completion: completion) }

/**
 Fetch Move Ailment Information

 - parameter moveAilmentId: Move Ailment ID

 - returns: A promise with PKMMoveAilment
 */
public func fetchMoveAilment(_ moveAilmentId: String, completion: @escaping (Result<PKMMoveAilment, Error>) -> Void) { fetch(api: .moveAilment(id: moveAilmentId), completion: completion) }

/**
 Fetch Moves Battle Styles list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveBattleStyles(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .moveBattleStyleList, completion: completion) }

/**
 Fetch Move Battle Style Information

 - parameter moveBattleStyleId: Move Battle Style ID

 - returns: A promise with PKMMoveBattleStyle
 */
public func fetchMoveBattleStyle(_ moveBattleStyleId: String, completion: @escaping (Result<PKMMoveBattleStyle, Error>) -> Void) { fetch(api: .moveBattleStyle(id: moveBattleStyleId), completion: completion) }

/**
 Fetch Moves Categories list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveCategories(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .moveCategoryList, completion: completion) }

/**
 Fetch Move Category Information

 - parameter moveCategoryId: Move Category ID

 - returns: A promise with PKMMoveCategory
 */
public func fetchMoveCategory(_ moveCategoryId: String, completion: @escaping (Result<PKMMoveCategory, Error>) -> Void) { fetch(api: .moveCategory(id: moveCategoryId), completion: completion) }

/**
 Fetch Moves Damage Classes list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveDamageClasses(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .moveDamageClassList, completion: completion) }

/**
 Fetch Move Damage Class Information

 - parameter moveDamageClassId: Move Damage Class ID

 - returns: A promise with PKMMoveDamageClass
 */
public func fetchMoveDamageClass(_ moveDamageClassId: String, completion: @escaping (Result<PKMMoveDamageClass, Error>) -> Void) { fetch(api: .moveDamageClass(id: moveDamageClassId), completion: completion) }

/**
 Fetch Moves Learn Methods list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveLearnMethods(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .moveLearnMethodList, completion: completion) }

/**
 Fetch Move Learn Method Information

 - parameter moveLearnMethodId: Move Learn Method ID

 - returns: A promise with PKMMoveLearnMethod
 */
public func fetchMoveLearnMethod(_ moveLearnMethodId: String, completion: @escaping (Result<PKMMoveLearnMethod, Error>) -> Void) { fetch(api: .moveLearnMethod(id: moveLearnMethodId), completion: completion) }

/**
 Fetch Moves Targets list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchMoveTargets(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .moveTargetList, completion: completion) }

/**
 Fetch Move Target Information

 - parameter moveTargetId: Move Target ID

 - returns: A promise with PKMMoveTarget
 */
public func fetchMoveTarget(_ moveTargetId: String, completion: @escaping (Result<PKMMoveTarget, Error>) -> Void) { fetch(api: .moveTarget(id: moveTargetId), completion: completion) }

/**
 Fetch Locations list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchLocations(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .locationList, completion: completion) }

/**
 Fetch Location Information

 - parameter locationId: Location ID

 - returns: A promise with PKMLocation
 */
public func fetchLocation(_ locationId: String, completion: @escaping (Result<PKMLocation, Error>) -> Void) { fetch(api: .location(id: locationId), completion: completion) }

/**
 Fetch Location Area list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchLocationAreas(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .locationAreaList, completion: completion) }

/**
 Fetch Location Area Information

 - parameter locationAreaId: Location Area ID

 - returns: A promise with PKMLocationArea
 */
public func fetchLocationArea(_ locationAreaId: String, completion: @escaping (Result<PKMLocationArea, Error>) -> Void) { fetch(api: .locationArea(id: locationAreaId), completion: completion) }

/**
 Fetch Pal Park Areas list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPalParkAreas(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .palParkAreaList, completion: completion) }

/**
 Fetch Pal Park Area Information

 - parameter palParkAreaId: Pal Park Area ID

 - returns: A promise with PKMPalParkArea
 */
public func fetchPalParkArea(_ palParkAreaId: String, completion: @escaping (Result<PKMPalParkArea, Error>) -> Void) { fetch(api: .palParkArea(id: palParkAreaId), completion: completion) }

/**
 Fetch Regions list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchRegions(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .regionList, completion: completion) }

/**
 Fetch Region Information

 - parameter regionId: Region ID

 - returns: A promise with PKMRegion
 */
public func fetchRegion(_ regionId: String, completion: @escaping (Result<PKMRegion, Error>) -> Void) { fetch(api: .region(id: regionId), completion: completion) }

/**
 Fetch Abilities list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchAbilities(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .abilityList, completion: completion) }

/**
 Fetch Ability Information

 - parameter abilityId: Ability ID

 - returns: A promise with PKMAbility
 */
public func fetchAbility(_ abilityId: String, completion: @escaping (Result<PKMAbility, Error>) -> Void) { fetch(api: .ability(id: abilityId), completion: completion) }

/**
 Fetch Characteristics list

 - returns: A promise with PKMAPIResourceList
 */
public func fetchCharacteristics(completion: @escaping (Result<PKMAPIResourceList, Error>) -> Void) { fetch(api: .characteristicList, completion: completion) }

/**
 Fetch Characteristic Information

 - parameter characteristicId: Characteristic ID

 - returns: A promise with PKMCharacteristic
 */
public func fetchCharacteristic(_ characteristicId: String, completion: @escaping (Result<PKMCharacteristic, Error>) -> Void) { fetch(api: .characteristic(id: characteristicId), completion: completion) }

/**
 Fetch Egg Group list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchEggGroup(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .eggGroupList, completion: completion) }

/**
 Fetch Egg Group Information

 - parameter eggGroupId: Egg Group ID

 - returns: A promise with PKMEggGroup
 */
public func fetchEggGroup(_ eggGroupId: String, completion: @escaping (Result<PKMEggGroup, Error>) -> Void) { fetch(api: .eggGroup(id: eggGroupId), completion: completion) }

/**
 Fetch Genders list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchGenders(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .genderList, completion: completion) }

/**
 Fetch Gender Information

 - parameter genderId: Gender ID

 - returns: A promise with PKMGender
 */
public func fetchGender(_ genderId: String, completion: @escaping (Result<PKMGender, Error>) -> Void) { fetch(api: .gender(id: genderId), completion: completion) }

/**
 Fetch Growth Rate list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchGrowthRates(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .growthRateList, completion: completion) }

/**
 Fetch Growth Rate Information

 - parameter growthRateId: Growth Rate ID

 - returns: A promise with PKMGrowthRate
 */
public func fetchGrowthRate(_ growthRateId: String, completion: @escaping (Result<PKMGrowthRate, Error>) -> Void) { fetch(api: .growthRate(id: growthRateId), completion: completion) }

/**
 Fetch Nature list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchNatures(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .natureList, completion: completion) }

/**
 Fetch Nature Information

 - parameter natureId: Nature ID

 - returns: A promise with PKMNature
 */
public func fetchNature(_ natureId: String, completion: @escaping (Result<PKMNature, Error>) -> Void) { fetch(api: .nature(id: natureId), completion: completion) }

/**
 Fetch Pokeathlon Stat list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokeathlonStats(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .pokeathlonStatList, completion: completion) }

/**
 Fetch Pokeathlon Stat Information

 - parameter pokeathlonStatId: Pokeathlon Stat ID

 - returns: A promise with PKMPokeathlonStat
 */
public func fetchPokeathlonStat(_ pokeathlonStatId: String, completion: @escaping (Result<PKMPokeathlonStat, Error>) -> Void) { fetch(api: .pokeathlonStat(id: pokeathlonStatId), completion: completion) }

/**
 Fetch Pokemon list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemons(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .pokemonList, completion: completion) }

/**
 Fetch Pokemon Information

 - parameter pokemonId: Pokemon( ID

 - returns: A promise with PKMPokemon
 */
public func fetchPokemon(_ pokemonId: String, completion: @escaping (Result<PKMPokemon, Error>) -> Void) { fetch(api: .pokemon(id: pokemonId), completion: completion) }

/**
 Fetch Pokemon Color list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonColors(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .pokemonColorList, completion: completion) }

/**
 Fetch Pokemon Color Information

 - parameter pokemonColorId: Pokemon Color ID

 - returns: A promise with PKMPokemonColor
 */
public func fetchPokemonColor(_ pokemonColorId: String, completion: @escaping (Result<PKMPokemonColor, Error>) -> Void) { fetch(api: .pokemonColor(id: pokemonColorId), completion: completion) }

/**
 Fetch Pokemon Form list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonForms(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .pokemonFormList, completion: completion) }

/**
 Fetch Pokemon Form Information

 - parameter pokemonFormId: Pokemon Form ID

 - returns: A promise with PKMPokemonForm
 */
public func fetchPokemonForm(_ pokemonFormId: String, completion: @escaping (Result<PKMPokemonForm, Error>) -> Void) { fetch(api: .pokemonForm(id: pokemonFormId), completion: completion) }

/**
 Fetch Pokemon Habitat list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonHabitats(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .pokemonHabitatList, completion: completion) }

/**
 Fetch Pokemon Habitat Information

 - parameter pokemonHabitatId: Pokemon Habitat ID

 - returns: A promise with PKMPokemonHabitat
 */
public func fetchPokemonHabitat(_ pokemonHabitatId: String, completion: @escaping (Result<PKMPokemonHabitat, Error>) -> Void) { fetch(api: .pokemonHabitat(id: pokemonHabitatId), completion: completion) }

/**
 Fetch Pokemon Shape list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonShapes(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .pokemonShapeList, completion: completion) }

/**
 Fetch Pokemon Shape Information

 - parameter pokemonShapeId: Pokemon Shape ID

 - returns: A promise with PKMPokemonShape
 */
public func fetchPokemonShape(_ pokemonShapeId: String, completion: @escaping (Result<PKMPokemonShape, Error>) -> Void) { fetch(api: .pokemonShape(id: pokemonShapeId), completion: completion) }

/**
 Fetch Pokemon Species list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchPokemonSpecies(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .pokemonSpeciesList, completion: completion) }

/**
 Fetch Pokemon Species Information

 - parameter pokemonSpeciesId: Pokemon Species ID

 - returns: A promise with PKMPokemonSpecies
 */
public func fetchPokemonSpecies(_ pokemonSpeciesId: String, completion: @escaping (Result<PKMPokemonSpecies, Error>) -> Void) { fetch(api: .pokemonSpecies(id: pokemonSpeciesId), completion: completion) }

/**
 Fetch Stat list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchStats(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .statList, completion: completion) }

/**
 Fetch Stat Information

 - parameter statId: Stat ID

 - returns: A promise with PKMStat
 */
public func fetchStat(_ statId: String, completion: @escaping (Result<PKMStat, Error>) -> Void) { fetch(api: .stat(id: statId), completion: completion) }

/**
 Fetch Type list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchType(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .typeList, completion: completion) }

/**
 Fetch Type Information

 - parameter typeId: Type ID

 - returns: A promise with PKMType
 */
public func fetchType(_ typeId: String, completion: @escaping (Result<PKMType, Error>) -> Void) { fetch(api: .type(id: typeId), completion: completion) }

/**
 Fetch Languages list

 - returns: A promise with PKMNamedAPIResourceList
 */
public func fetchLanguages(completion: @escaping (Result<PKMNamedAPIResourceList, Error>) -> Void) { fetch(api: .languageList, completion: completion) }

/**
 Fetch Language Information

 - parameter languageId: Language ID

 - returns: A promise with PKMLanguage
 */
public func fetchLanguage(_ languageId: String, completion: @escaping (Result<PKMLanguage, Error>) -> Void) { fetch(api: .language(id: languageId), completion: completion) }
