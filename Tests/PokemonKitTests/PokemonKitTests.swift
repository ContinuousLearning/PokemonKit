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
            EraseSuccessId(id: "1", fn: fetchBerry),
            EraseSuccessId(id: "1", fn: fetchBerryFirmness),
            EraseSuccessId(id: "1", fn: fetchBerryFlavour),
            EraseSuccessId(id: "1", fn: fetchContestType),
            EraseSuccessId(id: "1", fn: fetchContestEffect),
            EraseSuccessId(id: "1", fn: fetchSuperContestEffect),
            EraseSuccessId(id: "1", fn: fetchEncounterMethod),
            EraseSuccessId(id: "1", fn: fetchEncounterCondition),
            EraseSuccessId(id: "1", fn: fetchEncounterConditionValue),
            EraseSuccessId(id: "1", fn: fetchEvolutionChain),
            EraseSuccessId(id: "1", fn: fetchEvolutionTrigger),
            EraseSuccessId(id: "1", fn: fetchGeneration),
            EraseSuccessId(id: "1", fn: fetchPokedex),
            EraseSuccessId(id: "1", fn: fetchVersion),
            EraseSuccessId(id: "1", fn: fetchVersionGroup),
            EraseSuccessId(id: "1", fn: fetchItem),
            EraseSuccessId(id: "1", fn: fetchItemAttribute),
            EraseSuccessId(id: "1", fn: fetchItemCategory),
            EraseSuccessId(id: "1", fn: fetchItemFlingEffect),
            EraseSuccessId(id: "1", fn: fetchItemPocket),
            EraseSuccessId(id: "1", fn: fetchMove),
            EraseSuccessId(id: "1", fn: fetchMoveAilment),
            EraseSuccessId(id: "1", fn: fetchMoveBattleStyle),
            EraseSuccessId(id: "1", fn: fetchMoveCategory),
            EraseSuccessId(id: "1", fn: fetchMoveDamageClass),
            EraseSuccessId(id: "1", fn: fetchMoveLearnMethod),
            EraseSuccessId(id: "1", fn: fetchMoveTarget),
            EraseSuccessId(id: "1", fn: fetchLocation),
            EraseSuccessId(id: "1", fn: fetchLocationArea),
            EraseSuccessId(id: "1", fn: fetchPalParkArea),
            EraseSuccessId(id: "1", fn: fetchRegion),
            EraseSuccessId(id: "1", fn: fetchAbility),
            EraseSuccessId(id: "1", fn: fetchCharacteristic),
            EraseSuccessId(id: "1", fn: fetchEggGroup),
            EraseSuccessId(id: "1", fn: fetchGender),
            EraseSuccessId(id: "1", fn: fetchGrowthRate),
            EraseSuccessId(id: "1", fn: fetchNature),
            EraseSuccessId(id: "1", fn: fetchPokeathlonStat),
            EraseSuccessId(id: "1", fn: fetchPokemon),
            EraseSuccessId(id: "1", fn: fetchPokemonColor),
            EraseSuccessId(id: "1", fn: fetchPokemonForm),
            EraseSuccessId(id: "1", fn: fetchPokemonHabitat),
            EraseSuccessId(id: "1", fn: fetchPokemonShape),
            EraseSuccessId(id: "1", fn: fetchPokemonSpecies),
            EraseSuccessId(id: "1", fn: fetchStat),
            EraseSuccessId(id: "1", fn: fetchType),
            EraseSuccessId(id: "1", fn: fetchLanguage),
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
            EraseSuccess(fn: fetchBerryList),
            EraseSuccess(fn: fetchBerryFirmnessList),
            EraseSuccess(fn: fetchBerryFlavours),
            EraseSuccess(fn: fetchContestList),
            EraseSuccess(fn: fetchContestEffects),
            EraseSuccess(fn: fetchSuperContestEffects),
            EraseSuccess(fn: fetchEncounterMethods),
            EraseSuccess(fn: fetchEncounterConditions),
            EraseSuccess(fn: fetchEncounterConditionValues),
            EraseSuccess(fn: fetchEvolutionChains),
            EraseSuccess(fn: fetchEvolutionTriggers),
            EraseSuccess(fn: fetchGenerations),
            EraseSuccess(fn: fetchPokedexes),
            EraseSuccess(fn: fetchVersions),
            EraseSuccess(fn: fetchVersionGroups),
            EraseSuccess(fn: fetchItems),
            EraseSuccess(fn: fetchItemAttributes),
            EraseSuccess(fn: fetchItemCategories),
            EraseSuccess(fn: fetchItemFlingEffects),
            EraseSuccess(fn: fetchItemPockets),
            EraseSuccess(fn: fetchMoves),
            EraseSuccess(fn: fetchMoveAilments),
            EraseSuccess(fn: fetchMoveBattleStyles),
            EraseSuccess(fn: fetchMoveCategories),
            EraseSuccess(fn: fetchMoveDamageClasses),
            EraseSuccess(fn: fetchMoveLearnMethods),
            EraseSuccess(fn: fetchMoveTargets),
            EraseSuccess(fn: fetchLocations),
            EraseSuccess(fn: fetchLocationAreas),
            EraseSuccess(fn: fetchPalParkAreas),
            EraseSuccess(fn: fetchRegions),
            EraseSuccess(fn: fetchAbilities),
            EraseSuccess(fn: fetchCharacteristics),
            EraseSuccess(fn: fetchEggGroupList),
            EraseSuccess(fn: fetchGenders),
            EraseSuccess(fn: fetchGrowthRates),
            EraseSuccess(fn: fetchNatures),
            EraseSuccess(fn: fetchPokeathlonStats),
            EraseSuccess(fn: fetchPokemons),
            EraseSuccess(fn: fetchPokemonColors),
            EraseSuccess(fn: fetchPokemonForms),
            EraseSuccess(fn: fetchPokemonHabitats),
            EraseSuccess(fn: fetchPokemonShapes),
            EraseSuccess(fn: fetchPokemonSpeciesList),
            EraseSuccess(fn: fetchStats),
            EraseSuccess(fn: fetchTypeList),
            EraseSuccess(fn: fetchLanguages),
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
