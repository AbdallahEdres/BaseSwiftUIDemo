//
//  BaseViewModel.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import SwiftUI
import Combine

class BaseViewModel<C: Coordinator>: BaseViewModelProtocol {
    
    // MARK: - Published Properties
    @Published var viewState: ViewStates = .normal
    
    // MARK: - Properties
    weak var coordinator: C?
    var cancellables = Set<AnyCancellable>()
    private var requestCount: Int = 0
    
    // MARK: - Init
    init(coordinator: C) {
        self.coordinator = coordinator
    }
    
    deinit {
        print("👋 \(Self.self) deinitialized")
    }
    
    // MARK: - Lifecycle
    func viewDidLoad() {
        // Override in subclass if needed
    }
    
    func onAppear() {
        // Override in subclass if needed
    }
    
    func onDisappear() {
        // Override in subclass if needed
    }
    
    func refresh() {
        resetState()
    }
    
    func resetState() {
        if viewState == .loading || requestCount > 0 {
            requestCount -= 1
            if requestCount == 0 {
                viewState = .normal
            }
        } else {
            viewState = .normal
        }
    }
}
