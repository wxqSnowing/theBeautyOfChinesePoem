//
//  GameScene.swift
//  PurePoetry
//
//  Created by 吴雪琴 on 16/5/29.
//  Copyright © 2016年 PureTime. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    let screenWidth = UIScreen.mainScreen().bounds.size.width
    let screenHeight = UIScreen.mainScreen().bounds.size.height
    
    var backgroundPic:String!
    
    var mArr:NSMutableArray = []//关键字
    
    var time:NSTimer!
    
    override func didMoveToView(view: SKView){
        self.backgroundColor = SKColor.whiteColor()

        self.addChild(backgroundPic(backgroundPic))
        createScene(mArr)
//        animatedsE() 
   //     animatedsQT()
        
    }
    
    func createScene(mArr:NSMutableArray){
        //遍历数组
        for(_,value) in EnumerateSequence(mArr){
            
//            if value.isEqual("bed") {
//                // 加载节点
//                let mn = createNode("bed.png", xP: screenWidth*0.9 , yP: screenHeight*0.8)
//                self.addChild(mn)
//            }
            
            if value.isEqual("moon") {
                // 加载节点
                let mn = createNode("moon.png", xP: screenWidth*0.1 , yP: screenHeight*1.7)
                mn.xScale = 0.3
                mn.yScale = 0.3
                let action = SKAction.moveToX(CGRectGetMaxX(self.frame)*0.9, duration: 10)
                mn.runAction(SKAction.repeatActionForever(action))
                
                self.addChild(mn)
            }
            
//            if value.isEqual("frost") {
//                let mn = createNode("frost.png", xP: screenWidth*0.2 , yP: screenHeight*1.5)
//                self.addChild(mn)
//            }
            if value.isEqual("lookUp") {
                //举头低头动作
                let mn = createNode("libai.png", xP: screenWidth*0.2 , yP: screenHeight*0.7)
                mn.xScale = 1.5
                mn.yScale = 1.5
                let action = SKAction.moveToX(CGRectGetMaxX(self.frame)*0.3, duration: 15)
                mn.runAction(SKAction.repeatActionForever(action))
                self.addChild(mn)
            }
            
            if value.isEqual("hometown") {
                
                let mn = createNode("think.png", xP: screenWidth*0.3 , yP: screenHeight*1.15)
                mn.xScale = 0.2
                mn.yScale = 0.2
                let action = SKAction.moveToX(CGRectGetMaxX(self.frame)*0.4, duration: 15)
                mn.runAction(SKAction.repeatActionForever(action))
                self.addChild(mn)
                
                let mn1 = createNode("hometown.jpg", xP: screenWidth*0.3 , yP: screenHeight*1.15)
                mn1.xScale = 0.03
                mn1.yScale = 0.03
                mn1.zPosition = 3
                let action1 = SKAction.moveToX(CGRectGetMaxX(self.frame)*0.4, duration: 15)
                mn1.runAction(SKAction.repeatActionForever(action1))
                self.addChild(mn1)
                

            }
            
            
            if value.isEqual("chuhe") {
                //锄禾动作
                animatedsChuHe()
            }
            
            if value.isEqual("sun") {
                let mn = createNode("sun.png", xP: screenWidth*0.75 , yP: screenHeight*1.3)
                mn.xScale = 3
                mn.yScale = 3
                let action = SKAction.moveToX(CGRectGetMaxX(self.frame)*0.3, duration: 5)
                mn.runAction(SKAction.repeatActionForever(action))
                self.addChild(mn)
            }
            
            if value.isEqual("pan"){
                let mn = createNode("pan.png", xP: screenWidth*0.4 , yP: screenHeight*1.3)
                self.addChild(mn)
            }

            
            if value.isEqual("sleep"){
                let mn = createNode("sleep.png", xP: screenWidth*0.18 , yP: screenHeight*0.5)
                mn.xScale = 0.5
                mn.yScale = 0.5
                self.addChild(mn)
            }
            
            if value.isEqual("birds"){
                animatedsFly()
            }
            
            
            if value.isEqual("rain"){
               animatedsRain()
            }
            if value.isEqual("flower"){
                animatedsFlower()
            }
            
            
            if value.isEqual("huangli"){
               animatedsBirds()
            }
            if value.isEqual("liu"){
                animatedsLiu()
            }
            
            if value.isEqual("bailu"){
                animatedsBailu()
            }
            if value.isEqual("xiling"){
//                let mn = createNode("xiling.png", xP: screenWidth*0.9 , yP: screenHeight*0.8)
//                self.addChild(mn)
            }
            
            if value.isEqual("snow"){
//                let mn = createNode("snow.png", xP: screenWidth*0.9 , yP: screenHeight*0.8)
//                self.addChild(mn)
            }
            if value.isEqual("ship"){
                animatedsShip()
            }
            
            if value.isEqual("e"){
                animatedsE()
            }
            if value.isEqual("steam"){
//                let mn = createNode("steam.png", xP: screenWidth*0.9 , yP: screenHeight*0.8)
//                self.addChild(mn)
            }
            
            
            
            if value.isEqual("quan"){
//                let mn = createNode("quan.png", xP: screenWidth*0.9 , yP: screenHeight*0.8)
//                self.addChild(mn)
            }
            if value.isEqual("tree"){
//                let mn = createNode("tree.png", xP: screenWidth*0.9 , yP: screenHeight*0.8)
//                self.addChild(mn)
            }
            if value.isEqual("hehua"){
                let mn = createNode("hehua2.png", xP: screenWidth*1.05 , yP: screenHeight*0.5)
                self.addChild(mn)
                let mn1 = createNode("hehua2.png", xP: screenWidth*0.3 , yP: screenHeight*1.3)
                self.addChild(mn1)
                
                let mn2 = createNode("hehua1.png", xP: screenWidth*0.3 , yP: screenHeight*0.6)
                self.addChild(mn2)
            }
            if value.isEqual("qingting"){
                animatedsQT()
            }

        }
    }
    
    
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}

