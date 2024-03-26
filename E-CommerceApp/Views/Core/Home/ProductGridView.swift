//
//  ProductGridView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 19.03.2024.
//

import SwiftUI

struct ProductGridView: View {
    
    @EnvironmentObject var viewModel : ProductViewModel
    
    let columns  : [GridItem] = Array(repeating: GridItem(.flexible() , spacing : 10), count: 2)
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10, content: {
                ForEach(viewModel.products){product in
                    
                    NavigationLink(destination: {
                        ProductDetailView(viewModel: DetailViewModel(product: product), product: product)
                    }, label: {
                        ProductItemView(product: product)
                    })
                    .tint(.primary)
                     
                }
                
            })
        }
        
    }
}

//#Preview {
//    ProductGridView()
//}
