//
//  HeroCellView.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 20/01/26.
//

import SwiftUI

struct HeroCellView: View {
    
    var title: String? = "This is some title"
    var subTitle: String? = "This is some sub title for time being"
    var imageUrlString: String? = Constants.randomImageUrl

    var body: some View {
        ZStack {
            if let imageUrlString {
                ImageLoaderView(urlString: imageUrlString)
            } else {
                Rectangle()
                    .fill(.accent)
            }
        }
        .overlay(alignment: .bottomLeading) {
            VStack(alignment: .leading, spacing: 8) {
                if let title {
                    Text(title)
                        .font(.headline)
                }
                if let subTitle {
                    Text(subTitle)
                        .font(.subheadline)
                }
                
              
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(Color.white)
            .padding(8)
            .frame(maxWidth: .infinity)
            .background {
                LinearGradient(
                    colors: [
                        .black.opacity(0.05),
                        .black.opacity(0.3),
                        .black.opacity(0.4),
                        .black.opacity(0.5),
                        .black.opacity(0.6)
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            }
        }
        .cornerRadius(12)
        .padding()
        
    }
}

#Preview {
    ScrollView {
        VStack {
            HeroCellView()
                .frame(width: 300, height: 200)
            
            HeroCellView(title: "title", subTitle: "Subtitle")
                .frame(width: 300, height: 200)
            
            HeroCellView(title: nil)
                .frame(width: 300, height: 200)
            
            HeroCellView(title: nil)
                .frame(width: 200, height: 400)
            
            HeroCellView(title: nil, subTitle: "Subtitle")
                .frame(width: 300, height: 200)
            
            HeroCellView(title: nil)
                .frame(width: 300, height: 200)
            
            HeroCellView(subTitle: nil)
                .frame(width: 300, height: 200)
            
            HeroCellView(imageUrlString: nil)
                .frame(width: 300, height: 200)
        }
    }
}
