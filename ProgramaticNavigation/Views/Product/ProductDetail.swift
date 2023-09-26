//
//  ProductDetail.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import SwiftUI

struct ProductDetail: View {
    let product: Product
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Name: ")
                    Text("Material: ")
                    Text("In-stock: ")
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text(product.name)
                    Text(product.material)
                    Text("\(product.quantity)")
                }
            }
            .padding()
            Spacer()
        }
        .navigationTitle("Detail")
    }
}

#Preview {
    ProductDetail(product: Product(id: UUID(), name: "M6x20 Panhead screw", material: "Brass", quantity: 100))
}
