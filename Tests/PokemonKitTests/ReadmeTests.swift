//
//  File.swift
//  
//
//  Created by Nityananda Zbil on 26.06.20.
//

import XCTest
import PokemonKit
import Combine

class READMETests: XCTestCase {
    
    static let allTests = [
        testExample1,
    ]
    
    func testExample1() {
        let expectation = XCTestExpectation()
        
        Berry.fetch(id: "1") { (result) in
            if case let .success(berry) = result {
                print(berry.name)
                expectation.fulfill()
            }
        }
        
        wait(for: [expectation], timeout: 3.0)
    }

    @available(OSX 10.15, *)
    func testExample2() {
        let expectation = XCTestExpectation()
        var disposables = Set<AnyCancellable>()
        
        let favoriteVersion = Future(Version.fetch(id: "alpha-sapphire"))
        _ = Future({ c in Version.fetch(id: "alpha-sapphire", completion: c)})
//        favoriteVersion.subscribe(...)
        
        favoriteVersion.sink(receiveCompletion: { (completion) in
            switch completion {
            case .finished:
                print("Finished")
            case let .failure(error):
                print(error)
            }
            expectation.fulfill()
            
        }) { (version) in
            print(version.versionGroup.name)
        }.store(in: &disposables)
        
        wait(for: [expectation], timeout: 3.0)
    }
}
