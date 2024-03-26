//
//  CartViewModel.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 24.03.2024.
//

import Foundation


class CartViewModel : ObservableObject{
    
    @Published var cartItems : [CartModel] = [/*CartModel(quantity: 1, product: Developer.product)*/]
    @Published var currentScreen : TabbarScreens = .home
    private var cartManager : CartManager = CartManager()

    
    init(){}
    
    
    func isExistInCartItems(product : ProductModel) -> Bool{
        return self.cartItems.firstIndex(where: {$0.product.id == product.id}) != nil
    }
        
    
    func addCartWithAmount(amount : Int , product : ProductModel){
        
        let newCartItemWithAmount =  CartModel(quantity: amount, product: product)
        
        
        if self.cartItems.isEmpty{
            self.cartItems.append(newCartItemWithAmount)
        }
        
        if !isExistInCartItems(product: product){
            self.cartItems.append(newCartItemWithAmount)
        }
    }
    
    func getCost(cartItem : CartModel) -> String{
        let cost = Double(cartItem.quantity) * cartItem.product.price
        return "$\(String(format: "%.1F", cost))"
    }
    
    func incrementQuantity( cartItem  : CartModel){
        
        let quantity = cartItem.quantity
        let product = cartItem.product
        
        if !cartManager.checkIncrement(cartItem: cartItem){return}
        
        if let index = self.cartItems.firstIndex(where: {$0.id == cartItem.id}){
            self.cartItems[index] = CartModel(quantity: quantity+1, product: product)
        }
    }
    
    
    func decremenetQuantity(cartItem : CartModel){
        
        let quantity = cartItem.quantity
        let product = cartItem.product
        
        if !cartManager.checkDecrement(cartItem: cartItem){return}
        
        if let index = self.cartItems.firstIndex(where: {$0.id == cartItem.id}){
            self.cartItems[index] = CartModel(quantity: quantity-1, product: product)
        }
    }
    
    func deleteCartItem(cartItem : CartModel){
        if let index = self.cartItems.firstIndex(where: {$0.id == cartItem.id}){
            self.cartItems.remove(at: index)
        }
    }
    
    
    func getTotalCost() -> String{
        var total : Double = 0
        self.cartItems.forEach { cartItem in
            let quantity = cartItem.quantity
            let price = cartItem.product.price
            let cost = Double(quantity) * price
            total += cost
        }
        return "$\(String(format: "%.1F", total))"
    }
    
   
}
