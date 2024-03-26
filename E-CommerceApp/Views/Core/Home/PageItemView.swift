//
//  PageItemView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 18.03.2024.
//

import SwiftUI

struct PageItemView: View {
    
    let player : PlayerModel
    
    var body: some View {
        Image(player.imageName)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

//#Preview {
//    FeaturedItemView()
//}
