//
//  UITabBarItem+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

public extension EasyChain where Base: UITabBarItem {
    
    @available(iOS 7.0, *)
    @discardableResult
    func selectedImage(_ selectedImage: UIImage?) -> Self {
        return make { $0.selectedImage = selectedImage }
    }
    
    @discardableResult
    func badgeValue(_ badgeValue: String?) -> Self {
        return make { $0.badgeValue = badgeValue }
    }

    @available(iOS 5.0, *)
    @discardableResult
    func titlePositionAdjustment(_ titlePositionAdjustment: UIOffset) -> Self {
        return make { $0.titlePositionAdjustment = titlePositionAdjustment }
    }
    
    @available(iOS 10.0, *)
    @discardableResult
    func badgeColor(_ badgeColor: UIColor?) -> Self {
        return make { $0.badgeColor = badgeColor }
    }

    @available(iOS 10.0, *)
    @discardableResult
    func setBadgeTextAttributes(_ textAttributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> Self {
        return make { $0.setBadgeTextAttributes(textAttributes, for: state)}
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func standardAppearance(_ standardAppearance: UITabBarAppearance?) -> Self {
        return make { $0.standardAppearance = standardAppearance }
    }
}
