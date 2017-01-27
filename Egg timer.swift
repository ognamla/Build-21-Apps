//
//  ViewController.swift
//  Menu Bars
//
//  Created by Mac on 2017/1/27.
//  Copyright © 2017年 SwiftCourse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var timeLabel: UILabel!
    var timer = Timer()
    var t = 210
    func timeDecreased() {
        if t > 0 {
            t -= 1
            timeLabel.text = String(t)
        } else {
            timer.invalidate()
        }
    }
    @IBAction func pulse(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timeDecreased), userInfo: nil, repeats: true)
        
    }
    @IBAction func plusTen(_ sender: Any) {
        t += 10
        timeLabel.text = String(t)
    }
    @IBAction func minusTen(_ sender: Any) {
        if t > 10 {
            t -= 10
            timeLabel.text = String(t)
        }
    }
    @IBAction func reset(_ sender: Any) {
        t = 210
        timeLabel.text = String(t)
    }
    
}

