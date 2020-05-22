//
//  File.swift
//  
//
//  Created by Nityananda Zbil on 22.05.20.
//

import XCTest

@testable import PokemonKit

class _PokemonKitTests: XCTestCase {

    typealias Signature = (@escaping (Result<Int, Error>) -> Void) -> ()
    
    let list: [Signature] = [
        PKMAbility.fetchCount,
        PKMBerry.fetchCount,
        PKMBerryFirmness.fetchCount,
        PKMBerryFlavour.fetchCount,
        PKMCharacteristic.fetchCount,
        PKMContestEffect.fetchCount,
        PKMContestType.fetchCount,
        PKMEggGroup.fetchCount,
        PKMEncounterCondition.fetchCount,
        PKMEncounterConditionValue.fetchCount,
        PKMEncounterMethod.fetchCount,
        PKMEvolutionChain.fetchCount,
        PKMEvolutionTrigger.fetchCount,
        PKMGender.fetchCount,
        PKMGeneration.fetchCount,
        PKMGrowthRate.fetchCount,
        PKMItem.fetchCount,
        PKMItemAttribute.fetchCount,
        PKMItemCategory.fetchCount,
        PKMItemFlingEffect.fetchCount,
        PKMItemPocket.fetchCount,
        PKMLanguage.fetchCount,
        PKMLocation.fetchCount,
        PKMLocationArea.fetchCount,
        PKMMove.fetchCount,
        PKMMoveAilment.fetchCount,
        PKMMoveBattleStyle.fetchCount,
        PKMMoveCategory.fetchCount,
        PKMMoveDamageClass.fetchCount,
        PKMMoveLearnMethod.fetchCount,
        PKMMoveTarget.fetchCount,
        PKMNature.fetchCount,
        PKMPalParkArea.fetchCount,
        PKMPokeathlonStat.fetchCount,
        PKMPokedex.fetchCount,
        PKMPokemon.fetchCount,
        PKMPokemonColor.fetchCount,
        PKMPokemonForm.fetchCount,
        PKMPokemonHabitat.fetchCount,
        PKMPokemonShape.fetchCount,
        PKMPokemonSpecies.fetchCount,
        PKMRegion.fetchCount,
        PKMStat.fetchCount,
        PKMSuperContestEffect.fetchCount,
        PKMType.fetchCount,
        PKMVersion.fetchCount,
        PKMVersionGroup.fetchCount,
    ]
    
    override class func setUp() {
        super.setUp()
        
        PokemonKit._baseURL = "http://127.0.0.1:8000/api/v2"
    }
    
    
    /// Decode all count of all resources.
    /// Implicitly tests decoding the resource list of every type.
    func testListCount() {
        let expectations: [XCTestExpectation] = list.enumerated().map({ (offset, element) in
            let expectation = XCTestExpectation(description: "List \(offset)")
            
            element { (result) in
                switch result {
                case let .success(count):
                    print("List \(offset) counts \(count)")
                    expectation.fulfill()
                case let .failure(error):
                    XCTFail(error.localizedDescription)
                }
            }
            
            return expectation
        })
        
        wait(for: expectations, timeout: 5.0)
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
