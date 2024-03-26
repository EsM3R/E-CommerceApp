//
//  CartModel.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 21.03.2024.
//

import Foundation



class CartModel :  Identifiable {
    
    
    let id : String = UUID().uuidString
    
    let quantity : Int
    
    let  product  :  ProductModel
    
    init(quantity: Int, product: ProductModel) {
        self.quantity = quantity
        self.product = product
    }
}
