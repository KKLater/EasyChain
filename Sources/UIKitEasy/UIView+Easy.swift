//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//


import UIKit

extension UIView: EasyCompatible {}

public extension Easy where Base: UIView {
    
    var x: CGFloat {
        set {
            wrapper.frame.origin.x = newValue
        }
        get {
            return wrapper.frame.origin.x
        }
    }
    
    var y: CGFloat {
        set {
            wrapper.frame.origin.y = newValue
        }
        get {
            return wrapper.frame.origin.y
        }
    }
    
    var width: CGFloat {
        set {
            wrapper.frame.size.width = newValue
        }
        get {
            return wrapper.frame.size.width
        }
    }
    
    var height: CGFloat {
        set {
            wrapper.frame.size.height = newValue
        }
        get {
            return wrapper.frame.size.height
        }
    }
    
    var centerX: CGFloat {
        set {
            wrapper.center.x = newValue
        }
        get {
            wrapper.center.x
        }
    }
    
    var centerY: CGFloat {
        set {
            wrapper.center.y = newValue
        }
        get {
            wrapper.center.y
        }
    }
    
    var left: CGFloat {
        set {
            wrapper.frame.origin.x = newValue
        }
        get {
            return wrapper.frame.origin.x
        }
    }
    
    var right: CGFloat {
        get {
            wrapper.frame.maxX
        }
    }
    
    var top: CGFloat {
        get {
            wrapper.frame.origin.x
        }
        set {
            wrapper.frame.origin.x = newValue
        }
    }
    
    var bottom: CGFloat {
        get {
            wrapper.frame.maxY
        }
    }
}


public extension Easy where Base: UIView {
var parentViewController: UIViewController? {
    weak var parentResponder: UIResponder? = wrapper
    while parentResponder != nil {
        parentResponder = parentResponder!.next
        if let viewController = parentResponder as? UIViewController {
            return viewController
        }
    }
    return nil
}

var firstResponder: UIView? {
    var views = [UIView](arrayLiteral: wrapper)
    var index = 0
    repeat {
        let view = views[index]
        if view.isFirstResponder {
            return view
        }
        views.append(contentsOf: view.subviews)
        index += 1
    } while index < views.count
    return nil
}
}

public extension Easy where Base: UIView {
class func loadFromNib<T: UIView>(named name: String, bundle: Bundle? = nil) -> T? {
    return UINib(nibName: name, bundle: bundle).instantiate(withOwner: nil, options: nil)[0] as? T
}
}

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

public extension Easy where Base: UIView {

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
