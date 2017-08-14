//
//  BaseController.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/14.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import UIKit

class BaseController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createPattern()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        createPattern()
    }
    
    func createPattern(){
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
