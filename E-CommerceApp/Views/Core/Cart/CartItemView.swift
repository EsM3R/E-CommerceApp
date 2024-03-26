//
//  CartItemView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 24.03.2024.
//

import SwiftUI

struct CartItemView: View {
    
    let cartItem : CartModel
    
    var body: some View {
        HStack{
            
            CartImageView(cartItem: cartItem)
            
           Spacer()
            
            VStack{
       
                TopPartCartView(cartItem: cartItem)
                Spacer()
                CartQuantiyView(cartItem: cartItem)
                CartPriceView(cartItem: cartItem)
                
               
            }
            .padding(.vertical,20)
           
        }
        .frame(height: 200)
        .frame(maxWidth: .infinity)
        .padding(3)
        .padding(.trailing)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .padding(.horizontal)
        
    }
}

#Preview {
    
    CartItemView(cartItem: Developer.cart)
}


