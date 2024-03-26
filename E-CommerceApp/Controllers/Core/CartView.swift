//
//  CartView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 23.03.2024.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cartViewModel : CartViewModel
    
    var body: some View {
        
        if cartViewModel.cartItems.isEmpty {
            EmptyCartView()
        }else{
            
            VStack {
                CartNavigationBarView()
                ScrollView {
                    VStack{
                        ForEach(cartViewModel.cartItems ) { cartItem in
                            CartItemView(cartItem: cartItem)
                        }
                        
                    }
                }
                CartTotalAmountView()
                
            }
            .background(Color.secondary.opacity(0.2))
        }
    }
}

#Preview {
    CartView()
}
