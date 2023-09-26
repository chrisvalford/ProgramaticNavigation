//
//  ProductRow.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import SwiftUI

struct ProductRow: View {
    let product: Product
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(product.name)
                    .font(.title3)
                Spacer()
                Text("Stock")
            }
            HStack {
                Text(product.material)
                Spacer()
                Text("\(product.quantity)")
            }
        }
    }
}

#Preview {
    ProductRow(product: Product(id: UUID(), name: "M20 Spring washer", material: "A4", quantity: 1975))
}
