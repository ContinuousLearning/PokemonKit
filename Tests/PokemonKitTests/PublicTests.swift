//
//  File.swift
//  
//
//  Created by Nityananda Zbil on 26.06.20.
//

import XCTest
import PokemonKit

class PublicTests: XCTestCase {
    
    static let allTests = [
        testTriggerError,
    ]
    
    func testTriggerError() {
        let expectation = XCTestExpectation()
        
        PKMPokemon.fetch(id: "0") { result in
            do {
                _ = try result.get()
            } catch {
                let attachment = XCTAttachment(string: error.localizedDescription)
                attachment.name = "Localized Error Description"
                attachment.lifetime = .keepAlways
                self.add(attachment)
                
                expectation.fulfill()
            }
        }
        
        wait(for: [expectation], timeout: 3.0)
    }
}
