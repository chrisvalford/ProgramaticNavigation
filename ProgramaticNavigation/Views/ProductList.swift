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
            HStack {
                VStack(alignment: .leading) {
                    Text(product.name)
                        .font(.title3)
                    Text(product.material)
                }
                Spacer()
                Text("\(product.quantity)")
            }
        }
        .navigationTitle("Product List")
    }
}

#Preview {
    ProductList()
}
