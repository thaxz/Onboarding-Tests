//
//  OnboardingScreenView.swift
//  OnboardingTests
//
//  Created by thaxz on 31/08/23.
//

import SwiftUI

struct OnboardingScreenView: View {
    var body: some View {
        TabView{
            OnboardingView(item: OnboardingItem(title: "Dummy", content: "Dummy Content", sfSymbol: "heart.fill")).tag(0)
            OnboardingView(item: OnboardingItem(title: "Dummy", content: "Dummy Content", sfSymbol: "heart")).tag(1)
            OnboardingView(item: OnboardingItem(title: "Dummy", content: "Dummy Content", sfSymbol: "heart.fill")).tag(2)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct OnboardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingScreenView()
    }
}
