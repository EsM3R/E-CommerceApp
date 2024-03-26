//
//  CategoryItemView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 18.03.2024.
//

import SwiftUI

struct CategoryItemView: View {
    
    let category : CategoryModel
    
    var body: some View {
        
        HStack{
            Image(category.imageName)
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 30 ,height: 30)
                .foregroundStyle(Color.gray)
            
            Text(category.categoryName)
                .fontWeight(.light)
                .foregroundStyle(Color.gray)
            Spacer()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 12).fill(Color.white))
        .background(RoundedRectangle(cornerRadius: 12)
            .stroke(.gray, lineWidth: 1.0))
 
        
  
    }
}

#Preview {
    CategoryItemView(category: CategoryData().categories[0])
}
