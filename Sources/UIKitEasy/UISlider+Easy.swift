//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//


import UIKit

public extension Easy where Base: UISlider {
       
    /// 设置当前值
    /// - Parameters:
    ///   - value: 当前值
    ///   - animated: 是否是动效滑动到当前值标识位置
    ///   - duration: 动效时长
    ///   - completion: 设置当前值结束
    func setValue(_ value: Float, animated: Bool = true, duration: TimeInterval = 1, completion: (() -> Void)? = nil) {
        if animated {
            UIView.animate(withDuration: duration, animations: {
                self.wrapper.setValue(value, animated: true)
            }, completion: { _ in
                completion?()
            })
        } else {
            wrapper.setValue(value, animated: false)
            completion?()
        }
    }
}
