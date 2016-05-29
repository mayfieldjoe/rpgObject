//
//  Enemy.swift
//  rpgObject
//
//  Created by jmayfield37 on 5/25/16.
//  Copyright © 2016 Joe Mayfield. All rights reserved.
//

import Foundation
class Enemy: Character {
    
    var loot : [String]{
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var type : String {
        return "Grunt"
    }
    func dropLoot() -> String? {
        if !isAlive{
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
    
    
}