//
//  ViewStates.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import Foundation

enum ViewStates: Equatable {
    case loading
    case normal
    case emptyData
    case showError(message: String)
    case showSuccess(message: String)
}
