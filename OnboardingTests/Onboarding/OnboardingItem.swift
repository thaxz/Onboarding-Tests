//
//  OnboardingItem.swift
//  OnboardingTests
//
//  Created by thaxz on 31/08/23.
//

import Foundation

struct OnboardingItem: Identifiable, Codable {
    var id = UUID()
    var title: String?
    var content: String?
    var sfSymbol: String?
    
    enum CodingKeys: String, CodingKey {
        case title, content, sfSymbol
    }
    
    init(title: String? = nil, content: String? = nil, sfSymbol: String? = nil){
        self.title = title
        self.content = content
        self.sfSymbol = sfSymbol
    }
    
    init(from decoder: Decoder) throws {
        do {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.title = try container.decodeIfPresent(String.self, forKey: .title)
            self.content = try container.decodeIfPresent(String.self, forKey: .content)
            self.sfSymbol = try container.decodeIfPresent(String.self, forKey: .sfSymbol)
        } catch {
          print(error)
        }
    }
}
