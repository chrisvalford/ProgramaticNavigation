//
//  Product.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import Foundation

struct Product: Identifiable {
    let id: UUID
    let name: String
    let material: String
    let quantity: Int
}

extension Product {
    static let products: [Product] = [
        Product(id: UUID(), name: "M6 Plain nut", material: "A4", quantity: 2018),
        Product(id: UUID(), name: "M8 Aero nut", material: "A4", quantity: 967),
        Product(id: UUID(), name: "M12 Nyloc nut", material: "A4", quantity: 1032),
        Product(id: UUID(), name: "M6x20 Panhead screw", material: "Brass", quantity: 100),
        Product(id: UUID(), name: "M5x12 Pillar", material: "Brass", quantity: 60),
        Product(id: UUID(), name: "M12x40 set screw", material: "A4", quantity: 48),
        Product(id: UUID(), name: "M12x100 Hex bolt", material: "A4", quantity: 823),
        Product(id: UUID(), name: "M6 Plain washer", material: "Plated steel", quantity: 2021),
        Product(id: UUID(), name: "M20 Spring washer", material: "A4", quantity: 1975),
        Product(id: UUID(), name: "3x50 Split pin", material: "A4", quantity: 60),
        Product(id: UUID(), name: "20mm Cable gland", material: "Nylon", quantity: 42),
        Product(id: UUID(), name: "16mm Cable gland", material: "Nylon", quantity: 80),
        Product(id: UUID(), name: "12mm Black heatshrink", material: "PVC", quantity: 6)
    ]
}
