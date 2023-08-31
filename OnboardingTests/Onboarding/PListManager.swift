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
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "plist"),
              let data = try? Data(contentsOf: url),
              let items = try? PropertyListDecoder().decode([OnboardingItem].self, from: data) else {
            return []
        }
        return items
    }
    
    
    
}
