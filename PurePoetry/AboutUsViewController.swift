//
//  AboutUsViewController.swift
//  PurePoetry
//
//  Created by 吴雪琴 on 16/5/31.
//  Copyright © 2016年 PureTime. All rights reserved.
//

import UIKit
import SpriteKit


class AboutUsViewController: UIViewController {
    
    let screenWidth = UIScreen.mainScreen().bounds.size.width
    let screenHeight = UIScreen.mainScreen().bounds.size.height
    let ourInformationLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = colorWithHexString("#bbffff")
        
        
        let image=UIImage(named:"aboutUs")
        let imageView = UIImageView(frame: CGRectMake(0, 0 ,screenWidth,screenHeight))
        imageView.image = image
        self.view.addSubview(imageView)
        
        let backBtn = UIButton()
        backBtn.frame = CGRectMake(0, screenHeight*0.01, screenWidth*0.1, screenHeight*0.1)
        backBtn.setTitle("<返回", forState: UIControlState.Normal)
        backBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(backBtn)
        
        backBtn.addTarget(self, action: #selector(backBtnClick(_:)), forControlEvents: .TouchUpInside)
        
        
//        ourInformationLabel.frame = CGRectMake(screenWidth*0.3, screenHeight*0.2, screenWidth*0.3, screenHeight*0.5)
//        ourInformationLabel.text = "Make By PureTime"
//        ourInformationLabel.textAlignment = .Center
//        self.view.addSubview(ourInformationLabel)

    
    }
    
    func backBtnClick(_: UIButton){
        
        let mvc = ViewController()
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

