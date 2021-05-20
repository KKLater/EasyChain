//
//  UISwitch+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

public extension Chain where Base: UISwitch {
    
    @available(iOS 5.0, *)
    @discardableResult func onTintColor(_ onTintColor: UIColor?) -> Self {
        make { $0.onTintColor = onTintColor }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func thumbTintColor(_ thumbTintColor: UIColor?) -> Self {
        make { $0.thumbTintColor = thumbTintColor }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func onImage(_ onImage: UIImage?) -> Self {
        make { $0.onImage = onImage }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func offImage(_ offImage: UIImage?) -> Self {
        make { $0.offImage = offImage }
    }
    
    @available(iOS 14.0, *)
    @discardableResult func title(_ title: String?) -> Self {
        make { $0.title = title }
    }
    
    @available(iOS 14.0, *)
    @discardableResult func preferredStyle(_ preferredStyle: UISwitch.Style) -> Self {
        make { $0.preferredStyle = preferredStyle }
    }
    
    @discardableResult func setOn(_ isOn: Bool, animated: Bool) -> Self {
        make { $0.setOn(isOn, animated: animated) }
    }
}
