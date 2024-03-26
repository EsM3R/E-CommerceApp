//
//  TopPartDetailView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 19.03.2024.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @State private var isAnimating : Bool = false
    
    let product : ProductModel


    var body: some View {
        HStack(alignment: .center){
            VStack(alignment: .leading, spacing: 0.0){
             
                Text("Price")
                   
                Text(product.priceString)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(isAnimating ?  1.1 : 1 , anchor: .leading)
                
                
            }
            .offset(y : isAnimating ? -25 : -50 )
            
            Image(product.image)
                .resizable()
                .scaledToFit()
                .offset(y : isAnimating ? 0 : -10)
            Spacer()
                
        }
        .onAppear {
            withAnimation(Animation.easeIn(duration: 1)) {
                isAnimating.toggle()
            }
        }
    }
}

#Preview {
    TopPartDetailView(product: Developer.product)
}
