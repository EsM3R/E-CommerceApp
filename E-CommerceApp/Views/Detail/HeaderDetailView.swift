//
//  HeaderDetailView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 19.03.2024.
//

import SwiftUI

struct HeaderDetailView: View {
    
    let product : ProductModel
    
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Protective Gear")
                
                Text(product.name)
                    .font(.largeTitle)
                    .fontWeight(.black)
            }
            .foregroundStyle(Color.primary)
            
            Spacer()
        }
        .padding(.vertical)
       
    }
}

//#Preview {
//    HeaderDetailView(productName: "Black Helmet")
//}
