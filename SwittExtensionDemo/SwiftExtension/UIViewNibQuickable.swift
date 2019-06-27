//
//  UIViewNibQuickable.swift
//  RiverChiefSystem
//
//  Created by 徐继垚 on 2019/6/27.
//  Copyright © 2019 sunnytu. All rights reserved.
//

import UIKit

extension UIView {
    
    
    public class func loadNib() -> UINib {
        return loadNib(nibName: "\(self)")
    }
    
    public class func loadNib(nibName : String ,
                              bundle : Bundle = Bundle.main) -> UINib {
        return UINib(nibName: nibName, bundle: bundle)
    }
    
    
    public class func loadInstanceFromNib() -> Self? {
        return loadInstanceFromNib( nibName: "\(self)")
    }

    
    
    public class func loadInstanceFromNib(nibName : String ,
                                          owner : Any? = nil,
                                          bundle : Bundle = Bundle.main) -> Self? {
        
        var result : UIView?
        result = nil
        
        if let elements = bundle.loadNibNamed(nibName, owner: owner, options: nil) {
            for object : UIView in elements as! [UIView] {
                if object.isKind(of: self) {
                    result = object
                    break
                }
            }
        }
        
        if let r = result {
            return unsafeDowncast(r, to: self)
        } else {
            return nil
        }
    }
}
