//
//  File.swift
//  
//
//  Created by Nityananda Zbil on 22.05.20.
//

import XCTest

@testable import PokemonKit

class _PokemonKitTests: XCTestCase {
    
    override class func setUp() {
        super.setUp()
        
        PokemonKit._baseURL = "http://127.0.0.1:8000/api/v2"
    }
    
    func testList() {
        let expectation = XCTestExpectation(description: "List")
        
        PKMPokemon.fetchList { (result) in
            switch result {
            case .success(let list):
                guard let string = list.results.first?.url,
                    let url = URL(string: string) else { return }
                print(url.lastPathComponent)
                expectation.fulfill()
            case .failure(let error):
                return
            }
        }
        
        wait(for: [expectation], timeout: 10.0)
    }
    
    func testParameter() {
        let expectation = XCTestExpectation(description: "List")
        
        PKMPokemon.fetch(id: "1") { (result) in
            switch result {
            case .success(let response):
                expectation.fulfill()
            case .failure(let error):
                return
            }
        }
        
        wait(for: [expectation], timeout: 10.0)
    }
}
