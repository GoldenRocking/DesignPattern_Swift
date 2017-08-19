//
//  Singleton.swift
//  DesignPattern_Swift
//
//  Created by guoruiqing on 2017/8/19.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import Foundation

class Singleton {
    
    private let concurrentQueue = DispatchQueue(label: "ConcurrentQueue",  attributes: .concurrent, target: nil)
    private var queueDic = [String: String]()
    
    static let sharedInstance = Singleton()
    private init(){
        
    }
    
    func setDicValue(value: String, for key: String){
        
        concurrentQueue.async(flags: .barrier) {
            self.queueDic[key] = value
        }
    }
    
    
    func getDicValue(for key: String) -> String? {
        var result: String?
        
        concurrentQueue.sync {
            result = queueDic[key]
        }
        return result
    }
}

