//
//  FactoryController.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/14.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import UIKit

class FactoryController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "工厂模式"
        
    }
    
    override func createPattern()
    {
        let people = CreatePeopleFactory.productPeople(for: .white)
        people.printColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
}
