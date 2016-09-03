//
//  ViewController.swift
//  CustomFont
//
//  Created by 顾晨洁 on 16/9/3.
//  Copyright © 2016年 henry4app. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataArray = ["夜雨寄北", "唐·李商隐", "君问归期未有期", "巴山夜雨涨秋池", "何当共剪西窗烛", "却话巴山夜雨时"]
    
    var fontNames = ["MFJinHei_Noncommercial-Regular", "MFTongXin_Noncommercial-Regular", "MFZhiHei_Noncommercial-Regular"]
    
    var fontRowIndex = 0
    
    
    @IBOutlet weak var fontTableView: UITableView!
    
    @IBAction func changeFontBtnClicked(sender: AnyObject) {
        
        fontRowIndex = (fontRowIndex + 1) % 3
        fontTableView.reloadData()
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fontTableView.delegate = self
        fontTableView.dataSource = self
        let cellNib = UINib(nibName: "fontCell", bundle: nil)
        fontTableView.registerNib(cellNib, forCellReuseIdentifier: "FontCell")
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FontCell", forIndexPath: indexPath) as! fontCell
        cell.fontLabel?.text = dataArray[indexPath.row]
        cell.fontLabel?.font = UIFont(name: fontNames[fontRowIndex], size: 20)
        cell.fontLabel?.textColor = UIColor.whiteColor()
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

