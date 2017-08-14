//
//  Factory.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/14.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import Foundation

enum PeopleColor {
    case white
    case yellow
    case black
}

class CreatePeopleFactory {
    static func productPeople(for color: PeopleColor) -> People{
        switch color {
        case .white:
            return WhitePeople()
        case .yellow:
            return YellowPeople()
        case .black:
            return BlackPeople()
        }
    }
}

