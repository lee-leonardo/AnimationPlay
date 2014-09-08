//
//  ViewController.swift
//  AnimationPlay
//
//  Created by Leonardo Lee on 9/6/14.
//  Copyright (c) 2014 Leonardo Lee. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(animated: Bool) {
        
        var redBall = UIView(frame: CGRectMake(50, 50, 100, 100))
        redBall.backgroundColor = UIColor.redColor()
        redBall.layer.cornerRadius = 50
        self.view.addSubview(redBall)
        
        var oval = UIView(frame: CGRectMake(80, 200, 50, 100))
        oval.backgroundColor = UIColor.blueColor()
        oval.layer.cornerRadius = 15
        self.view.addSubview(oval)
        
        UIView.animateWithDuration(0.5, delay: 0, options: UIViewAnimationOptions.CurveEaseInOut, animations: {
            () -> Void in
            redBall.transform = CGAffineTransformConcat(CGAffineTransformMakeScale(2, 2), CGAffineTransformMakeTranslation(75, 0))
            
            redBall.backgroundColor = UIColor.greenColor()
            
            }, completion: nil)
        
        
        //CAAnimations are attached to either a CALayer object or a layer property of a UIView.
        var layer = CALayer() //This is how you can make a CALayer.
        //From the docs
        //Layer objects must have a content property with the bitmap.
        //
        
        
        var translateX = 15
        var translateY = 15
        
        UIView.animateWithDuration(1, delay: 0.2, options: UIViewAnimationOptions.CurveEaseInOut, animations: { () -> Void in
            oval.transform = CGAffineTransformRotate(oval.layer.affineTransform(), CGFloat(M_2_PI))

        }) { (bool) -> Void in
            UIView.animateWithDuration(2, animations: { () -> Void in
                oval.transform = CGAffineTransformMakeTranslation(oval.center.x + translateX, oval.center.y + translateY)
            })
        }
        
        
        //var viewLayer = UIView(frame: CGRectMake(50, 50, 100, 100))
        //viewLayer.layer
        
        
        //JNWSpringAnimation may be something interesting to look into!

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

