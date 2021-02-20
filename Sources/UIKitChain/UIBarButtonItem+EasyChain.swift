//
//  UIBarButtonItem+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

public extension EasyChain where Base: UIBarButtonItem {

    @discardableResult
    func style(_ style: UIBarButtonItem.Style) -> Self {
        return make { $0.style = style }
    }

    @discardableResult
    func width(_ width: CGFloat) -> Self {
        return make { $0.width = width }
    }

    @discardableResult
    func possibleTitles(_ possibleTitles: Set<String>?) -> Self {
        return make { $0.possibleTitles = possibleTitles }
    }

    @discardableResult
    func customView(_ customView: UIView?) -> Self {
        return make { $0.customView = customView }
    }

    @discardableResult
    func action(_ action: Selector?) -> Self {
        return make { $0.action = action }
    }

    @discardableResult
    func target(_ target: AnyObject?) -> Self {
        return make { $0.target = target }
    }

    @available(iOS 14.0, *)
    @discardableResult
    func primaryAction(_ primaryAction: UIAction?) -> Self {
        return make { $0.primaryAction = primaryAction }
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func menu(_ menu: UIMenu?) -> Self {
        return make { $0.menu = menu }
    }
    
    @available(iOS 5.0, *)
    @discardableResult
    func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> Self {
        return make { $0.setBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics)}
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    func setBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, style: UIBarButtonItem.Style, barMetrics: UIBarMetrics) -> Self {
        return make { $0.setBackgroundImage(backgroundImage, for: state, style: style, barMetrics: barMetrics) }
    }

    @available(iOS 5.0, *)
    @discardableResult
    func tintColor(_ tintColor: UIColor?) -> Self {
        return make { $0.tintColor = tintColor }
    }
    
    @available(iOS 5.0, *)
    @discardableResult
    func setBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> Self {
        return make { $0.setBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics) }
    }
    
    @available(iOS 5.0, *)
    @discardableResult
    func setTitlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> Self {
        return make { $0.setTitlePositionAdjustment(adjustment, for: barMetrics) }
    }
    
    @available(iOS 5.0, *)
    @discardableResult
    func setBackButtonBackgroundImage(_ backgroundImage: UIImage?, for state: UIControl.State, barMetrics: UIBarMetrics) -> Self {
        return make { $0.setBackButtonBackgroundImage(backgroundImage, for: state, barMetrics: barMetrics) }
    }
    
    @available(iOS 5.0, *)
    @discardableResult
    func setBackButtonTitlePositionAdjustment(_ adjustment: UIOffset, for barMetrics: UIBarMetrics) -> Self {
        return make { $0.setBackButtonTitlePositionAdjustment(adjustment, for: barMetrics) }
    }

    @available(iOS 5.0, *)
    @discardableResult
    func setBackButtonBackgroundVerticalPositionAdjustment(_ adjustment: CGFloat, for barMetrics: UIBarMetrics) -> Self {
        return make { $0.setBackButtonBackgroundVerticalPositionAdjustment(adjustment, for: barMetrics) }
    }


}
