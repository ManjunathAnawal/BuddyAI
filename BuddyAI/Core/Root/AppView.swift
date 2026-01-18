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
                    ZStack {
                        Color.red
                            .ignoresSafeArea()
                        Text("Tabbar")
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
    }
}

#Preview("AppView - TabBar") {
    AppView(showTabBar: true)
}

#Preview("AppView - Onboard") {
    AppView(showTabBar: false)
}
