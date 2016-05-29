//
//  Devil Wizard.swift
//  rpgObject
//
//  Created by jmayfield37 on 5/25/16.
//  Copyright © 2016 Joe Mayfield. All rights reserved.
//

import Foundation
class DevilWizard: Enemy {
    override var loot : [String]{
        return ["Magic Wand", "Dark Amulet", "Salted Pork"]
    }
    override var type : String{
        return "Devil Wizard"
    }
    
}