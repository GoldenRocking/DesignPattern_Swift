//
//  Animal.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/8.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import Foundation

class Dog: Jumping {
    func jump() {
        print("Dog Jumps")
    }
}


class Cat: Jumping {
    func jump() {
        print("Cat Jumps")
    }
}


//方法2:新建FrogAdapter类
class FrogAdapter: Jumping {
    private let frog = Frog()
    func jump() {
        frog.leap()
    }
    
}

