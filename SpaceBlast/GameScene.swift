//
//  GameScene.swift
//  SpaceBlast
//
//  Created by User on 2/9/15.
//  Copyright (c) 2015 Greg Pachman. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var screenCenter: CGPoint!
    
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        screenCenter = view.center
        
        createMoon()
        
        let ship = SKSpriteNode(imageNamed: "ship")
        ship.position = screenCenter
        self.addChild(ship)
        
        //add gestures to move ship up and down
        
        // add thruster sound
    
        }
    
    
     override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            //shoot laser beam
            
            //make shooting sound
            
            
        }
    }
   
     override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func createMoon() {
    
    let moon = SKShapeNode(ellipseOfSize: CGSizeMake(500, 500))
    
    moon.position = CGPointMake(screenCenter.x, -300)
    moon.strokeColor = SKColor.clearColor()
    moon.fillColor = SKColor(white: 0.9, alpha: 1.0)
    self.addChild(moon)
    
        
    moon.xScale = 2.5
    moon.yScale = 2.5
    
    
    let craters: [(CGPoint,CGFloat)] = [
    
    (CGPointMake(40, 50),50),
    (CGPointMake(132, 100),30),
    (CGPointMake(100, -50),25),
    (CGPointMake(-40, -80),10),
    (CGPointMake(-140, -150),70),
    (CGPointMake(-120, -180),62),
    (CGPointMake(-190, -50),17),
    (CGPointMake(-10, -70),28),
    
    ]
    
    for (p,s) in craters {
    
    let crater = SKShapeNode(ellipseOfSize: CGSizeMake(s, s))
    crater.fillColor = SKColor(white: 0.8, alpha: 1.0)
    crater.position = p
    
    moon.addChild(crater)
        
    }
    
    let moonRotation = SKAction.rotateByAngle(CGFloat(M_PI),duration: 10)
    moon.runAction(SKAction.repeatActionForever(moonRotation))
    
        }
}

