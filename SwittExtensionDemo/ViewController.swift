//
//  ViewController.swift
//  SwittExtensionDemo
//
//  Created by 徐继垚 on 2019/6/27.
//  Copyright © 2019 徐继垚. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    
        var list = ["adwdaw" , "12312" , "21312" , "awdaw"]
        
        ///声明一个为nil的字符串
        let nilStr:String?
        nilStr = nil
        
        ///可以省去非空判断
        ///log: Warning! Array:["adwdaw", "12312", "21312", "awdaw"] add an nil element
        list.add(nilStr)
        
        ///使用系统方法强制展开会崩溃
//       list.append(nilStr!)
        if let s = nilStr {
            list.append(s)
        }
        
        ///安全的下标取值
        ///log：Warning! Array:["adwdaw", "12312", "21312", "awdaw"] object index:'5' out of bunds (0 , 4)
       let _ = list.objectAt(5)
       let _ = list[safe:5]
        ///此句会崩溃
//       let _ = list[5]
        
        ///可以吧字符串数组转为int
       let _ = list.intAt(2)
        ///无法转换会提示警告，并返回0
        ///log: Warning! Array:["adwdaw", "12312", "21312", "awdaw"]  int at index:'3' value:'awdaw' is not cover to Int!
       let _ = list.intAt(3)
    
        ///字符串数组直接输出double
       let _ = list.doubleAt(2)
    
        
        let list2 = [123,232,231,213]
        ///number数组转String
       let _ = list2.stringAt(0)
        
        
        var dict = ["name" : "adw" , "age" : "12" ]
        
        
        ///安全添加字典
        ///log：Warning! Dictionary:["name": "adw", "age": "12"] append an nil value key is 'sex'
        dict.set("sex", nilStr)
        
        ///如果强制展开会崩溃
//        dict["sex"] = nilStr!
        if let s = nilStr {
            dict["sex"] = s
        }
        
        
        ///不同类型互相转换
        let _ = dict.string("name")
        ///log: Warning! Dictionary:["name": "adw", "age": "12"] int for key:'name' value:'adw' is not cover to Int!
        let _ = dict.int("name")
        let _ = dict.int("age")
        
        let dict2 = ["name" : 233 , "age" : 12 ]
        let _ = dict2.string("age")
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }


}

