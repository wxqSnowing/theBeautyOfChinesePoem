//
//  GuideViewController.swift
//  PurePoetry
//
//  Created by 吴雪琴 on 16/5/29.
//  Copyright © 2016年 PureTime. All rights reserved.
//

import UIKit
import MediaPlayer

class GUideViewController: UIViewController {
    var pc:MPMoviePlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        click()
    }
    
    func click() {
        
        UIDevice.currentDevice().setValue(UIInterfaceOrientation.LandscapeLeft.rawValue, forKey: "orientation")
        pc = MPMoviePlayerViewController(contentURL: NSBundle.mainBundle().URLForResource("launch", withExtension: "mp4"))
        
        pc.moviePlayer.fullscreen = true
        pc.moviePlayer.scalingMode = MPMovieScalingMode.AspectFill
        
        pc.view.frame = self.view.bounds
        
        pc.moviePlayer.controlStyle = MPMovieControlStyle.None
        
        self.view.addSubview(pc.view)
        presentViewController(pc, animated: true, completion: nil)
        
        self.addNotification()
    }
    
    func addNotification(){
        let notificationCenter = NSNotificationCenter.defaultCenter()
        notificationCenter.addObserver(self, selector: #selector(GUideViewController.mediaPlayerPlaybackFinished(_:)), name: MPMoviePlayerPlaybackDidFinishNotification, object: self.pc.moviePlayer)
    }
    
    func mediaPlayerPlaybackFinished(notification:NSNotification) {
        //        print(self.pc.moviePlayer.playbackState)
        let mvc = ViewController()
        self.presentViewController(mvc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
}

