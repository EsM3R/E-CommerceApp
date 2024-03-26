//
//  CategoryGridView.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 18.03.2024.
//

import SwiftUI

struct CategoryGridView: View {
    
    @StateObject private var viewModel  : CategoryViewModel = CategoryViewModel()
    
    let rows = Array(repeating: GridItem(.flexible() , spacing: 10), count: 2)
    
    var body: some View {
        ScrollView(.horizontal ,showsIndicators: false) {
            LazyHGrid(rows: rows,spacing: 10 ,content: {
                
                Section {
                    ForEach(viewModel.categories) { category  in
                        CategoryItemView(category: category)
                    }
                } header: {
                    SectionView(isClockwise: true)
                } footer: {
                    SectionView(isClockwise: false)
                }

            
            })
            .frame(height: 140)
            .padding(.vertical,10)
        }
    }
}

#Preview {
    CategoryGridView()
}
