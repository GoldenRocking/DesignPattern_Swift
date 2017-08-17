//
//  Factory.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/16.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import Foundation


enum HumanType {
    case man
    case feman
}

class HumanFactory {
    
    func CreateBlackHuman() -> Human?  {
        return nil
    }
    
    func CreateWhiteHuman()-> Human? {
        return nil
    }
    func CreateYellowHuman() -> Human? {
        return nil
    }
    
    static func makeHumanFactory(type:HumanType) -> HumanFactory {
        
        switch type {
        case .man:
            return ManFactory()
        case .feman:
            return FemanFactory()
        }
    }
}

fileprivate class ManFactory : HumanFactory
{
    override func CreateBlackHuman() -> Human? {
        return BlackMan()
    }
    
    override func CreateWhiteHuman()-> Human? {
        return WhiteMan()
    }
    override func CreateYellowHuman() -> Human? {
        return YellowMan()
    }
}

fileprivate class FemanFactory : HumanFactory
{
    override func CreateBlackHuman() -> Human? {
        return BlackFeman()
    }
    
    override func CreateWhiteHuman() -> Human? {
        return WhiteFeman()
    }
    override func CreateYellowHuman() -> Human? {
        return YellowFeman()
    }
    
}

