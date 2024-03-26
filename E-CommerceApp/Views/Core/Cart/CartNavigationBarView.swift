//
//  CartNavigationBarView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 25.03.2024.
//

import SwiftUI

struct CartNavigationBarView: View {
    
    @EnvironmentObject var cartViewModel : CartViewModel
    
    var body: some View {
        HStack(spacing : 0){
            Text("MyCart - ")
            Text("\(cartViewModel.cartItems.count)")
         
            Spacer()
        }
        .font(.title3)
        .fontWeight(.semibold)
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
    }
}

#Preview {
    CartNavigationBarView()
}
