import UIKit
import XCTest
import PokemonKit
import OHHTTPStubs

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        OHHTTPStubs.removeAllStubs()
        super.tearDown()
        
    }
    
    func testFetchingBerries() {
        let asyncExpectation = expectationWithDescription("Fetch berries")
        
        PokemonKit.fetchBerryList()
            .then { response in
                asyncExpectation.fulfill()
            }
            .error{ err in
                XCTFail("Should not failed with \(err)")
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
        
    }
    
    func testFectingBerryInfo() {
        let asyncExpectation = expectationWithDescription("Fetch berries")
        PokemonKit.fetchBerry("1")
            .then { response  -> Void in
                XCTAssertNotNil(response);
                asyncExpectation.fulfill();
            }
            .error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchingEvolution() {
        let asyncExpectation = expectationWithDescription("Fetch Evo Chain")
        PokemonKit.fetchEvolutionChain("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchVersionGroup() {
        let asyncExpectation = expectationWithDescription("Fetch Version Group")
        PokemonKit.fetchVersionGroup("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchitem() {
        let asyncExpectation = expectationWithDescription("Fetch Item")
        PokemonKit.fetchItem("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchitemAttr() {
        let asyncExpectation = expectationWithDescription("Fetch Item Attr")
        PokemonKit.fetchItemAttribute("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchitemCategory() {
        let asyncExpectation = expectationWithDescription("Fetch Item Category")
        PokemonKit.fetchItemCategory("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchitemFlingEffect() {
        let asyncExpectation = expectationWithDescription("Fetch Item Fling Effect")
        PokemonKit.fetchItemFlingEffect("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchItemPocket() {
        let asyncExpectation = expectationWithDescription("Fetch Item Pocket")
        PokemonKit.fetchItemPocket("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchMove() {
        let asyncExpectation = expectationWithDescription("Fetch Move")
        PokemonKit.fetchMove("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchMoveAilment() {
        let asyncExpectation = expectationWithDescription("Fetch Move Ailment")
        PokemonKit.fetchMoveAilment("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchMoveBattleStyle() {
        let asyncExpectation = expectationWithDescription("Fetch Move Battle Style")
        PokemonKit.fetchMoveBattleStyle("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchMoveCategory() {
        let asyncExpectation = expectationWithDescription("Fetch move category")
        PokemonKit.fetchMoveCategory("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchMoveDamageClass() {
        let asyncExpectation = expectationWithDescription("Fetch move damage class")
        PokemonKit.fetchMoveDamageClass("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchMoveLearnMethod() {
        let asyncExpectation = expectationWithDescription("Fetch move learn method")
        PokemonKit.fetchMoveLearnMethod("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchMoveTarget() {
        let asyncExpectation = expectationWithDescription("Fetch move target")
        PokemonKit.fetchMoveTarget("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchLocation() {
        let asyncExpectation = expectationWithDescription("Fetch location")
        PokemonKit.fetchLocation("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchLocationArea() {
        let asyncExpectation = expectationWithDescription("Fetch location area")
        PokemonKit.fetchLocationArea("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchPalPark() {
        let asyncExpectation = expectationWithDescription("Fetch pal park area")
        PokemonKit.fetchPalParkArea("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchRegion() {
        let asyncExpectation = expectationWithDescription("Fetch Region")
        PokemonKit.fetchRegion("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchAbility() {
        let asyncExpectation = expectationWithDescription("Fetch Ability")
        PokemonKit.fetchAbility("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchCharacteristic() {
        let asyncExpectation = expectationWithDescription("Fetch Ability")
        PokemonKit.fetchCharacteristic("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchEggGroup() {
        let asyncExpectation = expectationWithDescription("Fetch Egg Group")
        PokemonKit.fetchEggGroup("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchGender() {
        let asyncExpectation = expectationWithDescription("Fetch Gender")
        PokemonKit.fetchGender("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchGrowthRate() {
        let asyncExpectation = expectationWithDescription("Fetch Growth Rate")
        PokemonKit.fetchGrowthRate("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchNature() {
        let asyncExpectation = expectationWithDescription("Fetch Nature")
        PokemonKit.fetchNature("2")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchPokeathlonStat() {
        let asyncExpectation = expectationWithDescription("Fetch Pokeathlon Stat")
        PokemonKit.fetchPokeathlonStat("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchPokemon() {
        let asyncExpectation = expectationWithDescription("Fetch Pokemon")
        PokemonKit.fetchPokemon("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchPokemonColor() {
        let asyncExpectation = expectationWithDescription("Fetch Pokemon Color")
        PokemonKit.fetchPokemonColor("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchPokemonForm() {
        let asyncExpectation = expectationWithDescription("Fetch Pokemon Form")
        PokemonKit.fetchPokemonForm("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchPokemonHabitat() {
        let asyncExpectation = expectationWithDescription("Fetch Pokemon Habitat")
        PokemonKit.fetchPokemonHabitat("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchPokemonShape() {
        let asyncExpectation = expectationWithDescription("Fetch Pokemon Shape")
        PokemonKit.fetchPokemonShape("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchPokemonSpecies() {
        let asyncExpectation = expectationWithDescription("Fetch Pokemon Species")
        PokemonKit.fetchPokemonSpecies("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchPokemonStat() {
        let asyncExpectation = expectationWithDescription("Fetch Pokemon Stat")
        PokemonKit.fetchStat("2")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testFetchPokemonType() {
        let asyncExpectation = expectationWithDescription("Fetch Pokemon Type")
        PokemonKit.fetchType("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
    
    func testLanguage() {
        let asyncExpectation = expectationWithDescription("Fetch Language")
        PokemonKit.fetchLanguage("1")
            .then{ response -> Void in
                XCTAssertNotNil(response);
                print(response);
                asyncExpectation.fulfill();
            }.error{ err in
                XCTFail("Should not failed with \(err)")
                asyncExpectation.fulfill();
                
        }
        
        self.waitForExpectationsWithTimeout(30) { (err) -> Void in
            XCTAssertNil(err, "Something went wrong")
        }
    }
}
