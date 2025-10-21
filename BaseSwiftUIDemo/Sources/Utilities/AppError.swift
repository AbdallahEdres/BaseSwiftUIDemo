//
//  AppError.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import Foundation

enum AppError: Error, LocalizedError {
    case validation(message: String)
    case unexpected(message: String)
    case emptyData
    
    var errorDescription: String? {
        switch self {
        case .validation(let message):
            return message
        case .unexpected(let message):
            return message
        case .emptyData:
            return "No data available"
        }
    }
}
