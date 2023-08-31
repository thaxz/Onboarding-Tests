//
//  OnboardingScreenView.swift
//  OnboardingTests
//
//  Created by thaxz on 31/08/23.
//

import SwiftUI

struct OnboardingScreenView: View {
    let manager: OnboardingContentManager
    @State private var selected = 0
    var body: some View {
        TabView(selection: $selected){
            ForEach(manager.items.indices) { index in
                OnboardingView(item: manager.items[index], limit: manager.limit, index: $selected)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct OnboardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreenView(manager: OnboardingContentManagerImpl(manager: PListManagerImpl()))
    }
}
