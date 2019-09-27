import PokemonKit

extension PokeAPI: CaseIterable {
    public static var allCases: [PokeAPI] {
        return [
            .berryList,
            .berry(id: "1"),
            
            .berryFirmnessList,
            .berryFirmness(id: "1"),
            
            .berryFlavorList,
            .berryFlavor(id: "1"),
            
            .contestTypeList,
            .contestType(id: "1"),
            
            .contestEffectList,
            .contestEffect(id: "1"),
            
            .superContestEffectList,
            .superContestEffect(id: "1"),
            
            .encounterMethodList,
            .encounterMethod(id: "1"),
            
            .encounterConditionList,
            .encounterCondition(id: "1"),
            
            .encounterConditionValueList,
            .encounterConditionValue(id: "1"),
            
            .evolutionChainList,
            .evolutionChain(id: "1"),
            
            .evolutionTriggerList,
            .evolutionTrigger(id: "1"),
            
            .generationList,
            .generation(id: "1"),
            
            .pokedexList,
            .pokedex(id: "1"),
            
            .versionList,
            .version(id: "1"),
            
            .versionGroupList,
            .versionGroup(id: "1"),
            
            .itemList,
            .item(id: "1"),
            
            .itemAttributeList,
            .itemAttribute(id: "1"),
            
            .itemCategoryList,
            .itemCategory(id: "1"),
            
            .itemFlingEffectList,
            .itemFlingEffect(id: "1"),
            
            .itemPocketList,
            .itemPocket(id: "1"),
            
            .moveList,
            .move(id: "1"),
            
            .moveAilmentList,
            .moveAilment(id: "1"),
            
            .moveBattleStyleList,
            .moveBattleStyle(id: "1"),
            
            .moveCategoryList,
            .moveCategory(id: "1"),
            
            .moveDamageClassList,
            .moveDamageClass(id: "1"),
            
            .moveLearnMethodList,
            .moveLearnMethod(id: "1"),
            
            .moveTargetList,
            .moveTarget(id: "1"),
            
            .locationList,
            .location(id: "1"),
            
            .locationAreaList,
            .locationArea(id: "1"),
            
            .palParkAreaList,
            .palParkArea(id: "1"),
            
            .regionList,
            .region(id: "1"),
            
            .abilityList,
            .ability(id: "1"),
            
            .characteristicList,
            .characteristic(id: "1"),
            
            .eggGroupList,
            .eggGroup(id: "1"),
            
            .genderList,
            .gender(id: "1"),
            
            .growthRateList,
            .growthRate(id: "1"),
            
            .natureList,
            .nature(id: "1"),
            
            .pokeathlonStatList,
            .pokeathlonStat(id: "1"),
            
            .pokemonList,
            .pokemon(id: "1"),
            
            .pokemonColorList,
            .pokemonColor(id: "1"),
            
            .pokemonFormList,
            .pokemonForm(id: "1"),
            
            .pokemonHabitatList,
            .pokemonHabitat(id: "1"),
            
            .pokemonShapeList,
            .pokemonShape(id: "1"),
            
            .pokemonSpeciesList,
            .pokemonSpecies(id: "1"),
            
            .statList,
            .stat(id: "1"),
            
            .typeList,
            .type(id: "1"),
            
            .languageList,
            .language(id: "1"),
        ]
    }
}

extension PokeAPI {
    var type: Any.Type {
        switch self {
        case .berryList: return PKMNamedAPIResourceList.self
        case .berry: return PKMBerry.self
            
        case .berryFirmnessList: return PKMNamedAPIResourceList.self
        case .berryFirmness: return PKMBerryFirmness.self
            
        case .berryFlavorList: return PKMNamedAPIResourceList.self
        case .berryFlavor: return PKMBerryFlavour.self
            
        case .contestTypeList: return PKMNamedAPIResourceList.self
        case .contestType: return PKMContestType.self
            
        case .contestEffectList: return PKMAPIResourceList.self
        case .contestEffect: return PKMContestEffect.self
            
        case .superContestEffectList: return PKMAPIResourceList.self
        case .superContestEffect: return PKMSuperContestEffect.self
            
        case .encounterMethodList: return PKMNamedAPIResourceList.self
        case .encounterMethod: return PKMEncounterMethod.self
            
        case .encounterConditionList: return PKMNamedAPIResourceList.self
        case .encounterCondition: return PKMEncounterCondition.self
            
        case .encounterConditionValueList: return PKMNamedAPIResourceList.self
        case .encounterConditionValue: return PKMEncounterConditionValue.self
            
        case .evolutionChainList: return PKMAPIResourceList.self
        case .evolutionChain: return PKMEvolutionChain.self
            
        case .evolutionTriggerList: return PKMNamedAPIResourceList.self
        case .evolutionTrigger: return PKMEvolutionTrigger.self
            
        case .generationList: return PKMNamedAPIResourceList.self
        case .generation: return PKMGeneration.self
            
        case .pokedexList: return PKMNamedAPIResourceList.self
        case .pokedex: return PKMPokedex.self
            
        case .versionList: return PKMNamedAPIResourceList.self
        case .version: return PKMVersion.self
            
        case .versionGroupList: return PKMNamedAPIResourceList.self
        case .versionGroup: return PKMVersionGroup.self
            
        case .itemList: return PKMNamedAPIResourceList.self
        case .item: return PKMItem.self
            
        case .itemAttributeList: return PKMNamedAPIResourceList.self
        case .itemAttribute: return PKMItemAttribute.self
            
        case .itemCategoryList: return PKMNamedAPIResourceList.self
        case .itemCategory: return PKMItemCategory.self
            
        case .itemFlingEffectList: return PKMNamedAPIResourceList.self
        case .itemFlingEffect: return PKMItemFlingEffect.self
            
        case .itemPocketList: return PKMNamedAPIResourceList.self
        case .itemPocket: return PKMItemPocket.self
            
        case .moveList: return PKMNamedAPIResourceList.self
        case .move: return PKMMove.self
            
        case .moveAilmentList: return PKMNamedAPIResourceList.self
        case .moveAilment: return PKMMoveAilment.self
            
        case .moveBattleStyleList: return PKMNamedAPIResourceList.self
        case .moveBattleStyle: return PKMMoveBattleStyle.self
            
        case .moveCategoryList: return PKMNamedAPIResourceList.self
        case .moveCategory: return PKMMoveCategory.self
            
        case .moveDamageClassList: return PKMNamedAPIResourceList.self
        case .moveDamageClass: return PKMMoveDamageClass.self
            
        case .moveLearnMethodList: return PKMNamedAPIResourceList.self
        case .moveLearnMethod: return PKMMoveLearnMethod.self
            
        case .moveTargetList: return PKMNamedAPIResourceList.self
        case .moveTarget: return PKMMoveTarget.self
            
        case .locationList: return PKMNamedAPIResourceList.self
        case .location: return PKMLocation.self
            
        case .locationAreaList: return PKMNamedAPIResourceList.self
        case .locationArea: return PKMLocationArea.self
            
        case .palParkAreaList: return PKMNamedAPIResourceList.self
        case .palParkArea: return PKMPalParkArea.self
            
        case .regionList: return PKMNamedAPIResourceList.self
        case .region: return PKMRegion.self
            
        case .abilityList: return PKMNamedAPIResourceList.self
        case .ability: return PKMAbility.self
            
        case .characteristicList: return PKMAPIResourceList.self
        case .characteristic: return PKMCharacteristic.self
            
        case .eggGroupList: return PKMNamedAPIResourceList.self
        case .eggGroup: return PKMEggGroup.self
            
        case .genderList: return PKMNamedAPIResourceList.self
        case .gender: return PKMGender.self
            
        case .growthRateList: return PKMNamedAPIResourceList.self
        case .growthRate: return PKMGrowthRate.self
            
        case .natureList: return PKMNamedAPIResourceList.self
        case .nature: return PKMNature.self
            
        case .pokeathlonStatList: return PKMNamedAPIResourceList.self
        case .pokeathlonStat: return PKMPokeathlonStat.self
            
        case .pokemonList: return PKMNamedAPIResourceList.self
        case .pokemon: return PKMPokemon.self
            
        case .pokemonColorList: return PKMNamedAPIResourceList.self
        case .pokemonColor: return PKMPokemonColor.self
            
        case .pokemonFormList: return PKMNamedAPIResourceList.self
        case .pokemonForm: return PKMPokemonForm.self
            
        case .pokemonHabitatList: return PKMNamedAPIResourceList.self
        case .pokemonHabitat: return PKMPokemonHabitat.self
            
        case .pokemonShapeList: return PKMNamedAPIResourceList.self
        case .pokemonShape: return PKMPokemonShape.self
            
        case .pokemonSpeciesList: return PKMNamedAPIResourceList.self
        case .pokemonSpecies: return PKMPokemonSpecies.self
            
        case .statList: return PKMNamedAPIResourceList.self
        case .stat: return PKMStat.self
            
        case .typeList: return PKMNamedAPIResourceList.self
        case .type: return PKMType.self
            
        case .languageList: return PKMNamedAPIResourceList.self
        case .language: return PKMLanguage.self
        }
    }
}

extension PokeAPI {
    var description: String {
        return String(String(describing: self).prefix(while: { $0.isLetter }))
    }
    
    var hasParameter: Bool {
        return !description.contains("List")
    }
}
