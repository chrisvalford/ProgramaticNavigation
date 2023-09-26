//
//  CartView.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        List(Product.cartItems) { product in
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
        .listStyle(.plain)
        .navigationTitle("Cart")
    }
}

#Preview {
    CartView()
}
