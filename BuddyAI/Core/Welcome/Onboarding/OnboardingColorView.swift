//
//  OnboardingColorView.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 19/01/26.
//

import SwiftUI

struct OnboardingColorView: View {
    @State var selectedColor: Color? = nil
    let profileColor: [Color] = [.pink, .green, .blue, .orange, .gray, .cyan, .mint, .indigo, .teal]
    
    var body: some View {
        ScrollView {
          gridView
            .padding(.horizontal, 24)
        }
        .safeAreaInset(
            edge: .bottom,
            alignment: .center,
            spacing: 16) {
               ctaView(selectedColor: selectedColor)
            }
    }
    
    var gridView: some View {
        LazyVGrid(
            columns: Array(repeating: GridItem(.flexible(), spacing: 16), count: 3),
            alignment: .center,
            spacing: 16,
            pinnedViews: [.sectionHeaders],
            content: {
                Section {
                    ForEach(profileColor, id: \.self) { color in
                        Circle()
                            .fill(.accent)
                            .overlay {
                                color
                                    .clipShape(Circle())
                                    .padding(selectedColor == color ? 10 : 0)
                            }
                            .onTapGesture {
                                selectedColor = color
                            }
                    }
                } header: {
                    Text("select a profile color")
                        .font(.title2)
                        .fontWeight(.bold)
                }
            }
        )
    }
    private func ctaView(selectedColor: Color?) -> some View {
        ZStack {
            if let selectedColor {
                NavigationLink {
                    OnboardingCompletedView(selectedColor: selectedColor)
                } label: {
                    Text("Continue")
                        .callToActionButton()
                }
                .transition(AnyTransition.move(edge: .bottom))
            }
        }
        .padding(24)
        .background(Color(UIColor.systemBackground))
        .animation(.bouncy, value: selectedColor)

    }
}

#Preview {
    OnboardingColorView()
}
