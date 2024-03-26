//
//  TitleView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 19.03.2024.
//

import SwiftUI

struct TitleView: View {

    var title : String

    var body: some View {
        HStack{
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
                
            Spacer()
            
        }        
    }
}

#Preview {
    TitleView(title: "Helment")
}
