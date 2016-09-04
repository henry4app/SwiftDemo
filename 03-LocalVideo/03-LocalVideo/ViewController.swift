//
//  ViewController.swift
//  03-LocalVideo
//
//  Created by 顾晨洁 on 16/9/4.
//  Copyright © 2016年 henry4app. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var videoTableView: UITableView!
    
    var data = [
        
        Video(image: "videoScreenshot01", title: "Introduce 3DS Mario", source: "Youtube - 06:32"),
        Video(image: "videoScreenshot02", title: "Emoji Among Us", source: "Vimeo - 3:34"),
        Video(image: "videoScreenshot03", title: "Seals Documentary", source: "Vine - 00:06"),
        Video(image: "videoScreenshot04", title: "Adventure Time", source: "Youtube - 02:39"),
        Video(image: "videoScreenshot05", title: "Facebook HQ", source: "Facebook - 10:20"),
        Video(image: "videoScreenshot06", title: "Lijiang Lugu Lake", source: "Allen - 20:30")
        
    ]
    
    var playerViewController = AVPlayerViewController()
    var playerView = AVPlayer()
    
    @IBAction func playBtnClicked(sender: AnyObject) {
        let path = NSBundle.mainBundle().pathForResource("emoji zone", ofType: "mp4")
        playerView = AVPlayer(URL: NSURL(fileURLWithPath: path!))
        playerViewController.player = playerView
        self.presentViewController(playerViewController, animated: true) { 
            self.playerViewController.player?.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        videoTableView.delegate = self
        videoTableView.dataSource = self
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("VideoCell", forIndexPath: indexPath) as! VideoCell
        
        let video = data[indexPath.row]
        cell.videoScreenshot.image = UIImage(named: video.image)
        cell.videoSourceLabel.text = video.source
        cell.videoTitleLabel.text = video.title
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 220;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

