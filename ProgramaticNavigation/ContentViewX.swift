//
//  ContentView.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import SwiftUI
/*
enum DestinationX: CaseIterable, Identifiable {
    case viewA
    case viewB

    var id: String { return text }

    var text: String {
        switch self {
        case .viewA:
            return "Tap to show A"
        case .viewB:
            return "Tap to show B"
        }
    }
//    var tag: String {
//        switch self {
//        case .viewA:
//            return "A"
//        case .viewB:
//            return "B"
//        }
//    }
}

struct ContentViewX: View {
    @State private var selectedDestination: DestinationX? = .viewA

    var body: some View {
        NavigationView {
            List(DestinationX.allCases,
                 selection: $selectedDestination) { item in
                NavigationLink(destination: view(for: selectedDestination),
                               tag: item,
                               selection: $selectedDestination) {
                    Text(item.title).tag(item)
                }
            }

        }
    }

    @ViewBuilder
    func view(for destination: Destination?) -> some View {
        switch destination {
        case .some(.viewA):
            ViewA()
        case .some(.viewB):
            ViewB()
        default:
            EmptyView()
        }
    }
}

#Preview {
    ContentViewX()
}
*/
