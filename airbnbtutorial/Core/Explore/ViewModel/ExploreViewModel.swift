//
//  ExploreViewModel.swift
//  airbnbtutorial
//
//  Created by Guillermo Reyes on 3/15/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var listings = [Listing]()
    private let service: ExploreService
    
    init(service: ExploreService) {
        self.service = service
        
        Task { await fetchListings() }
    }
    
    func fetchListings() async {
        do {
            self.listings = try await service.fetchListings()
        } catch {
            print("DEBUG: failed to fetch listings with error: \(error.localizedDescription)")
        }
    }
} 
