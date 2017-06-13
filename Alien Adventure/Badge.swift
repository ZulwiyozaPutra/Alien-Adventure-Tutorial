        //
//  Badge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class Badge: SKSpriteNode {

    var requestType: UDRequestType
    
    init(requestType: UDRequestType) {
        self.requestType = requestType
        let badgeMagentaTexture = SKSpriteNode(imageNamed: "BadgeMagenta").texture
        super.init(texture: badgeMagentaTexture, color: UIColor.clear, size: CGSize(width: 48, height: 48))
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
