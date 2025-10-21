//
//  BaseViewModelProtocol.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import SwiftUI
import Combine

@MainActor
protocol BaseViewModelProtocol: ObservableObject {
    associatedtype CoordinatorType: Coordinator
    
    var viewState: ViewStates { get set }
    var coordinator: CoordinatorType? { get }
    var cancellables: Set<AnyCancellable> { get set }
    
    func viewDidLoad()
    func onAppear()
    func onDisappear()
    func refresh()
    func resetState()
    
    func handleError(_ error: Error)
    func showLoading()
    func hideLoading()
    func showError(_ message: String)
    func showSuccess(_ message: String)
}

@MainActor
extension BaseViewModelProtocol {
    func handleError(_ error: Error) {
        if let appError = error as? AppError {
            showError(appError.localizedDescription)
        } else {
            showError(error.localizedDescription)
        }
    }
    
    func showLoading() {
        viewState = .loading
    }
    
    func hideLoading() {
        viewState = .normal
    }
    
    func showError(_ message: String) {
        viewState = .showError(message: message)
    }
    
    func showSuccess(_ message: String) {
        viewState = .showSuccess(message: message)
    }
}
