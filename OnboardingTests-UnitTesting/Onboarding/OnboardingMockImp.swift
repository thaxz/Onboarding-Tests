//
//  OnboardingMockImp.swift
//  OnboardingTests-UnitTesting
//
//  Created by thaxz on 01/09/23.
//

import Foundation
@testable import OnboardingTests

class OnboardingMockImp: OnboardingContentManager {
    
    var limit: Int {
        items.count - 1
    }
    
    var items: [OnboardingItem]
    
    required init(manager: PListManager) {
        self.items = manager.convert(plist: "WaterPokemonBest")
    }
}
