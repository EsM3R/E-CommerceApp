//
//  BottomPartDetailView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 20.03.2024.
//

import SwiftUI

struct BottomPartDetailView: View {
    
    @EnvironmentObject var productViewModel : ProductViewModel
    @EnvironmentObject var cartViewModel : CartViewModel
    @ObservedObject var detailViewModel : DetailViewModel
    
    
    var body: some View {
        VStack(spacing: 25){
        

            Text(detailViewModel.product.description)
                .font(.headline)
                .multilineTextAlignment(.leading)
                .foregroundStyle(Color.gray)
            
            
            HStack{
                
                Image(systemName: "minus.circle")
                    .onTapGesture{
                        detailViewModel.decrementAmount()
                    }
                
                Text("\(detailViewModel.amountProduct)")
                
                Image(systemName: "plus.circle")
                    .onTapGesture{
                        detailViewModel.incrementAmount()
                    }
                
                Spacer()
                
                Image(systemName: "heart.circle")
                    .foregroundStyle(detailViewModel.product.isFavourite ?  Color.pink  : Color.primary)
                    .onTapGesture {
                    
                        productViewModel.updateFavourite(product: detailViewModel.product)
                        detailViewModel.updateFavourite()
                        
                        
                    }
            }
            .font(.system(.title , design: .rounded))
            .imageScale(.large)
            .padding(.horizontal)
            
            
            Button(action: {
                cartViewModel.addCartWithAmount(amount: detailViewModel.amountProduct, product: detailViewModel.product)
            }, label: {
                Text("ADD TO CART")
                    .font(.system(.title2 , design: .rounded))
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .padding(15)
                    .frame(maxWidth: .infinity)
                    .background(Color(red: detailViewModel.product.red,
                                      green: detailViewModel.product.green,
                                      blue: detailViewModel.product.blue))
                  
                    .clipShape(Capsule())
                    .padding(.bottom , 20)
            })
            
        
        }
        .background(RoundedRectangle(cornerRadius: 30).fill(Color.white))
    
    }
}

