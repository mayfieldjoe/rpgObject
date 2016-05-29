//
//  Character.swift
//  rpgObject
//
//  Created by jmayfield37 on 5/25/16.
//  Copyright © 2016 Joe Mayfield. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp : Int = 100
    private var _attPwr : Int = 10
    
    var attPwr : Int {
        get{
            return _attPwr
        }
    }
    var hp : Int {
        get{
            return _hp
        }
    }
    var isAlive : Bool{
        get{
            if hp <= 0 {
                return false
            } else{
                return true
            }
        }
    }
    init (startingHP : Int, attPwr : Int){
        self._hp = startingHP
        self._attPwr = attPwr
    }
    
    func attemptAttack (attPwr : Int) -> Bool{
        self._hp -= attPwr
        return true
    }
    
}


