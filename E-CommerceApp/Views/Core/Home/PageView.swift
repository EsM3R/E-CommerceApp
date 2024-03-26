//
//  FeaturedPageView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 18.03.2024.
//

import SwiftUI

struct PageView: View {
    
    @StateObject private var viewModel : PlayerViewModel = PlayerViewModel()
   
    var body: some View {
        TabView{
            ForEach(viewModel.players){ player in
                PageItemView(player: player)
            }
        }
        .frame(height: 275)
        .padding(.top , 15)
        .padding(.bottom , 10)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    PageView()
}
