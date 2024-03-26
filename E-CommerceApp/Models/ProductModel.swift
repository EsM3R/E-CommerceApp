//
//  ProductModel.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 19.03.2024.
//

import Foundation


struct ProductModel : Identifiable ,Hashable {
    
    let id : String = UUID().uuidString
    
    let name : String
    
    let image : String
    
    let price : Double
    
    let description : String
    
    let colors  : [Double]
    
    let isFavourite : Bool
    
    init(isFavourite: Bool, name: String, image: String, price: Double, description: String, colors: [Double]) {
        self.isFavourite = isFavourite
        self.name = name
        self.image = image
        self.price = price
        self.description = description
        self.colors = colors
    }
    
    func updateFavourite() -> ProductModel{
        return ProductModel(isFavourite: !isFavourite, name: name, image: image, price: price, description: description, colors: colors)
    }
    
    
    var priceString : String{
        return "$\(self.price)"
    }
    var red : Double{
        self.colors[0]
    }
    var green : Double{
        self.colors[1]
    }
    var blue : Double{
        self.colors[2]
    }
    
    
}

