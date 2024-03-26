//
//  CartManager.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 25.03.2024.
//

import Foundation


class CartManager {
    
    func checkIncrement(cartItem : CartModel) -> Bool {
        let quantity = cartItem.quantity
        return quantity < 10
    }
    
    func checkDecrement(cartItem : CartModel) -> Bool {
        let quantity = cartItem.quantity
        return quantity > 1
    }
}
