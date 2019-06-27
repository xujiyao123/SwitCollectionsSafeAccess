//
//  RandomExtension.swift
//  RiverChiefSystem
//
//  Created by 徐继垚 on 2019/6/27.
//  Copyright © 2019 sunnytu. All rights reserved.
//

import Foundation

extension Array {
    func randomElement() -> Iterator.Element? {
        if self.count == 0 {
            return nil
        }
        return self[Int(arc4random())%self.count]
    }
}

extension Int {
    /*这是一个内置函数
     lower : 内置为 0，可根据自己要获取的随机数进行修改。
     upper : 内置为 UInt32.max 的最大值，这里防止转化越界，造成的崩溃。
     返回的结果： [lower,upper) 之间的半开半闭区间的数。
     */
    static func randomIntNumber(lower: Int = 0,upper: Int = Int(UInt32.max)) -> Int {
        return lower + Int(arc4random_uniform(UInt32(upper - lower)))
    }
}
