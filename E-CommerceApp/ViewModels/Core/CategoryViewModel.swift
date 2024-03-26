//
//  CategoryViewModel.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 23.03.2024.
//

import Foundation


class CategoryViewModel : ObservableObject{
    
    @Published var categories : [CategoryModel] = []
    
    
    init() {
        getAllCategories()
    }
    
    
    func getAllCategories(){
        let categories = CategoryData().categories
        self.categories =  categories
    }
}
