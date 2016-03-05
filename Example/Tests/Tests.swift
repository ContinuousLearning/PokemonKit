import UIKit
import XCTest
import PokemonKit

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
