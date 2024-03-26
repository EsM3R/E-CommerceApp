//
//  TabbarView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 23.03.2024.
//

import SwiftUI

enum TabbarScreens{
    
    case home
    case cart
}

struct TabbarView: View {
    
    @StateObject var cartViewModel : CartViewModel = CartViewModel()
    
    var body : some View {
        
        TabView(selection : $cartViewModel.currentScreen ){
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
                .tag(TabbarScreens.home)
            
            CartView()
                .tabItem{
                    Image(systemName: "cart")
                    Text("Cart")
                }
                .tag(TabbarScreens.cart)
        }
        .environmentObject(cartViewModel)
       
    }
}

#Preview {
    TabbarView()
}
