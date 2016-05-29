//
//  ViewController.swift
//  rpgObject
//
//  Created by jmayfield37 on 5/24/16.
//  Copyright © 2016 Joe Mayfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    
    @IBOutlet weak var playerHpLbl: UILabel!
    
    @IBOutlet weak var enemyHpLbl: UILabel!
    
    @IBOutlet weak var chestBtn: UIButton!
    
    @IBOutlet weak var enemyImg: UIImageView!
    
    var player: Player!
    var enemy: Enemy!
    var chestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        player = Player(name: "Kirito", hp: 110, attPwr: 20)
        generateRandomEnemy()
        
        playerHpLbl.text = "\(player.hp) HP"
        
        
    }
    
    func generateRandomEnemy(){
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Kimara(startingHP: 50, attPwr: 12)
        }else{
            enemy = DevilWizard(startingHP: 60, attPwr: 15)
        }
        
        enemyImg.hidden = false
    }


    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMessage
        
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "generateRandomEnemy", userInfo: nil, repeats: false)
    }
    
    @IBAction func attackTapped(sender: AnyObject) {
        if enemy.attemptAttack(player.attPwr){
            printLbl.text = "Attacked \(enemy.type) for \(player.attPwr) HP"
            enemyHpLbl.text = "\(enemy.hp) HP"
        }else{
            printLbl.text = "Attack Failed!"
        }
        
        
        
        if let loot = enemy.dropLoot(){
            player.addItemToStorage(loot)
            chestMessage = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive{
            enemyHpLbl.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImg.hidden = true
            
        }
    }
    

}

