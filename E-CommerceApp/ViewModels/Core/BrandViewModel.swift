//
//  BrandViewModel.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 24.03.2024.
//

import Foundation

class BrandViewModel : ObservableObject{
    
    
    @Published var brands  : [BrandModel] = []

    init() {
        getAllBrands()
    }
    
    
    func getAllBrands(){
        let brands = BrandData().brands
        self.brands =  brands
    }
}
