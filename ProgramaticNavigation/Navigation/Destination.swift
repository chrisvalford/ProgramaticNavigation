//
//  Destination.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import SwiftUI

enum Destination: CaseIterable, Identifiable {
    case empty
    case simpleView
    case productList
    case kartView

    var id: String { return title }

    var title: String {
        switch self {
        case .empty: return ""
        case .simpleView: return "Simple View"
        case .productList: return "Product List"
        case .kartView: return "Cart"
        }
    }

    @ViewBuilder
    func view(for destination: Destination?) -> some View {
        switch destination {
        case .some(.empty):
            EmptyView()
        case .some(.simpleView):
            SimpleView()
        case .some(.productList):
            ProductList()
        case .some(.kartView):
            CartView()
        default:
            EmptyView()
        }
    }
}
