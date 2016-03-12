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
        stub(isHost("pokeapi.co")) { _ in
            // Stub it with our "wsresponse.json" stub file (which is in same bundle as self)
            let stubPath = NSBundle.mainBundle().pathForResource("berry-stub", ofType: "json")
            return fixture(stubPath!, headers: ["Content-Type":"application/json"])
        }
        PokemonKit.fetchBerry("1")
            .then { response  -> Void in
                XCTAssertEqual(response.id, 1, "Should be 1");
                XCTAssertEqual(response.name, "cheri", "Should be cheri");
                XCTAssertEqual(response.growthTime, 3, "Should be 3")
                XCTAssertEqual(response.maxHarvest, 5, "Should be 5")
                XCTAssertEqual(response.naturalGiftPower, 60, "Should be 60");
                XCTAssertEqual(response.size, 20, "Should be 20");
                XCTAssertEqual(response.smoothness, 25, "Should be 25");
                XCTAssertEqual(response.soilDryness, 15, "Should be 15");
                XCTAssertEqual(response.firmness?.name, "soft", "Should be soft");
                XCTAssertEqual(response.firmness?.url, "http://pokeapi.co/api/v2/berry-firmness/2/");
                
                XCTAssertEqual(response.item?.name, "cheri-berry", "Should be soft");
                XCTAssertEqual(response.item?.url, "http://pokeapi.co/api/v2/item/126/");
                XCTAssertEqual(response.naturalGiftType?.name, "fire", "Should be soft");
                XCTAssertEqual(response.naturalGiftType?.url, "http://pokeapi.co/api/v2/type/10/");
                
                XCTAssertEqual(response.flavors?.count, 5)
                
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
        stub(isHost("pokeapi.co")) { _ in
            let stubPath = NSBundle.mainBundle().pathForResource("evolution-stub", ofType: "json")
            return fixture(stubPath!, headers: ["Content-Type":"application/json"])
        }
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
}
