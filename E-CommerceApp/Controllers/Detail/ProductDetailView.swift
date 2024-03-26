//
//  ProductDetailView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 24.03.2024.
//

import SwiftUI

struct ProductDetailView: View {
    
    @StateObject var viewModel : DetailViewModel = DetailViewModel(product: Developer.product)
    
    let product : ProductModel
    
    var body: some View {
        
        VStack(spacing : 8){
            
            NavigationBarDetailView()
            
            HeaderDetailView(product: viewModel.product)
            
            TopPartDetailView(product: viewModel.product)
            
            Spacer()
            
            BottomPartDetailView(detailViewModel: viewModel)
            
        }
        .padding(.horizontal , 12)
        .navigationBarBackButtonHidden()
        
           
        
      
    }
}
//
//#Preview {
//    ProductDetailView(product: Developer.product)
//}

class Developer {
    
    static let product = ProductData().products[0]
    
    static let cart =  CartModel(quantity: 2 , product: ProductData().products[0] )
}
