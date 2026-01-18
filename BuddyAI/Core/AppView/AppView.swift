//
//  AppView.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 18/01/26.
//

import SwiftUI

struct AppView: View {
    @AppStorage("showTabBarView") var showTabBar: Bool = false
    
    var body: some View {
        Group {
            AppViewBuilder(
                showTabBar: showTabBar,
                tabBarView: {
                    TabBarView()
                },
                onboardingView: {
                    WelcomeView()
                }
            )
        }
    }
}

#Preview("AppView - TabBar") {
    AppView(showTabBar: true)
}

#Preview("AppView - Onboard") {
    AppView(showTabBar: false)
}
