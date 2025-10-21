//
//  Optional+Extensions.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import Foundation

extension Optional where Wrapped == String {
    var isNilOrEmpty: Bool {
        switch self {
        case .none:
            return true
        case .some(let value):
            return value.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
        }
    }
}

extension Optional where Wrapped: Numeric & Comparable {
    var isNilOrZero: Bool {
        switch self {
        case .none:
            return true
        case .some(let value):
            return value == 0
        }
    }
}
