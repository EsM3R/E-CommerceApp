//
//  NavigationBarView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 18.03.2024.
//

import SwiftUI

struct NavigationBarView: View {
    
    @State private var isAnimated : Bool = false

    @EnvironmentObject var cartViewModel : CartViewModel

    
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .fontWeight(.black)
                .font(.title)
                .onTapGesture {
                    print("search whatever you want")
                }
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(y:isAnimated ? 0 : -25)
                .onAppear{
                    withAnimation (Animation.easeOut(duration: 1)){
                        isAnimated.toggle()
                    }
                }
                .onDisappear{
                    isAnimated.toggle()
                }
            
            Spacer()
            
            ZStack(alignment : .topTrailing){
                
                Image(systemName: "cart")
                    .fontWeight(.black)
                    .font(.title)
                    .onTapGesture {
                        cartViewModel.currentScreen = .cart
                    }
                
                if !cartViewModel.cartItems.isEmpty{
                    Circle()
                        .fill(Color.red)
                        .frame(width: 10)
                }
         
                
                
            }
            
            
        }
        .padding()
        .background(Color.white.shadow(
            color: Color.black.opacity(0.05) ,
            radius: 5 ,
            x : 0 ,
            y: 5))
        
    }
}

