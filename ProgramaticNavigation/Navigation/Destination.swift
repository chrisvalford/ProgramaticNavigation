//
//  Destination.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import SwiftUI

enum Destination {
    case empty
    case simpleView
    case productList
    case cartView
    case productDetail(Product)

    var id: String { return title }

    var title: String {
        switch self {
        case .empty: return ""
        case .simpleView: return "Simple View"
        case .productList: return "Product List"
        case .cartView: return "Cart"
        case .productDetail: return ""
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
        case .some(.cartView):
            CartView()
        case .some(.productDetail(let product)):
            ProductDetail(product: product)

        default:
            EmptyView()
        }
    }
}
