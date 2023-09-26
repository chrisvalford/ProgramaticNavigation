//
//  Destination.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import SwiftUI

enum Destination: CaseIterable, Identifiable {
    case empty
    case viewA
    case viewB
    case viewC

    var id: String { return title }

    var title: String {
        switch self {
        case .empty: return ""
        case .viewA: return "View A"
        case .viewB: return "View B"
        case .viewC: return "View C"
        }
    }

    @ViewBuilder
    func view(for destination: Destination?) -> some View {
        switch destination {
        case .some(.empty):
            EmptyView()
        case .some(.viewA):
            ViewA()
        case .some(.viewB):
            ViewB()
        case .some(.viewC):
            ViewC()
        default:
            EmptyView()
        }
    }
}
