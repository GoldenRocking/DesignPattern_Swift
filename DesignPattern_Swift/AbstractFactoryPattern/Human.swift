//
//  Wardrobe.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/16.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import Foundation


protocol HumanColor {
    func getColor()
}


protocol HumanSex {
    func getSex()
}

protocol Human : HumanSex,HumanColor {
    
}


class BlackHuman : Human {
    func getColor() {
        print("Black")
    }
    func getSex(){
        
    }
}

class BlackMan: BlackHuman {
    override func getSex() {
        print("BlackMan")
    }
}

class BlackFeman: BlackHuman {
    override func getSex() {
        print("BlackFeman")
    }
}

class WhiteHuman : Human {
    func getColor() {
        print("White")
    }
    
    func getSex() {
        
    }
}

class WhiteMan: WhiteHuman {
    override func getSex() {
        print("WhiteMan")
    }
}

class WhiteFeman: WhiteHuman {
    override func getSex() {
        print("WhiteFeman")
    }
}

class YellowHuman : Human {
    func getColor() {
        print("Yellow")
    }
    func getSex() {
    
    }
}

class YellowMan: YellowHuman {
   override func getSex() {
        print("YellowMan")
    }
}

class YellowFeman: YellowHuman {
   override func getSex() {
        print("YellowFeman")
    }
}

