//
//  File.swift
//  
//
//  Created by Nityananda Zbil on 22.05.20.
//

import XCTest

@testable import PokemonKit

struct AnyResource {
    let getFirstElement: (XCTestExpectation) -> Void
    let getList: (XCTestExpectation, NSMutableString) -> Void
    
    init<T: Decodable & Resource>(_ type: T.Type)
        where T.List: Decodable & HasCount {
            
        self.getFirstElement = { (expectation) in
            type.fetch(id: "1") { (result) in
                switch result {
                case .success:
                    expectation.fulfill()
                case let .failure(error):
                    XCTFail(error.localizedDescription)
                }
            }
        }
        
        self.getList = { (expectation, string) in
            type.fetchList { (result) in
                guard case let .success(list) = result else {
                    XCTFail()
                    return
                }
                
                string.append("\(type) counts \(list.count)\n")
                
                expectation.fulfill()
            }
        }
    }
}

class InternalTests: XCTestCase {
    
    static let allTests = [
        testResources,
        testFirstElements,
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
    
    func testResources() {
        let range =  0..<(resources.count)
        let expectations = range.map { XCTestExpectation(description: "\($0)") }
        
        let string: NSMutableString = ""
        
        for (r, e) in zip(resources, expectations) {
            r.getList(e, string)
        }
        
        wait(for: expectations, timeout: 1.0 * Double(resources.count))
        
        let attachment = XCTAttachment(string: string as String)
        attachment.name = "Resources' Count"
        attachment.lifetime = .keepAlways
        self.add(attachment)
    }
    
    func testFirstElements() {
        let range =  0..<(resources.count)
        let expectations = range.map { XCTestExpectation(description: "\($0)") }
        
        for (r, e) in zip(resources, expectations) {
            r.getFirstElement(e)
        }
        
        wait(for: expectations, timeout: 1.0 * Double(resources.count))
    }
}
