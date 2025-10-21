//
//  BaseUseCase.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import Foundation
import Combine

protocol BaseUseCaseProtocol: AnyObject {
    associatedtype RepositoryType: BaseRepositoryProtocol
    var repository: RepositoryType { get }
}

class BaseUseCase<R: BaseRepositoryProtocol>: BaseUseCaseProtocol {
    let repository: R
    
    init(repository: R) {
        self.repository = repository
    }
    
    deinit {
        print("👋 \(Self.self) deinitialized")
    }
    
    // TODO: Implement common use case logic
}
