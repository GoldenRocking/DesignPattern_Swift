//
//  AdapterPatternController.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/8.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import UIKit

class AdapterPatternController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "适配器模式"
        
        let dog = Dog()
        let cat = Cat()
        /*
        let frog = Frog()
        let animals : [Jumping] = [dog,cat,frog]
        */
        
        
        let frogAdapter = FrogAdapter()
        let animals : [Jumping] = [dog,cat,frogAdapter]
        
        jumpAll(animals: animals);
    }
    
    func jumpAll(animals: [Jumping]){
        for animal in animals {
            animal.jump()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
