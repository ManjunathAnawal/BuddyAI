//
//  AppView.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 18/01/26.
//

import SwiftUI

struct AppView: View {
    @State var appState: AppState = AppState()
    
    var body: some View {
        Group {
            AppViewBuilder(
                showTabBar: appState.showTabBar,
                tabBarView: {
                    TabBarView()
                },
                onboardingView: {
                    WelcomeView()
                }
            )
            .environment(appState)
        }
    }
}

#Preview("AppView - TabBar") {
    AppView(appState: AppState(showTabbar: true))
}

#Preview("AppView - Onboard") {
    AppView(appState: AppState(showTabbar: false))
}
