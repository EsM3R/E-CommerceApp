//
//  DetailViewModel.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 24.03.2024.
//

import Foundation


class DetailViewModel : ObservableObject{
    
    @Published var product : ProductModel
    @Published var amountProduct : Int = 1
    
    init(product: ProductModel) {
        self.product = product
    }
    
    func updateFavourite(){
        self.product = product.updateFavourite()
       
    }
    

    func incrementAmount(){
        if amountProduct < 10{
            amountProduct += 1
        }
    }
    func decrementAmount(){
        if amountProduct > 1{
            amountProduct -= 1
        }
    }
    
}
