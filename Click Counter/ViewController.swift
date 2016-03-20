//
//  ViewController.swift
//  Click Counter
//
//  Created by Souji on 3/5/16.
//  Copyright © 2016 Souji. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var UIviewcontroller: UIViewController?
    var count = 0
    @IBOutlet var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var label = UILabel()
        label.frame = CGRect(x: 170,y: 150,width: 60,height: 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        self.view.backgroundColor = UIColor.redColor()
        
        //Add increment Button
        var button = UIButton()
        button.frame = CGRect(x: 100, y: 200, width: 50, height: 50)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
      
        
        
        // Add decrement button
        
        var buttonD = UIButton()
        buttonD.frame = CGRect(x: 200, y: 200, width: 50, height: 50)
        buttonD.setTitle("Click", forState: .Normal)
        buttonD.setTitleColor(UIColor.blackColor(), forState: .Normal)
        self.view.addSubview(buttonD)
        
        
        buttonD.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
     
        
    }
    
    func incrementCount(){
        
        self.count++
        self.label.text = "\(self.count)"
        self.view.backgroundColor = toggleColor()
    
    }
    
    
    func decrementCount() {
        
        self.count--
        self.label.text = "\(self.count)"
        self.view.backgroundColor = toggleColor()
    }
    
    
    func toggleColor() -> UIColor {
        
    let backgroundColor = UIColor(red: CGFloat(Float(arc4random()) / Float(UINT32_MAX)), green: CGFloat(Float(arc4random()) / Float(UINT32_MAX)), blue: CGFloat(Float(arc4random()) / Float(UINT32_MAX)), alpha: 1)
    
        return backgroundColor
    
    }
    
}

