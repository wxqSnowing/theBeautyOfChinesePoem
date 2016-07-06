//
//  GameViewController.swift
//  PurePoetry
//
//  Created by 吴雪琴 on 16/5/29.
//  Copyright © 2016年 PureTime. All rights reserved.
//
import UIKit
import SpriteKit
//展示个var信息，开始闯关按钮，历史记录按钮，音效开关，音乐开关，关于我们静夜思

class GameViewController: UIViewController,UITextFieldDelegate{
    let screenWidth = UIScreen.mainScreen().bounds.size.width
    let screenHeight = UIScreen.mainScreen().bounds.size.height
    
    var level:Int = 0
    var poName:String!
    var answer:String!
    var poemContent:String!
    var txtAns = UITextField()
    
    lazy var pList:NSArray = {return Poetry.Poetry()}()

    override func loadView() {
        let skView = SKView(frame: UIScreen().bounds);
        self.view = skView;
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        print(self.level)
        
        self.view.backgroundColor = UIColor.whiteColor()
 
        let label = UILabel()
        label.text = "请输入诗名："
        label.textColor = UIColor.blackColor()
        //label.backgroundColor = UIColor.redColor()
        label.frame = CGRectMake(screenWidth*0.01,screenHeight*0.88, screenWidth*0.15, screenHeight*0.1)
        self.view.addSubview(label)
        
        
        txtAns.frame = CGRectMake(screenWidth*0.16,screenHeight*0.88, screenWidth*0.6, screenHeight*0.1)
        txtAns.delegate = self
        txtAns.layer.cornerRadius = 5
        txtAns.layer.borderColor = UIColor.lightGrayColor().CGColor
        txtAns.layer.borderWidth = 0.5
        txtAns.leftViewMode = UITextFieldViewMode.Always
        self.view.addSubview(txtAns)
        
        let submitBtn = UIButton()
        submitBtn.frame = CGRectMake(screenWidth*0.88,screenHeight*0.88, screenWidth*0.1, screenHeight*0.1)
        submitBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        submitBtn.backgroundColor = colorWithHexString("#FFB6C1")
        submitBtn.layer.borderColor = colorWithHexString("#FFB6C1").CGColor
        submitBtn.layer.borderWidth = 2
        submitBtn.layer.cornerRadius = 12
        submitBtn.setTitle("确定", forState: UIControlState.Normal)
        self.view.addSubview(submitBtn)
        submitBtn.addTarget(self, action: #selector(submitBtnClick(_:)), forControlEvents: .TouchUpInside)
        
        //分词构建
        let Arr = addPoemElement(self.level)
        
        let skView = self.view as! SKView
        skView.showsFPS = false
        skView.showsNodeCount = false
        skView.ignoresSiblingOrder = true
        if let scene = GameScene(fileNamed:"GameScene") {
            scene.backgroundPic = self.poName
            scene.mArr=Arr
            scene.scaleMode = .Fill
            skView.presentScene(scene)
        }
    }
    
    func addPoemElement(level:Int)->NSMutableArray{
        print(pList.count)
        let pelements:NSMutableArray = []
        //取出model
        for i in 0..<pList.count{
            if i==level{
                var j = 0
                for tuples in pList[i]as!NSDictionary{
                    if j==0 {
                        self.answer = tuples.value as! String
                        self.poName = tuples.value as! String
                        print(self.answer)
                    }
                    
                    if j==1{
                        poemContent = tuples.value as! String
                        
                        let arr:NSArray = stringTokenizerWithWord(tuples.value as! NSString)
                        
                        for i in 0..<arr.count{
                            //添加各种关键字变成动图放在场景的备选项中
                            if arr[i].containsString("床"){
                                pelements.addObject("bed")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("月"){
                                pelements.addObject("moon")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("霜"){
                                pelements.addObject("frost")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("举头"){
                                pelements.addObject("lookUp")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("故乡"){
                                pelements.addObject("hometown")
                                print(arr[i])
                                continue
                            }
                            
                            
                            
                            if arr[i].containsString("锄禾"){
                                pelements.addObject("chuhe")
                                print(arr[i])
                                continue
                            }
                          
                            if arr[i].containsString("日"){
                                pelements.addObject("sun")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("汗"){
                                pelements.addObject("han")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("盘"){
                                pelements.addObject("pan")
                                print(arr[i])
                                continue
                            }
                            
                            
                            if arr[i].containsString("眠"){
                                pelements.addObject("sleep")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("鸟"){
                                pelements.addObject("birds")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("风雨"){
                                pelements.addObject("rain")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("花落"){
                                pelements.addObject("flower")
                                print(arr[i])
                                continue
                            }
                            
                            
                            
                            if arr[i].containsString("黄鹂"){
                                pelements.addObject("huangli")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("柳"){
                                pelements.addObject("liu")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("白鹭"){
                                pelements.addObject("bailu")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("西岭"){
                                pelements.addObject("xiling")
                                print(arr[i])
                                continue
                            }
                            if arr[i].containsString("雪"){
                                pelements.addObject("snow")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("船"){
                                pelements.addObject("ship")
                                print(arr[i])
                                continue
                            }
                            
                            
                            if arr[i].containsString("鹅"){
                                pelements.addObject("e")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("水"){
                                pelements.addObject("steam")
                                print(arr[i])
                                continue
                            }
                            
                            
                            if arr[i].containsString("泉"){
                                pelements.addObject("quan")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("树"){
                                pelements.addObject("tree")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("荷"){
                                pelements.addObject("hehua")
                                print(arr[i])
                                continue
                            }
                            
                            if arr[i].containsString("蜻"){
                                pelements.addObject("qingting")
                                print(arr[i])
                                continue
                            }
                            
                        }
                    }
                    j += 1
                }
            }
        }
        return pelements
    }
    
    //分词算法
    func stringTokenizerWithWord(word:NSString)->NSArray{
        let keyWords = NSMutableArray()
        var keyword:String
        
        let ref:CFStringTokenizerRef = CFStringTokenizerCreate(kCFAllocatorSystemDefault,word, CFRangeMake(0, word.length), kCFStringTokenizerUnitWord, CFLocaleGetSystem())
        var range:CFRange
        CFStringTokenizerAdvanceToNextToken(ref);
        range=CFStringTokenizerGetCurrentTokenRange(ref);
        while(range.length>0){
            keyword = word.substringWithRange(NSMakeRange(range.location, range.length))
            //print(keyword)
            keyWords.addObject(keyword)
            CFStringTokenizerAdvanceToNextToken(ref)
            range=CFStringTokenizerGetCurrentTokenRange(ref)
        }
        return keyWords;
        
    }
    
    func backBtnClick(_: UIButton){
        print("返回")
        let mvc = ViewController()
        mvc.modalTransitionStyle = .CrossDissolve
        self.presentViewController(mvc, animated: true, completion: nil)
        
    }
    
    func submitBtnClick(_: UIButton){
        print("提交")
    
        let rvc = ResultViewController()
        rvc.modalTransitionStyle = .CrossDissolve
        rvc.poetryName = answer
        rvc.nextLevel = self.level+1
        rvc.poemContent = self.poemContent
        rvc.writwContent = txtAns.text
        self.presentViewController(rvc, animated: true, completion: nil)
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
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if self.txtAns == textField{
            textField.resignFirstResponder()
        }
        return true
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        txtAns.endEditing(true)
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
