//
//  FooterView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 18.03.2024.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack{
            Text("We offer the most cutting edge, comfortable, lightweight  and durable football helmets in the market  at affoaradble prieces ")
                .multilineTextAlignment(.center)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .fontWeight(.bold)
            
            Text("Copyright @ Mehmet Vural \nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
              
                
        }
        .foregroundStyle(Color.gray)    }
}

#Preview {
    FooterView()
}
