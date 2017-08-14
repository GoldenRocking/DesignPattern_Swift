//
//  Toy.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/14.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import Foundation


class People {
    func printColor(){
        
    }
}

class WhitePeople: People {
    override func printColor() {
        print("White Color")
    }
}

class YellowPeople: People {
    override func printColor() {
        print("Yellow Color")
    }
}

class BlackPeople: People {
    override func printColor() {
        print("Black Color")
    }
}
