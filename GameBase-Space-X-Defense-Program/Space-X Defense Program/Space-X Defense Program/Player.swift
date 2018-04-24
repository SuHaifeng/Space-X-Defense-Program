//
//  Player.swift
//  Space-X Defense Program
//
//  Created by Su Haifeng on 3/12/18.
//  Copyright © 2018 Su Haifeng. All rights reserved.
//

import Foundation
import SpriteKit


class Player: GameObject {
    
    
    private static let playerZPositionOffset: CGFloat = 1000
    
    var positionY: CGFloat?
    
    var didMove: Bool = false
    
    /// the target of the user input the spaceship will move to
    var target: CGPoint?
    
    private let velocity: CGFloat = 150
    
    /// create the player spaceship
    init() {
        
        super.init(imageName: "ship")
    
        animate()
        
        self.zPosition = self.zPosition + Player.playerZPositionOffset
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func posY () -> CGFloat
    {
        return position.y
    }
    
    //Mouse Interactions (On Touch)
    
    
    override func update(_ currentTime: TimeInterval) {
        
        // in order to use the functionality provided in GameObject we need to call super here
        // since we will want to use the calculation of delta time
        super.update(currentTime)
        
        
        
        
        
        // move to target
        //self.position = position.travel(inDirection: dVector.asUnitVector, atVelocity: velocity, for: deltaTime)
    }
    
    func animate()
    {
        var textures: [SKTexture] = []
        
        textures.append(SKTexture(imageNamed: "ship"))
        
        textures.append(SKTexture(imageNamed: "ship2"))
        
        textures.append(SKTexture(imageNamed: "ship3"))
        
        textures.append(SKTexture(imageNamed: "ship4"))
        
        textures.append(SKTexture(imageNamed: "ship5"))
        
        let textureAnimation = [textures[0],
                                
                                textures[1],
                                
                                textures[2],
                                
                                textures[1],
                                
                                textures[0],
                                
                                textures[3],
        
                                textures[4],
                                
                                textures[3]]
        
        
        
        
        
        let animationAction = SKAction.animate(with: textureAnimation, timePerFrame: 0.3)
        
        let repeatAction = SKAction.repeatForever(animationAction)
        //let repeatAction = SKAction.repeat(animationAction, count: 1)
        
        
        self.run(repeatAction)
    }
    
    
}
