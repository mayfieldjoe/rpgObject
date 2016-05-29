//
//  Player.swift
//  rpgObject
//
//  Created by jmayfield37 on 5/25/16.
//  Copyright © 2016 Joe Mayfield. All rights reserved.
//

import Foundation

class Player: Character {
    
    private var _storage = [String]()
    private var _name = "Player"
    var name : String {
        get{
            return _name
        }
        
    }
        
    var storage : [String]{
        return _storage
    }
    
    func addItemToStorage(item: String){
        _storage.append(item)
    }
    
    convenience init (name : String, hp : Int, attPwr : Int){
        self.init(startingHP: hp, attPwr : attPwr)
        _name = name
        
    }
    
}