//
//  CartImageView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 24.03.2024.
//

import SwiftUI

struct CartImageView: View {
    
    let cartItem : CartModel
    
    var body: some View {
        Image(cartItem.product.image)
            .resizable()
            .scaledToFit()
            .frame(width: 125 , height: 125)
    }
}

#Preview {
    CartImageView(cartItem: Developer.cart)
}
