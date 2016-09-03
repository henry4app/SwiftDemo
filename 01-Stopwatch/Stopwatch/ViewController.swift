//
//  ViewController.swift
//  Stopwatch
//
//  Created by 顾晨洁 on 16/9/3.
//  Copyright © 2016年 henry4app. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var startBtn: UIButton!
    
    var counter = 0.0
    var timer = NSTimer()
    var isPlaying = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = String(counter)
    }
    
    @IBAction func startBtnClicked(sender: UIButton) {
        
        if isPlaying {
            resetBtn.enabled = true
            sender.setTitle("启动", forState: UIControlState.Normal)
            sender.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            isPlaying = false
            timer.invalidate()
            print("pausing")
            return
        }
        
        sender.setTitle("暂停", forState: UIControlState.Normal)
        sender.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        isPlaying = true
        print("playing")
        resetBtn.enabled = false
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
    }
    
    func updateTimer() {
        counter += 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }
    
    @IBAction func resetBtnClicked(sender: UIButton) {

            timer.invalidate()
            counter = 0.0
            timeLabel.text = String(counter)
            isPlaying = false
            startBtn.setTitle("启动", forState: UIControlState.Normal)
            startBtn.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
            sender.enabled = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

