//
//  ViewController.swift
//  Animations
//
//  Created by Ognam.Chen on 2017/2/3.
//  Copyright © 2017年 SwiftCourse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var pic: UIImageView! // create an Image
    
    
    var timer = Timer()
    var counter = 0
    var isAnimating = false
    
    
    @IBOutlet var button: UIButton! // create a button then it could show changed title
    
    func start() { // a func decife how "timer work" Key word:
        
        if counter == 9 { // frame number of gif
            counter = 0
        }
        counter += 1
        pic.image = UIImage(named: "frame_\(counter)_delay-0.15s.gif")
    }
    
    @IBAction func start(_ sender: UIButton) {
        if isAnimating {
            
            timer.invalidate()
            button.setTitle("Start animation", for: .normal) // keyword: setTitle
            isAnimating = false
            
        } else {
            
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(getter: UITextRange.start), userInfo: nil, repeats: true)
            button.setTitle("Stop animation", for: .normal)
            isAnimating = true
            
        }
    }
    
    @IBAction func fadein(_ sender: Any) {// Key word: alpha, animate, UIView
        pic.alpha = 0
        UIView.animate(withDuration: 0.2, animations: {
            self.pic.alpha = 1
        })
        
    }
    
    @IBAction func slidein(_ sender: Any) { // CGpoint
        pic.center = CGPoint(x: pic.center.x, y: pic.center.y-200)
        UIView.animate(withDuration: 0.2, animations: {
            self.pic.center = CGPoint(x: self.pic.center.x, y: self.pic.center.y + 200)
        })
    }
    
    @IBAction func grow(_ sender: Any) { // CGRect
        pic.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        UIView.animate(withDuration: 0.2, animations: {
            self.pic.frame = CGRect(x: 16, y: 139, width: self.pic.frame.width + 343, height: self.pic.frame.height + 234)
        })
        
        
        
    }
    
    
}
