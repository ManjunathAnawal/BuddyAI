//
//  WelcomeView.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 18/01/26.
//

import SwiftUI

struct WelcomeView: View {
    @State var urlString = Constants.randomImageUrl
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 8) {
                imageView
                
                labelView
                    .padding(.top, 24)
                
                ctaView
                    .padding(10)
                
                policyLinks
                    .padding(16)
            }
        }
    }
    
    var imageView: some View {
        ImageLoaderView(urlString: urlString)
            .ignoresSafeArea()
    }
    var labelView: some View{
        VStack(spacing: 8) {
            Text("AI Chat 🤙🏻")
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text("Buddy AI Chat boat")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
    }
    
    var policyLinks: some View {
        HStack {
            Link(destination: URL(string: Constants.termsOfServiceUrl)!) {
                Text("Terms of services")
            }
            
            Circle()
                .fill(.accent)
                .frame(width: 4, height: 4, alignment: .center)
            
            Link(destination: URL(string: Constants.privacyPolicyUrl)!) {
                Text("Privacy policy")
            }
            
        }
    }
    var ctaView: some View {
        VStack(spacing: 8) {
            NavigationLink {
                OnboardingIntroView()
            } label: {
                Text("Get Started")
                    .callToActionButton()
            }
            
            Text("Alaready have an account? Sign in!")
                .font(.body)
                .underline()
                .foregroundStyle(.secondary)
                .padding(10)
                .background(.black.opacity(0.001))
                .onTapGesture {}
        }
    }
}

#Preview {
    WelcomeView()
}
