//
//  AppViewBuilder.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 18/01/26.
//


import SwiftUI

struct AppViewBuilder< TabBarView: View, OnboardingView: View >: View {
    var showTabBar: Bool = false
    @ViewBuilder var tabBarView: TabBarView
    @ViewBuilder var onboardingView: OnboardingView
    var body: some View {
        ZStack {
            if showTabBar {
                tabBarView
                    .transition(.move(edge: .trailing))
            } else {
                onboardingView
                    .transition(.move(edge: .leading))
            }
        }
        .animation(.smooth, value: showTabBar)
    }
}

#Preview {
    AppViewBuilder(
        showTabBar: true,
        tabBarView: {
            ZStack {
                Color.red
                    .ignoresSafeArea()
                Text("TabBar")
            }
        },
        onboardingView: {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                Text("Onboarding")
            }
        }
    )
}
