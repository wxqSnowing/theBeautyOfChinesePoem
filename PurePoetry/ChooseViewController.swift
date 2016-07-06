//
//  ChooseViewController.swift
//  PurePoetry
//
//  Created by 吴雪琴 on 16/5/29.
//  Copyright © 2016年 PureTime. All rights reserved.
//

import UIKit

class ChooseViewController: UIViewController{
    
    let screenWidth = UIScreen.mainScreen().bounds.size.width
    let screenHeight = UIScreen.mainScreen().bounds.size.height
    
    var level:Int!
    
    let c1Btn = UIButton()
    let c2Btn = UIButton()
    let c3Btn = UIButton()
    let c4Btn = UIButton()
    let c5Btn = UIButton()
    let c6Btn = UIButton()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        let image=UIImage(named:"chosebg.jpg")
        let imageView = UIImageView(frame: CGRectMake(0, 0 ,self.view.bounds.width, self.view.bounds.height))
        imageView.image = image
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        self.view.addSubview(imageView)

        
        let backBtn = UIButton()
        backBtn.frame = CGRectMake(0, screenHeight*0.01, screenWidth*0.1, screenHeight*0.1)
        backBtn.setTitle("<返回", forState: UIControlState.Normal)
        backBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(backBtn)
        
        
        c1Btn.frame = CGRectMake(screenWidth*0.02, screenHeight*0.15, screenWidth*0.12, screenHeight*0.1)
        c1Btn.backgroundColor = colorWithHexString("#FFB6C1")
        c1Btn.layer.borderColor = colorWithHexString("#FFB6C1").CGColor
        c1Btn.layer.borderWidth = 2
        c1Btn.layer.cornerRadius = 12
        c1Btn.setTitle("第一关", forState: UIControlState.Normal)
        c1Btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(c1Btn)
        
        c2Btn.frame = c1Btn.frame.offsetBy(dx: screenWidth*0.15, dy: 0)
        c2Btn.backgroundColor = colorWithHexString("#FFB6C1")
        c2Btn.layer.borderColor = colorWithHexString("#FFB6C1").CGColor
        c2Btn.layer.borderWidth = 2
        c2Btn.layer.cornerRadius = 12
        c2Btn.setTitle("第二关", forState: UIControlState.Normal)
        c2Btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(c2Btn)
        
        c3Btn.frame = c2Btn.frame.offsetBy(dx: screenWidth*0.15, dy: 0)
        c3Btn.backgroundColor = colorWithHexString("#FFB6C1")
        c3Btn.layer.borderColor = colorWithHexString("#FFB6C1").CGColor
        c3Btn.layer.borderWidth = 2
        c3Btn.layer.cornerRadius = 12
        c3Btn.setTitle("第三关", forState: UIControlState.Normal)
        c3Btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(c3Btn)
        
        
        c4Btn.frame = c1Btn.frame.offsetBy(dx: 0, dy: screenHeight*0.15)
        c4Btn.backgroundColor = colorWithHexString("#FFB6C1")
        c4Btn.layer.borderColor = colorWithHexString("#FFB6C1").CGColor
        c4Btn.layer.borderWidth = 2
        c4Btn.layer.cornerRadius = 12
        c4Btn.setTitle("第四关", forState: UIControlState.Normal)
        c4Btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(c4Btn)
        
        c5Btn.frame = c4Btn.frame.offsetBy(dx: screenWidth*0.15, dy: 0)
        c5Btn.backgroundColor = colorWithHexString("#FFB6C1")
        c5Btn.layer.borderColor = colorWithHexString("#FFB6C1").CGColor
        c5Btn.layer.borderWidth = 2
        c5Btn.layer.cornerRadius = 12
        c5Btn.setTitle("第五关", forState: UIControlState.Normal)
        c5Btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(c5Btn)
        
        c6Btn.frame = c5Btn.frame.offsetBy(dx: screenWidth*0.15, dy: 0)
        c6Btn.backgroundColor = colorWithHexString("#FFB6C1")
        c6Btn.layer.borderColor = colorWithHexString("#FFB6C1").CGColor
        c6Btn.layer.borderWidth = 2
        c6Btn.layer.cornerRadius = 12
        c6Btn.setTitle("第六关", forState: UIControlState.Normal)
        c6Btn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(c6Btn)
        
        
        backBtn.addTarget(self, action: #selector(backBtnClick(_:)), forControlEvents: .TouchUpInside)
        c1Btn.addTarget(self, action: #selector(gameBtnClick(_:)), forControlEvents: .TouchUpInside)
        c2Btn.addTarget(self, action: #selector(gameBtnClick(_:)), forControlEvents: .TouchUpInside)
        c3Btn.addTarget(self, action: #selector(gameBtnClick(_:)), forControlEvents: .TouchUpInside)
        c4Btn.addTarget(self, action: #selector(gameBtnClick(_:)), forControlEvents: .TouchUpInside)
        c5Btn.addTarget(self, action: #selector(gameBtnClick(_:)), forControlEvents: .TouchUpInside)
        c6Btn.addTarget(self, action: #selector(gameBtnClick(_:)), forControlEvents: .TouchUpInside)
    }
    
    func backBtnClick(_: UIButton){
        
        let mvc = ViewController()
        mvc.modalTransitionStyle = .CrossDissolve
        self.presentViewController(mvc, animated: true, completion: nil)
        
    }
    
    func gameBtnClick(btn: UIButton){
        var n = 0
        
        switch btn {
        case c1Btn:
            n = 1
            break;
        case c2Btn:
            n = 2
            break;
        case c3Btn:
            n = 3
            break;
        case c4Btn:
            n = 4
            break;
        case c5Btn:
            n = 5
            break;
        case c6Btn:
            n = 6
            break;
        default:
            break;
        }
        
        let gvc = GameViewController()
        gvc.modalTransitionStyle = .CrossDissolve
        
        gvc.level=n-1
        self.presentViewController(gvc, animated: true, completion: nil)
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