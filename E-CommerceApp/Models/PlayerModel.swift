//
//  PlayerModel.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 18.03.2024.
//

import Foundation


struct PlayerModel : Identifiable {
   
    let id : String = UUID().uuidString
    
    let imageName : String

    init(imageName: String) {
        self.imageName = imageName
    }
}
