//
//  OnboardingCompletedView.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 19/01/26.
//

import SwiftUI

struct OnboardingCompletedView: View {
    
    @Environment(AppState.self) private var appState
    @State var isCompletingProfileSetup: Bool = false
    var selectedColor: Color = .orange
    
    var textView: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Setup Completed!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(selectedColor)
            Text("We've set up your profile and you're ready to start chatting!")
                .font(.title)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
    }
    var ctaView: some View {
        Button {
            onFinishButtonPresed()
        } label: {
            ZStack {
                if isCompletingProfileSetup {
                    ProgressView()
                        .tint(.white)
                } else {
                    Text("Finish")
                }
            }
            .callToActionButton()
        }
        .disabled(isCompletingProfileSetup)
    }
    var body: some View {
        VStack(spacing: 0) {
            textView
        }
        .frame(maxHeight: .infinity)
        .padding(.horizontal, 16)
        .safeAreaInset(
            edge: .bottom,
            alignment: .center,
            spacing: nil) {
                ctaView
            }
            .padding(24)

    }
    
    private func onFinishButtonPresed() {
        isCompletingProfileSetup = true
        Task {
            try? await Task.sleep(for: .seconds(3))
            isCompletingProfileSetup = false
            appState.updateViewState(showTabbarView: true)
        }
    }
}

#Preview {
    OnboardingCompletedView()
        .environment(AppState(showTabbar: false))
}
