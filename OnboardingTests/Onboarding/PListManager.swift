//
//  PListManager.swift
//  OnboardingTests
//
//  Created by thaxz on 31/08/23.
//

import Foundation

protocol PListManager {
    func convert(plist fileName: String) -> [OnboardingItem]
}

struct PListManagerImpl: PListManager{
    
    func convert(plist fileName: String) -> [OnboardingItem] {
        return []
    }
    
    
    
}
