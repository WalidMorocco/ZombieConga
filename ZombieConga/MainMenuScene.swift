//
//  MainMenuScene.swift
//  ZombieConga
//
//  Created by Amar, Walid  on 3/14/22.
//

import Foundation
import SpriteKit

class MainMenuScene: SKScene {
 
  // Main Menu
  override func didMove(to view: SKView) {
    let background = SKSpriteNode(imageNamed: "MainMenu")
    background.position = CGPoint(x: size.width/2, y: size.height/2)
    addChild(background)
  }
  
  // Start game touch screen
  
  func sceneTapped() {
    let myScene = GameScene(size: size)
    myScene.scaleMode = scaleMode
    let reveal = SKTransition.doorway(withDuration: 1.5)
    view?.presentScene(myScene, transition: reveal)
  }

  override func touchesBegan(_ touches: Set<UITouch>,
                             with event: UIEvent?) {
    sceneTapped()
  }

}
