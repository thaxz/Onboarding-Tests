//
//  PListTests.swift
//  OnboardingTests-UnitTesting
//
//  Created by thaxz on 31/08/23.
//

import XCTest
@testable import OnboardingTests

class PlistTests: XCTestCase {
    
    // SUP: System Under Tests
    private var manager: PListManagerImpl!
    
    //Called before each function
    override func setUpWithError() throws {
        manager = PListManagerImpl()
    }
    //Called after each function
    override func tearDownWithError() throws {
        manager = nil
    }
    
    func test_succefull_decoding_onboarding_plist(){
        XCTAssertEqual(manager.convert(plist: "OnboardingContent").count, 4)
    }
    
    func test_unsuccefull_decoding_onboarding_plist(){
        XCTAssertEqual(manager.convert(plist: "TaylorSwfift").count, 0)
    }
    
}
