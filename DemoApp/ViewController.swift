//
//  ViewController.swift
//  DemoApp
//
//  Created by KhanhPhung on 13/4/15.
//  Copyright (c) 2015 Online Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView:UIImageView = UIImageView()
    var backgroundDict: Dictionary<String, String> = Dictionary()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width:CGFloat = 320
        let height:CGFloat = 528
        backgroundDict = ["Background1":"background1", "Background2":"background2"]
        var buttonTitles = ["Background 1", "Background 2"]
        
        var view:UIView = UIView(frame: CGRectMake(0, 0, width, height))
        self.view.addSubview(view)
        
        var backgroundImage:UIImage? = UIImage(named:"background1")
        
        
        imageView.image = backgroundImage
        
        view.addSubview(imageView)
        
        for i in 0...buttonTitles.count-1{
            var button:UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
            button.frame = CGRectMake(0, 0, 200, 20)
            button.center  = CGPointMake(view.center.x, CGFloat(100+i*50))
            button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)

            button.setTitle("title", forState: UIControlState.Normal)
            button.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
            button.tag = i+1
            view.addSubview(button)
            
        }
        
    }
    
    func buttonClicked(sender:UIButton){
        println("button clicked")
        var button:UIButton = sender
        var imageSelector:String = "Background\(button.tag)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

