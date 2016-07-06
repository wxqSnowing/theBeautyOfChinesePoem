//
//  Poetry.swift
//  PurePoetry
//
//  Created by 吴雪琴 on 16/5/29.
//  Copyright © 2016年 PureTime. All rights reserved.
//

import Foundation

class Poetry:NSObject{
    
    var poemName:String?
    var poem:String?
    var poemWritter:String?
    
    
    static let properties = ["poemName","poem","poemWritter"]
    
    init(dict:[String:AnyObject]) {
        
        super.init()
        
        for key in Poetry.properties{
            if dict[key] != nil{
                setValue(dict[key], forKey: key)
            }
        }
    }
    
    class func Poetry()->NSArray{
        let fileUrl = NSBundle.mainBundle().URLForResource("poem", withExtension: "plist")
        // 到出数组
        let poetryDictArr = NSArray(contentsOfURL: fileUrl!)
        
        let poetryModelsM = NSMutableArray(capacity: poetryDictArr!.count)
        
        for poetryDict in poetryDictArr! {
            poetryModelsM.addObject(poetryDict)
        }
        
        return poetryModelsM.copy()as!NSArray
    }
    
}
