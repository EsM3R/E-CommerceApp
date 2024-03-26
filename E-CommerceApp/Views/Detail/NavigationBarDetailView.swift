//
//  NavigationBarDetailView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 19.03.2024.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    
    @EnvironmentObject var cartViewModel : CartViewModel
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        HStack{
            
            Image(systemName: "chevron.left")
                .onTapGesture {
                    dismiss()
                }
            
            Spacer()
            
            ZStack(alignment : .topTrailing){
                
                Image(systemName: "cart")
                    .onTapGesture {
                        cartViewModel.currentScreen = .cart
                    }
                
                if !cartViewModel.cartItems.isEmpty{
                    Circle()
                        .fill(Color.red)
                        .frame(width: 10)
                }
       
                
            }
            
        }
        .font(.title)
        .fontWeight(.bold )
        .foregroundStyle(Color.primary)
        .padding(.horizontal)
    }
}

#Preview {
    NavigationBarDetailView()
}
