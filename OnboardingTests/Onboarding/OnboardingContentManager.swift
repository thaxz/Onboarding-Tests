//
//  OnboardingContentManager.swift
//  OnboardingTests
//
//  Created by thaxz on 31/08/23.
//

import Foundation

protocol OnboardingContentManager {
    var limit: Int {get}
    var items: [OnboardingItem] {get}
    init(manager: PListManager )
}

final class OnboardingContentManagerImpl: OnboardingContentManager {
    var limit: Int {
        items.count - 1
    }
    var items: [OnboardingItem]
    
    init(manager: PListManager) {
        self.items = manager.convert(plist: "OnboardingContent")
    }
}
