//
//  ExploreService.swift
//  airbnbtutorial
//
//  Created by Guillermo Reyes on 3/15/25.
//

import Foundation

class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
