//
//  WishlistView.swift
//  airbnbtutorial
//
//  Created by Guillermo Reyes on 3/11/25.
//

import SwiftUI

struct WishlistView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Log in to view your wishlists")
                    .font(.headline)
                
                Text("You can create, view or edit wishlists once you've logged in")
                    .font(.footnote)
                
                Button {
                    print("Log in")
                } label : {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                Spacer()
            }
            .padding()
            .navigationTitle("Wishlist")
        }
    }
}


#Preview {
    WishlistView()
}
