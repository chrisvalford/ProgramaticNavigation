//
//  ContentView.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedDestination: Destination? = .empty
    let simpleView = Destination.simpleView
    let productList = Destination.productList
    let cartView = Destination.cartView

    var body: some View {
        NavigationView {
            VStack {

                // Ordinary navigation link
                NavigationLink(simpleView.title, destination: simpleView.view(for: simpleView))

                // Navigation link in the style of a button
                NavigationLink {
                    productList.view(for: productList)
                } label: {
                    Text(productList.title).tag(productList)
                        .frame(height: 44)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(Color.gray)
                }
                .padding()
            }
            .toolbar {
                // Toolbar navigation link
                NavigationLink {
                    cartView.view(for: cartView)
                } label: {
                    Image(systemName: "cart") //.tag(cartView)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
