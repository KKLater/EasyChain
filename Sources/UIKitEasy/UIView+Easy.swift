//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit
import EasyChainCore

extension UIView: EasyCompatible {}


public extension UIView {
    enum CornerMode {
        case small
        case normal
        case large
    }
    
    enum ShadowMode {
        case small
        case normal
        case large
    }
}

public extension EasyChainCore.Easy where Base: UIView {

    var cornerMode: UIView.CornerMode? {
        set {
            switch newValue {
            case .small:
                wrapper.layer.cornerRadius = 4
            case .normal:
                wrapper.layer.cornerRadius = 8
            case .large:
                wrapper.layer.cornerRadius = 20
            case .none:
                wrapper.layer.cornerRadius = 0
            }
        }
        get {
            if wrapper.layer.cornerRadius == 4 {
                return .small
            } else if wrapper.layer.cornerRadius == 8 {
                return .normal
            } else if wrapper.layer.cornerRadius == 20 {
                return .large
            } else {
                return nil
            }
        }
    }
    
    
    /// only for set layer shadow
    /// getter will return nil
    var shadowMode: UIView.ShadowMode? {
        set {
            switch newValue {
            case .small:
                wrapper.layer.shadowColor = UIColor.black.withAlphaComponent(0.08).cgColor
                wrapper.layer.shadowOffset = CGSize(width: 0, height: 2)
                wrapper.layer.shadowRadius = 4
                wrapper.layer.shadowOpacity = 0.2
            case .normal:
                wrapper.layer.shadowColor = UIColor.black.withAlphaComponent(0.12).cgColor
                wrapper.layer.shadowOffset = CGSize(width: 0, height: 2)
                wrapper.layer.shadowRadius = 8
                wrapper.layer.shadowOpacity = 1
            case .large:
                wrapper.layer.shadowColor = UIColor.black.withAlphaComponent(0.3).cgColor
                wrapper.layer.shadowOffset = CGSize(width: 0, height: 2)
                wrapper.layer.shadowRadius = 20
                wrapper.layer.shadowOpacity = 1
            case .none:
                wrapper.layer.shadowOpacity = 0
                wrapper.layer.shadowColor = nil
                wrapper.layer.shadowOffset = CGSize(width: 0, height: -3)
                wrapper.layer.shadowRadius = 0
            }
        }
        get {
            return nil
        }
    }
}
