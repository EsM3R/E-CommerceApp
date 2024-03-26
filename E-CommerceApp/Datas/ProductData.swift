//
//  ProductData.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 19.03.2024.
//

import Foundation


struct ProductData{
    let products : [ProductModel] =
    [
        .init(isFavourite: false, name: "Blue helmet", image: "helmet-no6", price: 199, description: "Blue helmet. The football helmet is a piece of protective equipment used mainly in gridiron football.", colors: [
            0.61,
            0.8,
            0.89
          ]),
        .init(isFavourite: false, name: "Yellow helmet", image: "helmet-no2", price: 159, description: "Yellow helmet. The football helmet is a piece of protective equipment used mainly in gridiron football.", colors: [
            0.97,
            0.87,
            0.49
          ]),
        .init(isFavourite: false, name: "Green helmet", image: "helmet-no3", price: 189, description: "Green helmet. The football helmet is a piece of protective equipment used mainly in gridiron football.", colors: [
            0.53,
            0.82,
            0.63
          ]),
        .init(isFavourite: false, name: "Red helmet", image: "helmet-no7", price: 89, description: "Red helmet. The football helmet is a piece of protective equipment used mainly in gridiron football.", colors: [
            1,
            0.56,
            0.63
          ]),
        .init(isFavourite: false, name: "Gold helmet", image: "helmet-no8", price: 364, description: "Gold helmet. The football helmet is a piece of protective equipment used mainly in gridiron football. ", colors: [
            0.74,
            0.65,
            0.5
          ]),
        .init(isFavourite: false, name: "Purple helmet", image: "helmet-no1", price: 234, description: "Purple helmet. The football helmet is a piece of protective equipment used mainly in gridiron football.", colors: [
            0.64,
            0.51,
            0.67
          ]),
        .init(isFavourite: false, name: "Black helmet", image: "helmet-no5", price: 279, description: "Black helmet. The football helmet is a piece of protective equipment used mainly in gridiron football.", colors: [
            0.75,
            0.75,
            0.8
          ]),
        .init(isFavourite: false, name: "White helmet", image: "helmet-no4", price: 314, description: "White helmet. The football helmet is a piece of protective equipment used mainly in gridiron football.", colors:[
            0.35,
            0.35,
            0.4
          ]),
        
        
    ]
}

