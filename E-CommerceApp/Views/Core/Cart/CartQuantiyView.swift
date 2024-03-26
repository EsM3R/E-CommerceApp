//
//  CartQuantiyView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 24.03.2024.
//

import SwiftUI

struct CartQuantiyView: View {
    
    @EnvironmentObject var  cartViewModel : CartViewModel
    @EnvironmentObject var  favouriteViewModel : CartViewModel
    
    let cartItem : CartModel
    
    var body: some View {
        
        HStack{
            Image(systemName: "minus.circle")
                .foregroundStyle(Color(red: cartItem.product.red,
                                       green: cartItem.product.green,
                                       blue: cartItem.product.blue))
                .onTapGesture{
                    cartViewModel.decremenetQuantity(cartItem: cartItem)
                }
            
            Text("\(cartItem.quantity)")
                .font(.headline)
                .padding(12)
                .background(Color(red: cartItem.product.red,
                                  green: cartItem.product.green,
                                  blue: cartItem.product.blue))
                .clipShape(Circle())
                
            
            
            Image(systemName: "plus.circle")
                .foregroundStyle(Color(red: cartItem.product.red,
                                       green: cartItem.product.green,
                                       blue: cartItem.product.blue))
                .onTapGesture{
                    cartViewModel.incrementQuantity(cartItem: cartItem)
                }
            
            Spacer()
            
        }
        .font(.system(.title , design: .rounded))
        .imageScale(.large)
        .padding(.horizontal)
        
    }
}

#Preview {
    CartQuantiyView(cartItem: Developer.cart)
}
