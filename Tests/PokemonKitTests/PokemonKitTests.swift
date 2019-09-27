import XCTest

@testable import PokemonKit

protocol HasError {
    func getError(_ completion: @escaping (Error?) -> Void)
}

struct EraseSuccessId<T>: HasError {
    let id: String
    let fn: (String, (@escaping (Swift.Result<T, Error>) -> Void)) -> Void
    
    func getError(_ completion: @escaping (Error?) -> Void) {
        self.fn(self.id, { (result) in
            do {
                _ = try result.get()
                completion(nil)
            } catch {
                completion(error)
            }
        })
    }
}

struct EraseSuccess<T>: HasError {
    let fn: (@escaping (Swift.Result<T, Error>) -> Void) -> Void
    
    func getError(_ completion: @escaping (Error?) -> Void) {
        self.fn({ (result) in
            do {
                _ = try result.get()
                completion(nil)
            } catch {
                completion(error)
            }
        })
    }
}

final class PokemonKitTests: XCTestCase {
    
    static var allTests = [
        ("testAllParameter", testAllParameter),
        ("testAllLists", testAllLists)
    ]
    
    func testAllParameter() {
        let promises: [HasError] = [
            EraseSuccessId(id: "1", fn: fetchAbility),
            EraseSuccessId(id: "1", fn: fetchBerry),
            EraseSuccessId(id: "1", fn: fetchBerryFirmness),
            EraseSuccessId(id: "1", fn: fetchBerryFlavor),
            EraseSuccessId(id: "1", fn: fetchCharacteristic),
            EraseSuccessId(id: "1", fn: fetchContestEffect),
            EraseSuccessId(id: "1", fn: fetchContestType),
            EraseSuccessId(id: "1", fn: fetchEggGroup),
            EraseSuccessId(id: "1", fn: fetchEncounterCondition),
            EraseSuccessId(id: "1", fn: fetchEncounterConditionValue),
            EraseSuccessId(id: "1", fn: fetchEncounterMethod),
            EraseSuccessId(id: "1", fn: fetchEvolutionChain),
            EraseSuccessId(id: "1", fn: fetchEvolutionTrigger),
            EraseSuccessId(id: "1", fn: fetchGender),
            EraseSuccessId(id: "1", fn: fetchGeneration),
            EraseSuccessId(id: "1", fn: fetchGrowthRate),
            EraseSuccessId(id: "1", fn: fetchItem),
            EraseSuccessId(id: "1", fn: fetchItemAttribute),
            EraseSuccessId(id: "1", fn: fetchItemCategory),
            EraseSuccessId(id: "1", fn: fetchItemFlingEffect),
            EraseSuccessId(id: "1", fn: fetchItemPocket),
            EraseSuccessId(id: "1", fn: fetchLanguage),
            EraseSuccessId(id: "1", fn: fetchLocation),
            EraseSuccessId(id: "1", fn: fetchLocationArea),
            EraseSuccessId(id: "1", fn: fetchMove),
            EraseSuccessId(id: "1", fn: fetchMoveAilment),
            EraseSuccessId(id: "1", fn: fetchMoveBattleStyle),
            EraseSuccessId(id: "1", fn: fetchMoveCategory),
            EraseSuccessId(id: "1", fn: fetchMoveDamageClass),
            EraseSuccessId(id: "1", fn: fetchMoveLearnMethod),
            EraseSuccessId(id: "1", fn: fetchMoveTarget),
            EraseSuccessId(id: "1", fn: fetchNature),
            EraseSuccessId(id: "1", fn: fetchPalParkArea),
            EraseSuccessId(id: "1", fn: fetchPokeathlonStat),
            EraseSuccessId(id: "1", fn: fetchPokedex),
            EraseSuccessId(id: "1", fn: fetchPokemon),
            EraseSuccessId(id: "1", fn: fetchPokemonColor),
            EraseSuccessId(id: "1", fn: fetchPokemonForm),
            EraseSuccessId(id: "1", fn: fetchPokemonHabitat),
            EraseSuccessId(id: "1", fn: fetchPokemonShape),
            EraseSuccessId(id: "1", fn: fetchPokemonSpecies),
            EraseSuccessId(id: "1", fn: fetchRegion),
            EraseSuccessId(id: "1", fn: fetchStat),
            EraseSuccessId(id: "1", fn: fetchSuperContestEffect),
            EraseSuccessId(id: "1", fn: fetchType),
            EraseSuccessId(id: "1", fn: fetchVersion),
            EraseSuccessId(id: "1", fn: fetchVersionGroup),
        ]
        
        let expectations: [XCTestExpectation] = promises.enumerated().map({ (offset, element) in
            let expectation = XCTestExpectation(description: "Parameter \(offset)")
            element.getError { (error) in
                if let error = error {
                    XCTFail("Parameter \(offset) failed: \(error)")
                } else {
                    expectation.fulfill()
                }
            }
            return expectation
        })
        
        wait(for: expectations, timeout: 10.0)
    }
    
    public func testAllLists() {
        let promises: [HasError] = [
            EraseSuccess(fn: fetchAbilityList),
            EraseSuccess(fn: fetchBerryFirmnessList),
            EraseSuccess(fn: fetchBerryFlavorList),
            EraseSuccess(fn: fetchBerryList),
            EraseSuccess(fn: fetchCharacteristicList),
            EraseSuccess(fn: fetchContestEffectList),
            EraseSuccess(fn: fetchContestTypeList),
            EraseSuccess(fn: fetchEggGroupList),
            EraseSuccess(fn: fetchEncounterConditionList),
            EraseSuccess(fn: fetchEncounterConditionValueList),
            EraseSuccess(fn: fetchEncounterMethodList),
            EraseSuccess(fn: fetchEvolutionChainList),
            EraseSuccess(fn: fetchEvolutionTriggerList),
            EraseSuccess(fn: fetchGenderList),
            EraseSuccess(fn: fetchGenerationList),
            EraseSuccess(fn: fetchGrowthRateList),
            EraseSuccess(fn: fetchItemAttributeList),
            EraseSuccess(fn: fetchItemCategoryList),
            EraseSuccess(fn: fetchItemFlingEffectList),
            EraseSuccess(fn: fetchItemList),
            EraseSuccess(fn: fetchItemPocketList),
            EraseSuccess(fn: fetchLanguageList),
            EraseSuccess(fn: fetchLocationAreaList),
            EraseSuccess(fn: fetchLocationList),
            EraseSuccess(fn: fetchMoveAilmentList),
            EraseSuccess(fn: fetchMoveBattleStyleList),
            EraseSuccess(fn: fetchMoveCategoryList),
            EraseSuccess(fn: fetchMoveDamageClassList),
            EraseSuccess(fn: fetchMoveLearnMethodList),
            EraseSuccess(fn: fetchMoveList),
            EraseSuccess(fn: fetchMoveTargetList),
            EraseSuccess(fn: fetchNatureList),
            EraseSuccess(fn: fetchPalParkAreaList),
            EraseSuccess(fn: fetchPokeathlonStatList),
            EraseSuccess(fn: fetchPokedexList),
            EraseSuccess(fn: fetchPokemonColorList),
            EraseSuccess(fn: fetchPokemonFormList),
            EraseSuccess(fn: fetchPokemonHabitatList),
            EraseSuccess(fn: fetchPokemonList),
            EraseSuccess(fn: fetchPokemonShapeList),
            EraseSuccess(fn: fetchPokemonSpeciesList),
            EraseSuccess(fn: fetchRegionList),
            EraseSuccess(fn: fetchStatList),
            EraseSuccess(fn: fetchSuperContestEffectList),
            EraseSuccess(fn: fetchTypeList),
            EraseSuccess(fn: fetchVersionGroupList),
            EraseSuccess(fn: fetchVersionList),
        ]
        
        let expectations: [XCTestExpectation] = promises.enumerated().map({ (offset, element) in
            let expectation = XCTestExpectation(description: "List \(offset)")
            element.getError { (error) in
                if let error = error {
                    XCTFail("List \(offset) failed: \(error)")
                } else {
                    expectation.fulfill()
                }
            }
            return expectation
        })
        
        wait(for: expectations, timeout: 10.0)
    }
}
