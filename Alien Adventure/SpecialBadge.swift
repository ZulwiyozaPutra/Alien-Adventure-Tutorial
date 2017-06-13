//
//  SpecialBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class SpecialBadge: Badge {
    
    enum BadgeAnimation: Int {
        case growAndShrink = 0
        case rotate = 1
        case shake = 2
    }
    
    override init(requestType: UDRequestType) {
        super.init(requestType: requestType)
        self.badgeTexture = SKTexture(imageNamed: "BadgeTeal")
        self.texture = self.badgeTexture
        let selector = Int(arc4random_uniform(3))
        let selectedAnimation = BadgeAnimation.init(rawValue: selector)
        animation(animation: selectedAnimation!)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func animation(animation: BadgeAnimation) {
        switch(animation) {
        case .growAndShrink:  // this gives more context compared to just using number like 0,1, and 2
            let x: Float = 10
            let y: Float = 6
            let numberOfTimes = 2.0 / 0.04
            var actionsArray = [SKAction]()
            
            for _ in 1...Int(numberOfTimes) {
                let dX = Float(arc4random_uniform(UInt32(x))) - x / 2;
                let dY = Float(arc4random_uniform(UInt32(y))) - y / 2;
                let shakeAction = SKAction.moveBy(x: CGFloat(dX), y: CGFloat(dY), duration: 0.02);
                actionsArray.append(shakeAction);
                actionsArray.append(shakeAction.reversed());
            }
            
            let sequencedAction = SKAction.sequence(actionsArray)
            run(SKAction.repeatForever(sequencedAction))
        case .rotate:
            let action = SKAction.rotate(byAngle: CGFloat(-Double.pi), duration: 1.5)
            run(SKAction.repeatForever(action))
        case .shake:
            let action1 = SKAction.scale(to: 0.8, duration: 1.0)
            let action2 = SKAction.scale(to: 1.1, duration: 1.0)
            let sequencedAction = SKAction.sequence([action1, action2])
            run(SKAction.repeatForever(sequencedAction))

        }
    }
}
