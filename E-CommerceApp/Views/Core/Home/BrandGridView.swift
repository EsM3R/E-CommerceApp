//
//  BrandGridView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 19.03.2024.
//

import SwiftUI

struct BrandGridView: View {
    
    @StateObject private var  viewModel  :  BrandViewModel = BrandViewModel()
    
    let rows : [GridItem] = Array(repeating: GridItem(.flexible() ,spacing: 10), count: 2)
    
    var body: some View {
        
        ScrollView(.horizontal , showsIndicators: false) {
            LazyHGrid(rows: rows,spacing: 10, content: {
                ForEach(viewModel.brands) { brand in
                    BrandItemView(brand: brand)
                }
            })
        }
        .frame(height: 200)
       
    }
}

#Preview {
    BrandGridView()
}
