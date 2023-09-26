//
//  CartModel.swift
//  ProgramaticNavigation
//
//  Created by Christopher Alford on 26/9/23.
//

import Foundation

/**
 * Model providing items in cart
 * In production this would most likly be a CoreData store
 */
class CartModel: ObservableObject {
    @Published var cartItems: [Product] = []
    @Published var count: Int = 0

    init() {
        cartItems = [
            Product(id: UUID(), name: "M6 Plain nut", material: "A4", quantity: 20),
            Product(id: UUID(), name: "M5x12 Pillar", material: "Brass", quantity: 8),
            Product(id: UUID(), name: "M12x40 set screw", material: "A4", quantity: 2),
            Product(id: UUID(), name: "3x50 Split pin", material: "A4", quantity: 10),
            Product(id: UUID(), name: "12mm Black heatshrink", material: "PVC", quantity: 2)
        ]
        count = cartItems.count
    }
}
