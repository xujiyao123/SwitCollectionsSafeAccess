//
//  CollectionsSafeAccess.swift
//  RiverChiefSystem
//
//  Created by 徐继垚 on 2019/6/27.
//  Copyright © 2019 sunnytu. All rights reserved.
//


extension Array {
    mutating func add(_ safeObject:Iterator.Element?) {
        if let o = safeObject {
            self.append(o)
        }else {
            print("Warning! Array:\(self) add an nil element")
        }
    }
}

extension Array {
    
    subscript (safe index: Index) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
    
    func objectAt(_ index : Int) -> Iterator.Element? {
        if index < self.count {
            return self[index]
        }else {
            print("Warning! Array:\(self) object index:'\(index)' out of bunds (0 , \(self.count))")
            return nil
        }
    }
    
    func stringAt(_ index : Int) -> String {
        let value = self.objectAt(index)
        if value == nil {
            return ""
        }
        if let s = value as? String {
            return s
        }
        if let i = value as? Int {
            return i.description
        }
        if let d = value as? Double {
            return d.description
        }
        return ""
    }
    
    func intAt(_ index : Int) -> Int {
        let value = self.objectAt(index)
        if value == nil {
            return 0
        }
        if let s = value as? String {
         
            if let n = Int(s) {
                return n
            }else {
                print("Warning! Array:\(self)  int at index:'\(index)' value:'\(s)' is not cover to Int!")
                return 0
            }
        }
        if let i = value as? Int {
            return i
        }
        if let d = value as? Double {
            return Int(d)
        }
        return 0
    }
    func doubleAt(_ index : Int) -> Double {
        let value = self.objectAt(index)
        if value == nil {
            return 0.0
        }
        if let s = value as? String {
            if let n = Double(s) {
                return n
            }else {
                print("Warning! Array:\(self)  int at index:'\(index)' value:'\(s)' is not cover to Double!")
                return 0.0
            }
        }
        if let i = value as? Int {
            return Double(i)
        }
        if let d = value as? Double {
            return d
        }
        return 0.0
    }
}



extension Dictionary {
    mutating func set(_ key : Dictionary.Key , _ value : Dictionary.Value?) {
        if let o = value {
            self[key] =  o
        } else {
            print("Warning! Dictionary:\(self) append an nil value key is '\(key)'")
        }
    }
    
    func object(_ key : Dictionary.Key) -> Dictionary.Value? {
        let value = self[key]
        if value == nil {
            return nil
        }
        return value
    }
    func string(_ key : Dictionary.Key) -> String {
        let value = self[key]
        if value == nil {
            return ""
        }
        if let s = value as? String {
            return s
        }
        if let i = value as? Int {
            return i.description
        }
        if let d = value as? Double {
            return d.description
        }
        return ""
    }
    func int(_ key : Dictionary.Key) -> Int {
        let value = self[key]
        if value == nil {
            return 0
        }
        if let s = value as? String {
            
            if let n = Int(s) {
                return n
            }else {
                print("Warning! Dictionary:\(self) int for key:'\(key)' value:'\(s)' is not cover to Int!")
                return 0
            }

        }
        if let i = value as? Int {
            return i
        }
        if let d = value as? Double {
            return Int(d)
        }
        return 0
    }
    func double(_ key : Dictionary.Key) -> Double {
        let value = self[key]
        if value == nil {
            return 0.0
        }
        if let s = value as? String {
            if let n = Double(s) {
                return n
            }else {
                print("Warning! Dictionary:\(self) int for key:'\(key)' value:'\(s)' is not cover to Double!")
                return 0
            }
        }
        if let i = value as? Int {
            return Double(i)
        }
        if let d = value as? Double {
            return d
        }
        return 0.0
    }
}
