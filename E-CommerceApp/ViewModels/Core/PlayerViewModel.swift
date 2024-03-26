//
//  PlayerViewModel.swift
//  E-CommerceApp
//
//  Created by Mehmet Vural on 23.03.2024.
//

import Foundation

class PlayerViewModel : ObservableObject{
    
    @Published var players : [PlayerModel] = []
    
    
    init() {
        getAllPlayers()
    }
    
    
    func getAllPlayers(){
        let players = PlayerData().playerData
        self.players =  players
    }
}

