//
//  ProductItemView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 19.03.2024.
//

import SwiftUI

struct ProductItemView: View {
    
    let product : ProductModel
    
    var body: some View {
        VStack(alignment: .leading){
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }
            .background(RoundedRectangle(cornerRadius: 12)
                .fill(Color(red: product.red,
                            green: product.green,
                            blue: product.blue))
                        
            )
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.priceString)
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundStyle(Color.gray)
        }
    }
}

#Preview {
    ProductItemView(product: ProductData().products[0])
       
}
