//
//  ProfileView.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 18/01/26.
//

import SwiftUI

struct ProfileView: View {
    @State var showSettings: Bool = false
    var body: some View {
        NavigationStack {
            Text("Profile")
                .navigationTitle("Profile")
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        settingsButton
                    }
                }
        }
        .sheet(isPresented: $showSettings) {
            SettingsView()
        }
    }
    
    private var settingsButton: some View {
        Button {
            settingsButtonAction()
        } label: {
            Image(systemName: "gear")
                .font(.headline)
            
        }
    }
    
    private func settingsButtonAction() {
        showSettings = true
    }
}

#Preview {
    ProfileView()
}
