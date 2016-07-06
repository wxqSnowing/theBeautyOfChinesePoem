//
//  MainViewController.swift
//  PurePoetry
//
//  Created by 吴雪琴 on 16/5/29.
//  Copyright © 2016年 PureTime. All rights reserved.
//

import UIKit
import SpriteKit


class ViewController: UIViewController {
    
    let screenWidth = UIScreen.mainScreen().bounds.size.width
    let screenHeight = UIScreen.mainScreen().bounds.size.height
    
    var startBtn = UIButton(type:.System)
    var exitBtn = UIButton(type:.System)
    var aboutBtn = UIButton(type:.System)
    var welconLable = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //首次启动进入引导页，否则跳过引导页面
        let udf = NSUserDefaults()
        udf.setBool(true, forKey: "isFirsLuanch")
        udf.synchronize()//刷新存储
        
        
//        self.view.backgroundColor = UIColor.whiteColor()
      
        
        welconLable.frame = CGRectMake(screenWidth*0.345,screenHeight*0.096,screenWidth*0.8,screenHeight*0.1)
        welconLable.text = "欢迎使用中华诗词文韵"
        welconLable.font = UIFont.boldSystemFontOfSize(25)
        welconLable.backgroundColor = UIColor.clearColor()
        welconLable.textColor = UIColor.blackColor()
//        welconLable.textColor = colorWithHexString("#fff68f")
        self.view.addSubview(welconLable)
        
        
        startBtn.frame = CGRectMake(screenWidth*0.4,screenHeight*0.3,screenWidth*0.2,screenHeight*0.1)
        startBtn.layer.borderColor = colorWithHexString("#fff68f").CGColor
        startBtn.layer.borderWidth = 2
        startBtn.layer.cornerRadius = 12
        startBtn.setTitle("进  入  学  习", forState: UIControlState.Normal)
        startBtn.setTitleColor(UIColor.blackColor(), forState:.Normal )
        startBtn.backgroundColor = colorWithHexString("#fff68f")
        self.view.addSubview(startBtn)
        startBtn.addTarget(self, action: #selector(startBtnClick(_:)), forControlEvents: .TouchUpInside)
        
        exitBtn.frame = startBtn.frame.offsetBy(dx: 0, dy: screenHeight*0.15)
        exitBtn.layer.borderColor = colorWithHexString("#fff68f").CGColor
        exitBtn.layer.borderWidth = 2
        exitBtn.layer.cornerRadius = 12
        exitBtn.setTitle("退  出  学  习", forState: UIControlState.Normal)
        exitBtn.setTitleColor(UIColor.blackColor(), forState:.Normal )
        exitBtn.backgroundColor = colorWithHexString("#fff68f")
        self.view.addSubview(exitBtn)
        exitBtn.addTarget(self, action: #selector(exitBtnClick(_:)), forControlEvents: .TouchUpInside)
        
        aboutBtn.frame = exitBtn.frame.offsetBy(dx: 0, dy: screenHeight*0.15)
        aboutBtn.layer.borderColor = colorWithHexString("#fff68f").CGColor
        aboutBtn.layer.borderWidth = 2
        aboutBtn.layer.cornerRadius = 12
        aboutBtn.setTitle("关  于  我  们", forState: UIControlState.Normal)
        aboutBtn.setTitleColor(UIColor.blackColor(), forState:.Normal )
        aboutBtn.backgroundColor = colorWithHexString("#fff68f")
        aboutBtn.addTarget(self, action: #selector(saboutBtnClick(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(aboutBtn)
        
        self.view.backgroundColor = colorWithHexString("#bbffff")
        
        let image=UIImage(named:"start")
        let imageView = UIImageView(frame: CGRectMake(0, 0 ,screenWidth,screenHeight))
        imageView.image = image
        self.view.addSubview(imageView)
    }
    
    func saboutBtnClick(btn: UIButton){
        let mvc = AboutUsViewController()
        mvc.modalTransitionStyle = .CrossDissolve
        self.presentViewController(mvc, animated: true, completion: nil)
        
    }
    
    func exitBtnClick(btn: UIButton){
        exit(0)
    }

    
    func startBtnClick(btn: UIButton){
        let mvc = ChooseViewController()
        mvc.modalTransitionStyle = .CrossDissolve
        self.presentViewController(mvc, animated: true, completion: nil)
        
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
}
