//
//  SectionView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 18.03.2024.
//

import SwiftUI

struct SectionView: View {
    
    @State var isClockwise : Bool
    
    var body: some View {
        VStack{
            
            Spacer()
            
            Text("Categories")
                .font(.footnote)
                .bold()
                .foregroundStyle(Color.white)
                .rotationEffect(Angle(degrees: isClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(RoundedRectangle(cornerRadius: 12).fill(Color.gray.opacity(0.7)))
        .frame(width: 85)
    }
}

