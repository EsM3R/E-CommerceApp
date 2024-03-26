//
//  CartTotalAmountView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 25.03.2024.
//

import SwiftUI

struct CartTotalAmountView: View {
    
    @EnvironmentObject var cartViewModel : CartViewModel
    
    var body: some View {
        HStack{
            Text("Total:")
                .font(.title3)
                .fontWeight(.semibold)
            Text("\(cartViewModel.getTotalCost())")
                .font(.title)
                .fontWeight(.black)
            
    
                
        }
       
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        
        
    }
}

#Preview {
    CartTotalAmountView()
}
