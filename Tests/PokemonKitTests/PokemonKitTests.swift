//
//  File.swift
//  
//
//  Created by Nityananda Zbil on 22.05.20.
//

import XCTest

@testable import PokemonKit

struct AnyResource {
    let function: (XCTestExpectation) -> Void
    
    init<T: Decodable & Resource>(
        _ type: T.Type,
        testResources: Bool = false) where T.List: Decodable & HasCount {

//        let waiter = XCTWaiter()
        
        self.function = { (expectation) in
            type.fetchCount { (result) in
                
                guard case let .success(count) = result else {
                    XCTFail()
                    return
                }
                
                print("\(type) counts \(count)")
                
//                guard count > 0 && testResources else {
//                    expectation.fulfill()
//                    return
//                }
//
//                let expectations = (1...count).map { (index) in
//                    XCTestExpectation(description: "\(type) at \(index)")
//                }
//
//                for (ix, ex) in zip(1...count, expectations) {
//
//                    type.fetch(id: String(ix)) { (result) in
//                        switch result {
//                        case .success:
//                            ex.fulfill()
//                        case let .failure(error):
//                            XCTFail(error.localizedDescription)
//                        }
//                    }
//
//                }
//
//                waiter.wait(for: expectations, timeout: 5.0)
                expectation.fulfill()
            }
        }
    }
}

class PokemonKitTests: XCTestCase {
    
    static let allTests = [
        testResources,
    ]
    
    let resources: [AnyResource] = [
        AnyResource(PKMAbility.self),
        AnyResource(PKMBerry.self),
        AnyResource(PKMBerryFirmness.self),
        AnyResource(PKMBerryFlavour.self),
        AnyResource(PKMCharacteristic.self),
        AnyResource(PKMContestEffect.self),
        AnyResource(PKMContestType.self),
        AnyResource(PKMEggGroup.self),
        AnyResource(PKMEncounterCondition.self),
        AnyResource(PKMEncounterConditionValue.self),
        AnyResource(PKMEncounterMethod.self),
        AnyResource(PKMEvolutionChain.self),
        AnyResource(PKMEvolutionTrigger.self),
        AnyResource(PKMGender.self),
        AnyResource(PKMGeneration.self),
        AnyResource(PKMGrowthRate.self),
        AnyResource(PKMItem.self),
        AnyResource(PKMItemAttribute.self),
        AnyResource(PKMItemCategory.self),
        AnyResource(PKMItemFlingEffect.self),
        AnyResource(PKMItemPocket.self),
        AnyResource(PKMLanguage.self),
        AnyResource(PKMLocation.self),
        AnyResource(PKMLocationArea.self),
        AnyResource(PKMMove.self),
        AnyResource(PKMMoveAilment.self),
        AnyResource(PKMMoveBattleStyle.self),
        AnyResource(PKMMoveCategory.self),
        AnyResource(PKMMoveDamageClass.self),
        AnyResource(PKMMoveLearnMethod.self),
        AnyResource(PKMMoveTarget.self),
        AnyResource(PKMNature.self),
        AnyResource(PKMPalParkArea.self),
        AnyResource(PKMPokeathlonStat.self),
        AnyResource(PKMPokedex.self),
        AnyResource(PKMPokemon.self),
        AnyResource(PKMPokemonColor.self),
        AnyResource(PKMPokemonForm.self),
        AnyResource(PKMPokemonHabitat.self),
        AnyResource(PKMPokemonShape.self),
        AnyResource(PKMPokemonSpecies.self),
        AnyResource(PKMRegion.self),
        AnyResource(PKMStat.self),
        AnyResource(PKMSuperContestEffect.self),
        AnyResource(PKMType.self),
        AnyResource(PKMVersion.self),
        AnyResource(PKMVersionGroup.self),
    ]
    
    /// This test case should target a local server for testing.
    /// The official API should not be stressed.
    override class func setUp() {
        super.setUp()
        
        PokemonKit._baseURL = "http://127.0.0.1:8000/api/v2"
    }
    
    
    /// Decode counts of all resources.
    /// Implicitly tests decoding the resource list of every type.
    func testResources() {
        let range =  0..<(resources.count)
        let expectations = range.map { XCTestExpectation(description: "\($0)") }
        
        for (r, e) in zip(resources, expectations) {
            r.function(e)
        }
        
        wait(for: expectations, timeout: 470.0)
    }
    
}

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
