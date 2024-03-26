//
//  ProductViewModel.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 23.03.2024.
//

import Foundation


class ProductViewModel : ObservableObject{
    
    @Published var products : [ProductModel] =  []
    
   
    init() {
        getAllProducts()
    }
  
    func getAllProducts(){
        let products = ProductData().products
        self.products = products
    }
    
    func updateFavourite(product : ProductModel){
        
        if let index = products.firstIndex(where: {$0.id == product.id }){
            self.products[index] = product.updateFavourite()
    
        }
        var count = 0
        self.products.forEach { product  in
            
            if product.isFavourite{
                count += 1
            }
        }
        print(count)
    
    }

}
