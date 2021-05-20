//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit

extension UIApplication: EasyCompatible {}

private var mainWindowKey: UInt8 = 0

public extension Easy where Base: UIApplication {

    static var mainWindow: UIWindow? {
        set {
            objc_setAssociatedObject(self, &mainWindowKey, newValue, .OBJC_ASSOCIATION_RETAIN)
        }
        get {
            if let mw = objc_getAssociatedObject(self, &mainWindowKey) as? UIWindow {
                return mw
            }
            return nil
        }
    }
}

