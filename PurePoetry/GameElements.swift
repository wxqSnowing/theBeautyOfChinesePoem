//
//  GameElements.swift
//  PurePoetry
//
//  Created by 吴雪琴 on 16/5/29.
//  Copyright © 2016年 PureTime. All rights reserved.
//

import SpriteKit

extension GameScene {
    func backgroundPic(str:String) -> SKNode {
        let node = SKSpriteNode(imageNamed:"静夜思.png")
        //背景节点
        if str.isEqual("静夜思"){
            print("加载背景图片")
            let node = SKSpriteNode(imageNamed:"静夜思.png")
            node.xScale = 1.7
            node.yScale = 1.9
            node.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)*1.2)
            return node
        }
        if str.isEqual("春晓"){
            let node = SKSpriteNode(imageNamed:"春晓.jpg")
            node.xScale = 1
            node.yScale = 1.3
            node.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)*1.25)
            return node
        }

        if str.isEqual("悯农"){
            let node = SKSpriteNode(imageNamed:"悯农.jpg")
            node.xScale = 1.6
            node.yScale = 1.75
            node.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)*1.2)
            return node
        }
        if str.isEqual("绝句"){
           let node = SKSpriteNode(imageNamed:"绝句.png")
            node.xScale = 1.1
            node.yScale = 1.35
            node.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)*1.2)
            return node
        }
        if str.isEqual("咏鹅"){
            let node = SKSpriteNode(imageNamed:"咏鹅.jpg")
            node.xScale = 1
            node.yScale = 1.3
            node.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)*1.25)
            
            return node
        }
        if str.isEqual("小池"){
            let node = SKSpriteNode(imageNamed:"小池.png")
            node.xScale = 1.65
            node.yScale = 1.75
            node.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame)*1.25)
            
            return node
        }
        return node
    }
    
    func animatedsFly() {
        var mainBirds = SKSpriteNode()
        
        var textureAtlas = SKTextureAtlas()
        var textureArray = [SKTexture]()
    
        textureAtlas = SKTextureAtlas(named: "flyBirds")
        
        for i in 1..<textureAtlas.textureNames.count{
            
            let name = "IMG0\(i-1).png"
            print(name)
            textureArray.append(SKTexture(imageNamed: name))
        }
        
        mainBirds = SKSpriteNode(imageNamed: textureAtlas.textureNames[0])
        mainBirds.xScale = 1
        mainBirds.yScale = 1
        mainBirds.size = CGSize(width: 100, height: 200)
        mainBirds.position = CGPoint(x:CGRectGetMidX(self.frame)*1.7, y:CGRectGetMidY(self.frame)*1.5)
        mainBirds.zPosition = 1
        
        self.addChild(mainBirds)
        
        mainBirds.runAction(SKAction.repeatAction(SKAction.animateWithTextures(textureArray, timePerFrame: 0.1), count: 100))
        
        print("Touch")
    }
    
    func animatedsE() {
        var mainBirds = SKSpriteNode()
        
        var textureAtlas = SKTextureAtlas()
        var textureArray = [SKTexture]()
        
        
        textureAtlas = SKTextureAtlas(named: "e")
        
        for i in 1..<textureAtlas.textureNames.count{
            
            let name = "e\(i).png"
            print(name)
            textureArray.append(SKTexture(imageNamed: name))
        }
        
        mainBirds = SKSpriteNode(imageNamed: textureAtlas.textureNames[0])
        mainBirds.xScale = 1
        mainBirds.yScale = 1
        mainBirds.size = CGSize(width: 100, height: 200)
        mainBirds.position = CGPoint(x:CGRectGetMidX(self.frame)*0.5, y:CGRectGetMidY(self.frame)*0.6)
        mainBirds.zPosition = 1
        
        self.addChild(mainBirds)
        
        mainBirds.runAction(SKAction.repeatAction(SKAction.animateWithTextures(textureArray, timePerFrame: 0.1), count: 19))
        print("Touch")
    }

    
    func animatedsShip() {
        var mainBirds = SKSpriteNode()
        
        var textureAtlas = SKTextureAtlas()
        var textureArray = [SKTexture]()
        
        
        textureAtlas = SKTextureAtlas(named: "ship")
        
        for i in 1..<textureAtlas.textureNames.count{
            
            let name = "ship\(i).png"
            print(name)
            textureArray.append(SKTexture(imageNamed: name))
        }
        
        mainBirds = SKSpriteNode(imageNamed: textureAtlas.textureNames[0])
        mainBirds.xScale = 1
        mainBirds.yScale = 1
        mainBirds.size = CGSize(width: 100, height: 200)
        mainBirds.position = CGPoint(x:CGRectGetMidX(self.frame)*1.3, y:CGRectGetMidY(self.frame)*0.8)
        mainBirds.zPosition = 1
        
        self.addChild(mainBirds)
        
        mainBirds.runAction(SKAction.repeatAction(SKAction.animateWithTextures(textureArray, timePerFrame: 0.1), count: 100))
        print("Touch")
    }

    
    
    func animatedsFlower() {
        print("FLY")
        var mainBirds = SKSpriteNode()
        
        var textureAtlas = SKTextureAtlas()
        var textureArray = [SKTexture]()
        
        
        textureAtlas = SKTextureAtlas(named: "flower")
        
        for i in 0..<textureAtlas.textureNames.count{
            var name:String!
            if i<10 {
                name = "IMG000\(i).png"
            }
            if i>=10 {
                name = "IMG00\(i).png"
            }
            print(name)
            textureArray.append(SKTexture(imageNamed: name))
        }
        
        mainBirds = SKSpriteNode(imageNamed: textureAtlas.textureNames[0])
        mainBirds.xScale = 1
        mainBirds.yScale = 1.5
        mainBirds.size = CGSize(width: screenWidth*2, height: screenHeight*2)
        mainBirds.position = CGPoint(x:CGRectGetMidX(self.frame)*0.8, y:CGRectGetMidY(self.frame)*1.9)
        mainBirds.zPosition = 2
        
        self.addChild(mainBirds)
        
        mainBirds.runAction(SKAction.repeatAction(SKAction.animateWithTextures(textureArray, timePerFrame: 0.1), count: 19))
        print("Touch")
    }
    
    func animatedsQT() {
        var mainBirds = SKSpriteNode()
        var qt = SKSpriteNode()

        
        var textureAtlas = SKTextureAtlas()
        var textureArray = [SKTexture]()
        
        textureAtlas = SKTextureAtlas(named: "qt")
        
        for i in 0..<textureAtlas.textureNames.count{
            var name:String!
            name = "qt\(i+1).png"
            print(name)
            textureArray.append(SKTexture(imageNamed: name))
        }
        
        mainBirds = SKSpriteNode(imageNamed: textureAtlas.textureNames[0])
        mainBirds.xScale = 0.5
        mainBirds.yScale = 1
        mainBirds.size = CGSize(width: screenWidth*0.5, height: screenHeight*0.5)
        mainBirds.position = CGPoint(x:CGRectGetMidX(self.frame)*1.55, y:CGRectGetMidY(self.frame)*0.5)
        mainBirds.zPosition = 2
        self.addChild(mainBirds)
        
        mainBirds.runAction(SKAction.repeatAction(SKAction.animateWithTextures(textureArray, timePerFrame: 0.3), count: 19))
        
        
        
        qt = SKSpriteNode(imageNamed: textureAtlas.textureNames[0])
        qt.xScale = 0.5
        qt.yScale = 1
        qt.size = CGSize(width: screenWidth*0.4, height: screenHeight*0.5)
        
        qt.position = CGPoint(x:CGRectGetMidX(self.frame)*0.4, y:CGRectGetMidY(self.frame)*0.6)
        qt.zPosition = 2
        self.addChild(qt)
        qt.runAction(SKAction.repeatAction(SKAction.animateWithTextures(textureArray, timePerFrame: 0.3), count: 19))
        
        print("Touch")
    }
    
    func animatedsLiu() {
        var mainBirds = SKSpriteNode()
        
        var textureAtlas = SKTextureAtlas()
        var textureArray = [SKTexture]()
        
        textureAtlas = SKTextureAtlas(named: "liu")
        
        for i in 0..<textureAtlas.textureNames.count{
            var name:String!
            name = "l\(i+1).png"
            print(name)
            textureArray.append(SKTexture(imageNamed: name))
        }
        
        mainBirds = SKSpriteNode(imageNamed: textureAtlas.textureNames[0])
        mainBirds.xScale = 1
        mainBirds.yScale = 1.5
        mainBirds.size = CGSize(width: screenWidth*0.3, height: screenHeight*0.5)
        mainBirds.position = CGPoint(x:CGRectGetMidX(self.frame)*0.22, y:CGRectGetMidY(self.frame)*1.8)
        mainBirds.zPosition = 2
        
        self.addChild(mainBirds)
        
        mainBirds.runAction(SKAction.repeatAction(SKAction.animateWithTextures(textureArray, timePerFrame: 0.3), count: 19))
        print("Touch")
    }
    
    func animatedsChuHe() {
        var mainBirds = SKSpriteNode()
        
        var textureAtlas = SKTextureAtlas()
        var textureArray = [SKTexture]()
        
        textureAtlas = SKTextureAtlas(named: "chuhe")
        
        for i in 0..<textureAtlas.textureNames.count{
            var name:String!
            name = "nm\(i+1).png"
            print(name)
            textureArray.append(SKTexture(imageNamed: name))
        }
        
        mainBirds = SKSpriteNode(imageNamed: textureAtlas.textureNames[0])
        mainBirds.xScale = 2
        mainBirds.yScale = 2
        mainBirds.size = CGSize(width: screenWidth*0.2, height: screenHeight*0.5)
        mainBirds.position = CGPoint(x:CGRectGetMidX(self.frame)*0.5, y:CGRectGetMidY(self.frame)*1.2)
        mainBirds.zPosition = 2
        
        self.addChild(mainBirds)
        
        mainBirds.runAction(SKAction.repeatAction(SKAction.animateWithTextures(textureArray, timePerFrame: 0.3), count: 19))
        print("Touch")
    }
    
    func animatedsRain() {
        var mainBirds = SKSpriteNode()
        
        var textureAtlas = SKTextureAtlas()
        var textureArray = [SKTexture]()
        
        textureAtlas = SKTextureAtlas(named: "rain")
        
        for i in 0..<textureAtlas.textureNames.count{
            var name:String!
            name = "y\(i+1).png"
            print(name)
            textureArray.append(SKTexture(imageNamed: name))
        }
        
        mainBirds = SKSpriteNode(imageNamed: textureAtlas.textureNames[0])
        mainBirds.xScale = 0.5
        mainBirds.yScale = 1
        mainBirds.size = CGSize(width: screenWidth, height: screenHeight)
        mainBirds.position = CGPoint(x:CGRectGetMidX(self.frame)*1.3, y:CGRectGetMidY(self.frame))
        mainBirds.zPosition = 2
        
        self.addChild(mainBirds)
        
        mainBirds.runAction(SKAction.repeatAction(SKAction.animateWithTextures(textureArray, timePerFrame: 0.3), count: 19))
        print("Touch")
    }

    
    
    func animatedsBirds() {
        var mainBirds = SKSpriteNode()
        
        var textureAtlas = SKTextureAtlas()
        var textureArray = [SKTexture]()

        
        textureAtlas = SKTextureAtlas(named: "birds")
        
        for i in 1..<textureAtlas.textureNames.count{
            
            let name = "IMG\(i).png"
            print(name)
            textureArray.append(SKTexture(imageNamed: name))
        }
        
        mainBirds = SKSpriteNode(imageNamed: textureAtlas.textureNames[0])
        mainBirds.xScale = 1
        mainBirds.yScale = 1
        mainBirds.size = CGSize(width: 100, height: 200)
        mainBirds.position = CGPoint(x:CGRectGetMidX(self.frame)*1.9, y:CGRectGetMidY(self.frame)*1.5)
        mainBirds.zPosition = 1
        
        self.addChild(mainBirds)
        
        mainBirds.runAction(SKAction.repeatAction(SKAction.animateWithTextures(textureArray, timePerFrame: 0.1), count: 100))
        print("Touch")
    }
    
    func animatedsBailu() {
        var mainBirds = SKSpriteNode()
        
        var textureAtlas = SKTextureAtlas()
        var textureArray = [SKTexture]()
        
        textureAtlas = SKTextureAtlas(named: "bailu")
        
        for i in 1..<textureAtlas.textureNames.count{
            
            let name = "b\(i).png"
            print(name)
            textureArray.append(SKTexture(imageNamed: name))
        }
        
        mainBirds = SKSpriteNode(imageNamed: textureAtlas.textureNames[0])
        mainBirds.xScale = 1
        mainBirds.yScale = 1
        mainBirds.size = CGSize(width: screenWidth*0.8, height: screenHeight*0.8)
        mainBirds.position = CGPoint(x:CGRectGetMidX(self.frame)*1, y:CGRectGetMidY(self.frame)*1.5)
        mainBirds.zPosition = 1
        
        self.addChild(mainBirds)
        
        mainBirds.runAction(SKAction.repeatAction(SKAction.animateWithTextures(textureArray, timePerFrame: 0.1), count: 100))
        print("Touch")
    }
    
    //写入场景的节点
    func createNode(imagName:String,xP:CGFloat,yP:CGFloat) -> SKNode {
        let node = SKSpriteNode(imageNamed:imagName)
        node.xScale = 0.5
        node.yScale = 0.5
        node.zPosition = 1
        node.position = CGPoint(x:xP, y:yP)
        return node
    }
}
