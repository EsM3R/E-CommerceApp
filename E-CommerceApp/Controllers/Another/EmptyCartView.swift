//
//  EmptyCartView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 26.03.2024.
//

import SwiftUI

struct EmptyCartView: View {
    
    @EnvironmentObject var cartViewModel : CartViewModel
    
    var body: some View {
        VStack{
            ContentUnavailableView("My Cart", 
                                   systemImage: "cart.circle.fill",
                                   description: 
                                    Text("There is no item in your cart")
            )
            .frame(height: UIScreen.main.bounds.height / 4)
            
            Button(action: {
                cartViewModel.currentScreen = .home
            }, label: {
                Text("Contiune to Shopping")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding()
            })
        }
       
    }
}

#Preview {
    EmptyCartView()
}
