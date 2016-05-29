//
//  Kimara.swift
//  rpgObject
//
//  Created by jmayfield37 on 5/25/16.
//  Copyright © 2016 Joe Mayfield. All rights reserved.
//

import Foundation
class Kimara: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String]{
        return ["Tough Hide", "Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara"
        
    }
    
    override func attemptAttack(attPwr: Int) -> Bool {
        if attPwr >= IMMUNE_MAX{
            return super.attemptAttack(attPwr)
        }else{
            return false
        }
    }
}