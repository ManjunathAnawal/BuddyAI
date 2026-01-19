//
//  OnboardingCompletedView.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 19/01/26.
//

import SwiftUI

struct OnboardingCompletedView: View {
    
    @Environment(AppState.self) private var appState
    
    var body: some View {
        NavigationStack {
            Text("Onboarding Completed!")
                .frame(maxHeight: .infinity)
            
            Button {
                onFinishButtonPresed()
            } label: {
                Text("Finish")
                    .callToActionButton()
            }
        }
        .padding(.horizontal, 16)
    }
    
    private func onFinishButtonPresed() {
        appState.updateViewState(showTabbarView: true)
    }
}
