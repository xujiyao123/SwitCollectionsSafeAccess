//
//  UIViewTapActionQuickable.swift
//  RiverChiefSystem
//
//  Created by 徐继垚 on 2019/6/27.
//  Copyright © 2019 sunnytu. All rights reserved.
//

import UIKit


extension UIView {
    
    func addTapAction() {
        
        let sel: Selector!
        let name : String = NSStringFromClass(type(of: self))
        let newname =  name.substring(to: name.index(name.startIndex, offsetBy: 2))
        if newname == "UI" {
            sel = Selector(("tapAction"))
        }else {
            sel = Selector("\(newname.lowercased())Action")
        }
        addTapAction(sel)
    }
    
    func addTapAction(_ selector : Selector) {
        var vc: NSObject = self
        while true {
            vc = (vc as! UIResponder).next!
            if vc.isKind(of: UIViewController.self) {
                addTapAction(vc, selector)
                return
            }
        }
    }
    
    func addTapAction(_ target : Any ,_ selector : Selector) {
        self.isUserInteractionEnabled = true
        self.addGestureRecognizer(UITapGestureRecognizer(target: target, action: selector))
    }
    
    
}
