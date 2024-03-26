//
//  HomeView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 23.03.2024.
//

import SwiftUI

enum Screens : Hashable{
    case detail
}

struct HomeView: View {
    
    @StateObject var productViewModel = ProductViewModel()
    
    var body: some View {
        
        NavigationStack{
            VStack{
                NavigationBarView()
                ScrollView{
                    LazyVStack{
                        PageView()
                        TitleView(title: "Helmet")
                        ProductGridView()
                        TitleView(title: "Brand")
                        BrandGridView()
                        FooterView()
                        
                    }
                }
            }
            .navigationDestination(for: ProductModel.self, destination: { value in
                ProductDetailView(product: value )
            })
            .padding(.horizontal , 12)
        }
        .environmentObject(productViewModel)
        
      
    }
}

//#Preview {
//    HomeView(currentScreen: )
//}
