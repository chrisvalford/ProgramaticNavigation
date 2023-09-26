//
//  ContentView.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedDestination: Destination? = .empty
    let itemA = Destination.simpleView
    let itemB = Destination.productList
    let itemC = Destination.kartView

    var body: some View {
        NavigationView {
            VStack {

                // Ordinary navigation link
                NavigationLink(itemA.title, destination: itemA.view(for: itemA))

                // Navigation link in the style of a button
                NavigationLink {
                    itemB.view(for: itemB)
                } label: {
                    Text(itemB.title).tag(itemB)
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
                    itemC.view(for: itemC)
                } label: {
                    Image(systemName: "cart").tag(itemC)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
