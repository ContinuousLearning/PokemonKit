//
//  File.swift
//  
//
//  Created by Nityananda Zbil on 26.06.20.
//

import XCTest
import PokemonKit

class READMETests: XCTestCase {
    
    static let allTests = [
        testREADME,
    ]
    
    /// Tests code displayed in README.
    func testREADME() {
        let expectation = XCTestExpectation()
        
        PKMBerry.fetch(id: "1") { (result) in
            if case let .success(berry) = result {
                print(berry.name)
                expectation.fulfill()
            }
        }
        
        wait(for: [expectation], timeout: 3.0)
    }
}
