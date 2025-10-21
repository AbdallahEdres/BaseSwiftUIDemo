//
//  BaseRepository.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import Foundation
import Combine

protocol BaseRepositoryProtocol: AnyObject {
    // TODO: Add common repository methods
    // Example: func saveToCache<T: Codable>(_ data: T, key: String)
}

class BaseRepository: BaseRepositoryProtocol {
    
    init() {
        print("✅ BaseRepository initialized")
    }
    
    deinit {
        print("👋 BaseRepository deinitialized")
    }
    
    // TODO: Implement common repository logic
}
