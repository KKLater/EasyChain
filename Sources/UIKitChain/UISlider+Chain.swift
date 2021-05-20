//
//  UISlider+EashChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

public extension Chain where Base: UISlider {
    
    @discardableResult func value(_ value: Float) -> Self {
        make { $0.value = value }
    }
    
    @discardableResult func minimumValue(_ minimumValue: Float) -> Self {
        make { $0.minimumValue = minimumValue }
    }
    
    @discardableResult func maximumValue(_ maximumValue: Float) -> Self {
        make { $0.maximumValue = maximumValue }
    }
    
    @discardableResult func minimumValueImage(_ minimumValueImage: UIImage?) -> Self {
        make { $0.minimumValueImage = minimumValueImage }
    }
    
    @discardableResult func maximumValueImage(_ maximumValueImage: UIImage?) -> Self {
        make { $0.maximumValueImage = maximumValueImage }
    }
    
    @discardableResult func isContinuous(_ isContinuous: Bool) -> Self {
        make { $0.isContinuous = isContinuous }
    }
    
    @available(iOS 5.0, *)
    @discardableResult func minimumTrackTintColor(_ minimumTrackTintColor: UIColor?) -> Self {
        make { $0.minimumTrackTintColor = minimumTrackTintColor }
    }
    
    @available(iOS 5.0, *)
    @discardableResult func maximumTrackTintColor(_ maximumTrackTintColor: UIColor?) -> Self {
        make { $0.maximumTrackTintColor = maximumTrackTintColor }
    }
    
    @available(iOS 5.0, *)
    @discardableResult func thumbTintColor(_ thumbTintColor: UIColor?) -> Self {
        make { $0.thumbTintColor = thumbTintColor }
    }
    
    @discardableResult func setValue(_ value: Float, animated: Bool) -> Self {
        make { $0.setValue(value, animated: animated) }
    }
    
    @discardableResult func setThumbImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        make { $0.setThumbImage(image, for: state) }
    }
    
    @discardableResult func setMinimumTrackImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        make { $0.setMinimumTrackImage(image, for: state) }
    }
    
    @discardableResult func setMaximumTrackImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        make { $0.setMaximumTrackImage(image, for: state) }
    }
}
