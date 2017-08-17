//
//  AbstractFactoryController.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/16.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import UIKit

class AbstractFactoryController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = "抽象工厂模式"
        
    }
    
    override func createPattern()
    {
        let fac =  HumanFactory.makeHumanFactory(type: .man)
        var human = fac.CreateBlackHuman()
        human?.getColor()
        human?.getSex()
        
        human = fac.CreateWhiteHuman()
        human?.getSex()
        human?.getColor()
        
        human = fac.CreateYellowHuman()
        human?.getSex()
        human?.getColor()
        
        let fec =  HumanFactory.makeHumanFactory(type: .feman)
        var feman = fec.CreateBlackHuman()
        feman?.getColor()
        feman?.getSex()
        
        feman = fec.CreateWhiteHuman()
        feman?.getSex()
        feman?.getColor()
        
        feman = fec.CreateYellowHuman()
        feman?.getSex()
        feman?.getColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
