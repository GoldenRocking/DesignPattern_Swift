//
//  SingletonController.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/19.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import UIKit

class SingletonController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "单例模式"
    }
    
    override func createPattern()
    {
        let single = Singleton.sharedInstance;
        let single2 = Singleton.sharedInstance;
        
        single.setDicValue(value: "1", for: "A")
        print(single.getDicValue(for: "A") ?? "nil")
        //打印地址
        print("address:\(Unmanaged.passUnretained(single).toOpaque() )")
        print("address:\(Unmanaged.passUnretained(single2).toOpaque() )")
       
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
