//
//  BrandItemView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 19.03.2024.
//

import SwiftUI

struct BrandItemView: View {
    
    let brand : BrandModel
    
    var body: some View {
        
        Image(brand.imageName)
            .resizable()
            .scaledToFit()
            .padding()
            .background(RoundedRectangle(cornerRadius: 12)
                .stroke(Color.gray,lineWidth:  1))
            .background(Color.white)
           
    }
}

#Preview {
    BrandItemView(brand: BrandData().brands[0])
}
