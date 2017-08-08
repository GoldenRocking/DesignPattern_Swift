//
//  Dog.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/8.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import Foundation

class Frog{
    func leap(){
        print("Frog Leaps")
    }
}


//方法1:给Frog类 添加扩展
extension  Frog:Jumping{
    func jump() {
        leap()
    }
}

