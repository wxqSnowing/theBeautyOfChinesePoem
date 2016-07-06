//
//  ResultViewController.swift
//  PurePoetry
//
//  Created by 吴雪琴 on 16/5/29.
//  Copyright © 2016年 PureTime. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController{
    
    let screenWidth = UIScreen.mainScreen().bounds.size.width
    let screenHeight = UIScreen.mainScreen().bounds.size.height

    var nextLevel = 0
    var poemContent:String!
    var poetryName:String!
    var writwContent:String!
    
    let resultLabel = UILabel()
    let poemContentLabel = UILabel()
    let label = UILabel()
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        self.view.backgroundColor = colorWithHexString("#eea2ad")
        
//        let image=UIImage(named:"resultLeft")
//        let imageView = UIImageView(frame: CGRectMake(screenWidth*0.02, screenHeight*0.4 ,screenWidth*0.3,screenHeight*0.6))
//        imageView.image = image
//        self.view.addSubview(imageView)
        
        let imageRight=UIImage(named:"resultRight")
        let imageRightView = UIImageView(frame: CGRectMake(screenWidth*0.7, screenHeight*0.4 ,screenWidth*0.4,screenHeight*0.6))
        imageRightView.image = imageRight
        self.view.addSubview(imageRightView)
 
        if self.writwContent==self.poetryName{
            resultLabel.text = "回答正确！"
            print("回答正确！")
        }else{
            resultLabel.text = "回答错误！答案是:"+self.poetryName
        }
        resultLabel.frame = CGRectMake(screenWidth*0.02, screenHeight*0.012, screenWidth*0.3, screenHeight*0.1)
        resultLabel.textAlignment = NSTextAlignment.Center
        resultLabel.textColor = UIColor.blackColor()
        resultLabel.backgroundColor = colorWithHexString("#abcdef")
        self.view.addSubview(resultLabel)
        
        
        label.frame = CGRectMake(screenWidth*0.02, screenHeight*0.2, screenWidth*0.195, screenHeight*0.1)
        label.textAlignment = NSTextAlignment.Center
        label.text = "全诗的内容是:"
        label.textColor = UIColor.blackColor()
        label.backgroundColor = UIColor.clearColor()
        self.view.addSubview(label)
        
        poemContentLabel.frame = CGRectMake(screenWidth*0.02, screenHeight*0.32, screenWidth*0.195, screenHeight*0.3)
        poemContentLabel.textAlignment = NSTextAlignment.Center
        poemContentLabel.text = self.poemContent
        poemContentLabel.textColor = UIColor.blackColor()
        poemContentLabel.backgroundColor = colorWithHexString("#abcdef")
        
        poemContentLabel.lineBreakMode = .ByWordWrapping
        poemContentLabel.numberOfLines = 0
        self.view.addSubview(poemContentLabel)

        
        
        let nextBtn = UIButton()
        nextBtn.frame = CGRectMake(screenWidth*0.62, screenHeight*0.012, screenWidth*0.16, screenHeight*0.1)
        nextBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        nextBtn.backgroundColor = colorWithHexString("#abcdef")
        nextBtn.layer.borderColor = colorWithHexString("#abcdef").CGColor
        nextBtn.layer.borderWidth = 2
        nextBtn.layer.cornerRadius = 12
        nextBtn.setTitle("下一关", forState: UIControlState.Normal)
        
        self.view.addSubview(nextBtn)
        nextBtn.addTarget(self, action: #selector(nextBtnClick(_:)), forControlEvents: .TouchUpInside)
        
        
        
        let reMainBtn = UIButton()
        reMainBtn.frame = nextBtn.frame.offsetBy(dx: screenWidth*0.2, dy: 0)
        reMainBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        reMainBtn.setTitle("返回主页", forState: UIControlState.Normal)
        reMainBtn.backgroundColor = colorWithHexString("#abcdef")
        reMainBtn.layer.borderColor = colorWithHexString("#abcdef").CGColor
        reMainBtn.layer.borderWidth = 2
        reMainBtn.layer.cornerRadius = 12
        self.view.addSubview(reMainBtn)
        reMainBtn.addTarget(self, action: #selector(reMainBtnClick(_:)), forControlEvents: .TouchUpInside)
    }
    
    func reMainBtnClick(_:UIButton){
        
        let mvc = ViewController()
        mvc.modalTransitionStyle = .CrossDissolve
        self.presentViewController(mvc, animated: true, completion: nil)
        
    }
    
    func nextBtnClick(_: UIButton){
        if self.nextLevel == 6 {
//            let gevc = GameEndViewController()
            let gevc = ChooseViewController()
            gevc.modalTransitionStyle = .CrossDissolve
            self.presentViewController(gevc, animated: true, completion: nil)
        }
        
        else{
            let gvc = GameViewController()
            gvc.modalTransitionStyle = .CrossDissolve
            gvc.level = self.nextLevel
            self.presentViewController(gvc, animated: true, completion: nil)
        }
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

