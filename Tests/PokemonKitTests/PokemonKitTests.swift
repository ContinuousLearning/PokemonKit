import XCTest
import PromiseKit

@testable import PokemonKit

final class PokemonKitTests: XCTestCase {
    
    static var allTests = [
        ("testAllParameter", testAllParameter),
        ("testAllLists", testAllLists)
    ]
    
    func testAllParameter() {
        let promises: [Promise<Void>] = [
            hide(fetchBerry("1")),
            hide(fetchBerryFirmness("1")),
            hide(fetchBerryFlavour("1")),
            hide(fetchContestType("1")),
            hide(fetchContestEffect("1")),
            hide(fetchSuperContestEffect("1")),
            hide(fetchEncounterMethod("1")),
            hide(fetchEncounterCondition("1")),
            hide(fetchEncounterConditionValue("1")),
            hide(fetchEvolutionChain("1")),
            hide(fetchEvolutionTrigger("1")),
            hide(fetchGeneration("1")),
            hide(fetchPokedex("1")),
            hide(fetchVersion("1")),
            hide(fetchVersionGroup("1")),
            hide(fetchItem("1")),
            hide(fetchItemAttribute("1")),
            hide(fetchItemCategory("1")),
            hide(fetchItemFlingEffect("1")),
            hide(fetchItemPocket("1")),
            hide(fetchMove("1")),
            hide(fetchMoveAilment("1")),
            hide(fetchMoveBattleStyle("1")),
            hide(fetchMoveCategory("1")),
            hide(fetchMoveDamageClass("1")),
            hide(fetchMoveLearnMethod("1")),
            hide(fetchMoveTarget("1")),
            hide(fetchLocation("1")),
            hide(fetchLocationArea("1")),
            hide(fetchPalParkArea("1")),
            hide(fetchRegion("1")),
            hide(fetchAbility("1")),
            hide(fetchCharacteristic("1")),
            hide(fetchEggGroup("1")),
            hide(fetchGender("1")),
            hide(fetchGrowthRate("1")),
            hide(fetchNature("1")),
            hide(fetchPokeathlonStat("1")),
            hide(fetchPokemon("1")),
            hide(fetchPokemonColor("1")),
            hide(fetchPokemonForm("1")),
            hide(fetchPokemonHabitat("1")),
            hide(fetchPokemonShape("1")),
            hide(fetchPokemonSpecies("1")),
            hide(fetchStat("1")),
            hide(fetchType("1")),
            hide(fetchLanguage("1")),
        ]
        
        let expectations: [XCTestExpectation] = promises.enumerated().map { (tuple) in
            let expectation = XCTestExpectation(description: "Parameter \(tuple.offset)")
            
            tuple.element.done({ (_) in
                expectation.fulfill()
            }).catch({ (error) in
                XCTFail("Parameter \(tuple.offset) failed: \(error)")
            })
            
            return expectation
        }
        
        wait(for: expectations, timeout: 10.0)
    }
    
    public func testAllLists() {
        print("testAllLists")
        let promises: [Promise<Void>] = [
            hide(fetchBerryList()),
            hide(fetchBerryFirmnessList()),
            hide(fetchBerryFlavours()),
            hide(fetchContestList()),
            hide(fetchContestEffects()),
            hide(fetchSuperContestEffects()),
            hide(fetchEncounterMethods()),
            hide(fetchEncounterConditions()),
            hide(fetchEncounterConditionValues()),
            hide(fetchEvolutionChains()),
            hide(fetchEvolutionTriggers()),
            hide(fetchGenerations()),
            hide(fetchPokedexes()),
            hide(fetchVersions()),
            hide(fetchVersionGroups()),
            hide(fetchItems()),
            hide(fetchItemAttributes()),
            hide(fetchItemCategories()),
            hide(fetchItemFlingEffects()),
            hide(fetchItemPockets()),
            hide(fetchMoves()),
            hide(fetchMoveAilments()),
            hide(fetchMoveBattleStyles()),
            hide(fetchMoveCategories()),
            hide(fetchMoveDamageClasses()),
            hide(fetchMoveLearnMethods()),
            hide(fetchMoveTargets()),
            hide(fetchLocations()),
            hide(fetchLocationAreas()),
            hide(fetchPalParkAreas()),
            hide(fetchRegions()),
            hide(fetchAbilities()),
            hide(fetchCharacteristics()),
            hide(fetchEggGroup()),
            hide(fetchGenders()),
            hide(fetchGrowthRates()),
            hide(fetchNatures()),
            hide(fetchPokeathlonStats()),
            hide(fetchPokemons()),
            hide(fetchPokemonColors()),
            hide(fetchPokemonForms()),
            hide(fetchPokemonHabitats()),
            hide(fetchPokemonShapes()),
            hide(fetchPokemonSpecies()),
            hide(fetchStats()),
            hide(fetchType()),
            hide(fetchLanguages()),
        ]
        
        let expectations: [XCTestExpectation] = promises.enumerated().map { (tuple) in
            let expectation = XCTestExpectation(description: "List \(tuple.offset)")
            
            tuple.element.done({ (_) in
                expectation.fulfill()
            }).catch({ (error) in
                XCTFail("List \(tuple.offset) failed: \(error)")
            })
            
            return expectation
        }
        
        wait(for: expectations, timeout: 10.0)
    }
}
