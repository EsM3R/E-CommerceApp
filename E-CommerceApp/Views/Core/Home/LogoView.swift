//
//  LogoView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 18.03.2024.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing :  2){
            Spacer()
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.heavy)
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30 , height: 30)
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.heavy)
            Spacer()
        }
    }
}

#Preview {
    LogoView()
}
