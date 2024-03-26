//
//  CategoryModel.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 18.03.2024.
//

import Foundation


struct CategoryModel : Identifiable{
    
    let id : String = UUID().uuidString
    
    let categoryName : String
    
    let imageName : String
    
    
    
    
}
