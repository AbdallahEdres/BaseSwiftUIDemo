//
//  RouteProtocol.swift
//  BaseSwiftUI
//
//  Created by Abdallah Edres on 21/10/2025.
//

import Foundation

protocol RouteProtocol: Hashable, Identifiable {
    var title: String { get }
}

extension RouteProtocol {
    var id: String { String(describing: self) }
}
