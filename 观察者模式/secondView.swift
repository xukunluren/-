//
//  secondView.swift
//  观察者模式
//
//  Created by admin on 15/9/24.
//  Copyright © 2015年 xukun. All rights reserved.
//

import UIKit


class secondView: UIViewController {

    override func viewDidLoad(){
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.grayColor()
        let navRightButton = UIBarButtonItem(title: "上一页", style: UIBarButtonItemStyle.Plain, target: self, action: "back")
        
        self.navigationItem.leftBarButtonItem = navRightButton
        
        let  button2 = UIButton(type: UIButtonType.System)
        button2.frame = CGRectMake(50,200, 200, 30)
        button2.setTitle("通知中心", forState: UIControlState.Normal)
        button2.addTarget(self, action: "tongzhizhongxin", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button2)

        // Do any additional setup after loading the view.
    }
    
    func tongzhizhongxin(){
    
        print("nihao")
        NSNotificationCenter .defaultCenter().postNotificationName("xukun", object: nil)
    }
    
    
    func back(){
    let first = ViewController()
    self.presentViewController(first, animated: true) { () -> Void in
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
