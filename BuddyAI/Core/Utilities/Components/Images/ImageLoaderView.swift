//
//  ImageLoaderView.swift
//  BuddyAI
//
//  Created by Manjunath Anawal on 19/01/26.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    var urlString: String
    
    var body: some View {
        WebImage(url: URL(string: urlString))
            .resizable()
            .indicator(.activity)
    }
}

#Preview {
    ImageLoaderView(urlString: "https://picsum.photos/200/300")
}
