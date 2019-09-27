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
            /*
            fetchBerry("1").asVoid(),
            fetchBerryFirmness("1").asVoid(),
            fetchBerryFlavour("1").asVoid(),
            fetchContestType("1").asVoid(),
            fetchContestEffect("1").asVoid(),
            fetchSuperContestEffect("1").asVoid(),
            fetchEncounterMethod("1").asVoid(),
            fetchEncounterCondition("1").asVoid(),
            fetchEncounterConditionValue("1").asVoid(),
            fetchEvolutionChain("1").asVoid(),
            fetchEvolutionTrigger("1").asVoid(),
            fetchGeneration("1").asVoid(),
            fetchPokedex("1").asVoid(),
            fetchVersion("1").asVoid(),
            fetchVersionGroup("1").asVoid(),
            fetchItem("1").asVoid(),
            fetchItemAttribute("1").asVoid(),
            fetchItemCategory("1").asVoid(),
            fetchItemFlingEffect("1").asVoid(),
            fetchItemPocket("1").asVoid(),
            fetchMove("1").asVoid(),
            fetchMoveAilment("1").asVoid(),
            fetchMoveBattleStyle("1").asVoid(),
            fetchMoveCategory("1").asVoid(),
            fetchMoveDamageClass("1").asVoid(),
            fetchMoveLearnMethod("1").asVoid(),
            fetchMoveTarget("1").asVoid(),
            fetchLocation("1").asVoid(),
            fetchLocationArea("1").asVoid(),
            fetchPalParkArea("1").asVoid(),
            fetchRegion("1").asVoid(),
            fetchAbility("1").asVoid(),
            fetchCharacteristic("1").asVoid(),
            fetchEggGroup("1").asVoid(),
            fetchGender("1").asVoid(),
            fetchGrowthRate("1").asVoid(),
            fetchNature("1").asVoid(),
            fetchPokeathlonStat("1").asVoid(),
            fetchPokemon("1").asVoid(),
            fetchPokemonColor("1").asVoid(),
            fetchPokemonForm("1").asVoid(),
            fetchPokemonHabitat("1").asVoid(),
            fetchPokemonShape("1").asVoid(),
            fetchPokemonSpecies("1").asVoid(),
            fetchStat("1").asVoid(),
            fetchType("1").asVoid(),
            fetchLanguage("1").asVoid(),
            */
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
        let promises: [Promise<Void>] = [
            /*
            fetchBerryList().asVoid(),
            fetchBerryFirmnessList().asVoid(),
            fetchBerryFlavours().asVoid(),
            fetchContestList().asVoid(),
            fetchContestEffects().asVoid(),
            fetchSuperContestEffects().asVoid(),
            fetchEncounterMethods().asVoid(),
            fetchEncounterConditions().asVoid(),
            fetchEncounterConditionValues().asVoid(),
            fetchEvolutionChains().asVoid(),
            fetchEvolutionTriggers().asVoid(),
            fetchGenerations().asVoid(),
            fetchPokedexes().asVoid(),
            fetchVersions().asVoid(),
            fetchVersionGroups().asVoid(),
            fetchItems().asVoid(),
            fetchItemAttributes().asVoid(),
            fetchItemCategories().asVoid(),
            fetchItemFlingEffects().asVoid(),
            fetchItemPockets().asVoid(),
            fetchMoves().asVoid(),
            fetchMoveAilments().asVoid(),
            fetchMoveBattleStyles().asVoid(),
            fetchMoveCategories().asVoid(),
            fetchMoveDamageClasses().asVoid(),
            fetchMoveLearnMethods().asVoid(),
            fetchMoveTargets().asVoid(),
            fetchLocations().asVoid(),
            fetchLocationAreas().asVoid(),
            fetchPalParkAreas().asVoid(),
            fetchRegions().asVoid(),
            fetchAbilities().asVoid(),
            fetchCharacteristics().asVoid(),
            fetchEggGroup().asVoid(),
            fetchGenders().asVoid(),
            fetchGrowthRates().asVoid(),
            fetchNatures().asVoid(),
            fetchPokeathlonStats().asVoid(),
            fetchPokemons().asVoid(),
            fetchPokemonColors().asVoid(),
            fetchPokemonForms().asVoid(),
            fetchPokemonHabitats().asVoid(),
            fetchPokemonShapes().asVoid(),
            fetchPokemonSpecies().asVoid(),
            fetchStats().asVoid(),
            fetchType().asVoid(),
            fetchLanguages().asVoid(),
            */
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
