//
//  OnboardingView.swift
//  OnboardingTests
//
//  Created by thaxz on 31/08/23.
//

import SwiftUI

typealias OnboardingGetStartedAction = () -> Void

struct OnboardingView: View {
    
    @Environment(\.presentationMode) private var presentationMode
    
    let item: OnboardingItem
    
    let limit: Int
    let handler: OnboardingGetStartedAction
    @Binding var index: Int
    
    init(item: OnboardingItem, limit: Int, index: Binding<Int>, handler: @escaping OnboardingGetStartedAction) {
        self.item = item
        self.limit = limit
        self._index = index
        self.handler = handler
    }
    
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: item.sfSymbol ?? "")
                .padding(.bottom, 50)
                .font(.system(size: 120, weight: .bold))
            Text(item.title ?? "")
                .font(.system(size: 32, weight: .bold))
                .multilineTextAlignment(.center)
                .padding(.bottom, 2)
                .foregroundColor(.black)
            Text(item.content ?? "")
                .font(.system(size: 12, weight: .regular))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 50)
                .foregroundColor(.gray)
            Button("Get Started") {
                presentationMode.wrappedValue.dismiss()
                handler()
            }
            .buttonStyle(.borderedProminent)
            .padding(.top, 50)
            .opacity(index == limit ? 1 : 0)
            .allowsHitTesting(index == limit)
            .animation(.easeInOut(duration: 0.25))
        }
        .padding(.bottom, 150)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(item: OnboardingItem(title: "Dummy",
                                            content: "Dummy Content", sfSymbol: "heart"),
                       limit: 0, index: .constant(0)){
            
        }
    }
}
