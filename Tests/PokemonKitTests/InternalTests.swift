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
        AnyResource(Ability.self),
        AnyResource(Berry.self),
        AnyResource(BerryFirmness.self),
        AnyResource(BerryFlavour.self),
        AnyResource(Characteristic.self),
        AnyResource(ContestEffect.self),
        AnyResource(ContestType.self),
        AnyResource(EggGroup.self),
        AnyResource(EncounterCondition.self),
        AnyResource(EncounterConditionValue.self),
        AnyResource(EncounterMethod.self),
        AnyResource(EvolutionChain.self),
        AnyResource(EvolutionTrigger.self),
        AnyResource(Gender.self),
        AnyResource(Generation.self),
        AnyResource(GrowthRate.self),
        AnyResource(Item.self),
        AnyResource(ItemAttribute.self),
        AnyResource(ItemCategory.self),
        AnyResource(ItemFlingEffect.self),
        AnyResource(ItemPocket.self),
        AnyResource(Language.self),
        AnyResource(Location.self),
        AnyResource(LocationArea.self),
        AnyResource(Move.self),
        AnyResource(MoveAilment.self),
        AnyResource(MoveBattleStyle.self),
        AnyResource(MoveCategory.self),
        AnyResource(MoveDamageClass.self),
        AnyResource(MoveLearnMethod.self),
        AnyResource(MoveTarget.self),
        AnyResource(Nature.self),
        AnyResource(PalParkArea.self),
        AnyResource(PokeathlonStat.self),
        AnyResource(Pokedex.self),
        AnyResource(Pokemon.self),
        AnyResource(PokemonColor.self),
        AnyResource(PokemonForm.self),
        AnyResource(PokemonHabitat.self),
        AnyResource(PokemonShape.self),
        AnyResource(PokemonSpecies.self),
        AnyResource(Region.self),
        AnyResource(Stat.self),
        AnyResource(SuperContestEffect.self),
        AnyResource(Type.self),
        AnyResource(Version.self),
        AnyResource(VersionGroup.self),
    ]
    
    /// This test case should target a local server for testing.
    /// The official API should not be stressed.
    override class func setUp() {
        super.setUp()
        
        PokemonKit.baseURL = "http://127.0.0.1:8000/api/v2"
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
