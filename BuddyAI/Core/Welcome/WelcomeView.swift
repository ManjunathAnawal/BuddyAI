//
//  WelcomeView.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 18/01/26.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            Text("Welcome!")
                .frame(maxHeight: .infinity)
            
            NavigationLink {
                OnboardingCompletedView()
            } label: {
                Text("Get Started")
                    .callToActionButton()
            }
        }
        .padding(16)
    }
}

#Preview {
    WelcomeView()
}
