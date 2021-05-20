//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//


#if canImport(UIKit) && !os(watchOS)
import UIKit

// MARK: - Methods
extension UIViewController: EasyCompatible {}

public extension Easy where Base: UIViewController {
    
    func addChild(_ child: UIViewController, toContainerView containerView: UIView) {
        wrapper.addChild(child)
        containerView.addSubview(child.view)
        child.didMove(toParent: wrapper)
    }
    
    func removeFromParentViewController() {
        guard wrapper.parent != nil else { return }

        wrapper.willMove(toParent: nil)
        wrapper.removeFromParent()
        wrapper.view.removeFromSuperview()
    }
}

#endif
