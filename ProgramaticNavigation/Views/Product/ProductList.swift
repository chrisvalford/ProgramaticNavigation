//
//  ProductList.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import SwiftUI

struct ProductList: View {

    @StateObject var productModel = ProductModel()

    var body: some View {
        List(productModel.products) { product in
            NavigationLink {
                Destination.productList.view(for: Destination.productDetail(product))
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
