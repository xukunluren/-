//
//  ViewController.swift
//  观察者模式
//
//  Created by admin on 15/9/24.
//  Copyright © 2015年 xukun. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
 
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.grayColor()
        self.navigationItem.title = "首页"
        
        let navRightButton = UIBarButtonItem(title: "下一页", style: UIBarButtonItemStyle.Plain, target: self, action: "weituo")
        
        self.navigationItem.rightBarButtonItem = navRightButton
        
       

      createbutton()
        
        //注册了一个名为xukun的通知中心
        
        NSNotificationCenter .defaultCenter().addObserver(self, selector: "update", name: "xukun", object: nil)
        
    }
    
    //通知中心注册的方法
    func update(){
    let alert = UIAlertView()
        alert.title = "通知中心"
        alert.message = "通知中心事件  --  by 许坤"
        alert.addButtonWithTitle("确定")
        alert.show()
    }
    
    
    
    
    
    func createbutton(){
        let  button1 = UIButton(type: UIButtonType.System)
        button1.frame = CGRectMake(50, 100, 200, 30)
        button1.setTitle("通知中心", forState: UIControlState.Normal)
        button1.addTarget(self, action: "tongzhizhongxin", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button1)
        
        
        let  button2 = UIButton(type: UIButtonType.System)
        button2.frame = CGRectMake(50,200, 200, 30)
        button2.setTitle("通知中心", forState: UIControlState.Normal)
        button2.addTarget(self, action: "weituo", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button2)
    
    }
    //NSNotificationCenter点击事件
    func tongzhizhongxin(){
    print("ceshi")
        //注册的通知在此处发出
        NSNotificationCenter .defaultCenter().postNotificationName("xukun", object: nil)
    }
    
    func weituo(){
        let second = secondView()

        let na = UINavigationController(rootViewController: second)
        self.presentViewController(na, animated: true) { () -> Void in
         
            
        }
        
    
    }

}

