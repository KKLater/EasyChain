//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit

extension UIScreen: EasyCompatible {}

public extension Easy where Base: UIScreen {

    static var mainWidth: CGFloat {
        Base.main.bounds.width
    }
    
    static var mainHeight: CGFloat {
        Base.main.bounds.height
    }
    
    static var mainSize: CGSize {
        Base.main.bounds.size
    }
    
    @available(iOS 4.0, *)
    static var mainScale: CGFloat {
        Base.main.scale
    }
    
    static var mainBrightness: CGFloat {
        Base.main.brightness
    }
}
