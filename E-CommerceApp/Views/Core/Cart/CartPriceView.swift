//
//  CartPriceView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 24.03.2024.
//

import SwiftUI

struct CartPriceView: View {
    
    @EnvironmentObject var cartViewModel : CartViewModel
    
    let cartItem : CartModel
    
    var body: some View {
        
        HStack{
            Spacer()
            Text(cartViewModel.getCost(cartItem: cartItem))
                .foregroundStyle(Color(red: cartItem.product.red,
                                       green: cartItem.product.green,
                                       blue: cartItem.product.blue))
                .font(.title2)
                .fontWeight(.heavy)
        }
    }
}

#Preview {
    CartPriceView(cartItem: Developer.cart)
}
