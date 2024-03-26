//
//  TopPartCartView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 24.03.2024.
//

import SwiftUI

struct TopPartCartView: View {
    
    @EnvironmentObject var cartViewModel : CartViewModel

    let cartItem  : CartModel

    var body: some View {
        HStack{
            
            HStack{
                
                Text(cartItem.product.name)
                    .font(.title3)
                    .fontWeight(.bold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.3)
                Text(cartItem.product.description)
                    .font(.headline)
                    .fontWeight(.light)
                    .lineLimit(1)
                    
            }
        
            Image(systemName: "trash")
                .font(.title)
                .fontWeight(.black)
                .onTapGesture {
                    cartViewModel.deleteCartItem(cartItem: cartItem)
                }
        }
    }
}

#Preview {
    TopPartCartView(cartItem: Developer.cart)
}
