//
//  ProductList.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import SwiftUI

struct ProductList: View {
    var body: some View {
        List(Product.products) { product in
            NavigationLink {
                ProductDetail(product: product)
            } label: {
                ProductRow(product: product)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Product List")
    }
}

#Preview {
    ProductList()
}
