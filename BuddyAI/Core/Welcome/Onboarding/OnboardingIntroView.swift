//
//  OnboardingIntroView.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 19/01/26.
//

import SwiftUI

struct OnboardingIntroView: View {
    var body: some View {
        VStack {
            Group {
                Text("Make your own ")
                +
                Text("avatars ")
                    .fontWeight(.semibold)
                    .foregroundStyle(.accent)
                +
                Text("and chat with them! \n\n")
                +
                Text("Have ")
                +
                Text("real conversion ")
                    .fontWeight(.semibold)
                    .foregroundStyle(.accent)
                +
                Text("AI generated responses")
            }
            .font(.title3)
            .padding(24)
            .frame(maxHeight: .infinity)
            
            NavigationLink {
                OnboardingColorView()
            } label: {
                Text("Continue")
                    .callToActionButton()
            }
            .padding(24)
        }
    }
}

#Preview {
    OnboardingIntroView()
}
