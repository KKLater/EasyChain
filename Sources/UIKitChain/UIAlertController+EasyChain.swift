//
//  UIAlertController+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

extension UIAlertController {
    convenience init(preferredStyle: UIAlertController.Style) {
        self.init(title: nil, message: nil, preferredStyle: preferredStyle)
    }
}
public extension EasyChain where Base: UIAlertController {
    
    @discardableResult func addAction(_ action: UIAlertAction) -> Self {
        return make { $0.addAction(action) }
    }

    @available(iOS 9.0, *)
    @discardableResult func preferredAction(_ preferredAction: UIAlertAction?) -> Self {
        return make { $0.preferredAction = preferredAction }
    }
    
    @discardableResult func addTextField(configurationHandler: ((UITextField) -> Void)? = nil) -> Self {
        return make { $0.addTextField(configurationHandler: configurationHandler) }
    }
    
    @discardableResult func title(_ title: String?) -> Self {
        return make { $0.title = title }
    }

    @discardableResult func message(_ message: String?) -> Self {
        return make { $0.message = message }
    }
}

private var actionWrapperKey: UInt8 = 0
public extension UIAlertAction {
    var wrapper: UIAlertActionWrapper {
        set {
            objc_setAssociatedObject(self, &actionWrapperKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        get {
            if let chain = objc_getAssociatedObject(self, &actionWrapperKey) as? UIAlertActionWrapper {
                return chain
            }
            
            let chain = UIAlertActionWrapper()
            objc_setAssociatedObject(self, &actionWrapperKey, chain, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            return chain
            
        }
    }
}

extension UIAlertAction: EasyChainCompatible {}
extension EasyChain where Base: UIAlertAction {

 @discardableResult func title(_ title: String) -> Self {
        return make { $0.wrapper.title = title }
    }
    
    @discardableResult func style(_ style: UIAlertAction.Style) -> Self {
        return make { $0.wrapper.style = style }
    }
    
    @discardableResult func handle(_ handler: ((UIAlertAction) -> Void)?) -> Self {
        return make { $0.wrapper.handler = handler }
    }
    
    var action: UIAlertAction {
        return UIAlertAction(title: wrapper.wrapper.title, style: wrapper.wrapper.style, handler: wrapper.wrapper.handler)
    }
}

public class UIAlertActionWrapper {
    var title: String = ""
    var style: UIAlertAction.Style = .default
    var handler: ((UIAlertAction) -> Void)? = nil
}
