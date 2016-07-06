//
//  GameEndViewController.swift
//  PurePoetry
//
//  Created by 吴雪琴 on 16/5/30.
//  Copyright © 2016年 PureTime. All rights reserved.
//

import UIKit

class GameEndViewController: UIViewController{
    
    let screenWidth = UIScreen.mainScreen().bounds.size.width
    let screenHeight = UIScreen.mainScreen().bounds.size.height
    
    let totallPoemCount:Int = 0
    let rightPoemCount:Int = 0
    
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        self.view.backgroundColor = colorWithHexString("#aabbdd")
        
        let image=UIImage(named:"startLeft")
        let imageView = UIImageView(frame: CGRectMake(screenWidth*0.02, screenHeight*0.4 ,screenWidth*0.3,screenHeight*0.6))
        imageView.image = image
        self.view.addSubview(imageView)
        
        let imageRight=UIImage(named:"startRight")
        let imageRightView = UIImageView(frame: CGRectMake(screenWidth*0.7, screenHeight*0.4 ,screenWidth*0.3,screenHeight*0.6))
        imageRightView.image = imageRight
        self.view.addSubview(imageRightView)
        
        
        
    }
    
    func colorWithHexString (hex:String) -> UIColor {
        var cString:String = hex.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
        
        if (cString.hasPrefix("#")) {
            cString = (cString as NSString).substringFromIndex(1)
        }
        
        let rString = (cString as NSString).substringToIndex(2)
        let gString = ((cString as NSString).substringFromIndex(2) as NSString).substringToIndex(2)
        let bString = ((cString as NSString).substringFromIndex(4) as NSString).substringToIndex(2)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        NSScanner(string: rString).scanHexInt(&r)
        NSScanner(string: gString).scanHexInt(&g)
        NSScanner(string: bString).scanHexInt(&b)
        
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    }
    
    override func shouldAutorotate() -> Bool {
        return false
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return .AllButUpsideDown
        } else {
            return .All
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
}
