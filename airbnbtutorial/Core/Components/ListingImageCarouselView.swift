//
//  ListingImageCarouselView.swift
//  airbnbtutorial
//
//  Created by Guillermo Reyes on 3/10/25.
//

import SwiftUI

struct ListingImageCarouselView: View {
    let listing: Listing
    
    var body: some View {
        TabView {
            ForEach(listing.imageUrls , id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
            
        }
        
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouselView(listing: DeveloperPreview.shared.listings[0])
}
