//
//  OnboardingTests.swift
//  OnboardingTests-UnitTesting
//
//  Created by thaxz on 01/09/23.
//

import Foundation
import XCTest

@testable import OnboardingTests

class OnboardingTests: XCTestCase {
    
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
    
    func test_succefull_onboarding_decoding(){
        let contentManager = OnboardingContentManagerImpl(manager: manager)
        XCTAssertEqual(contentManager.items.count, 4)
    }
    
    
}
