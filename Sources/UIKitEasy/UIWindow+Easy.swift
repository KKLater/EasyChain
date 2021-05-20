//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit

extension UIWindow: EasyCompatible {}

public extension Easy where Base: UIWindow {

    var isMain: Bool {
        return UIApplication.easy.mainWindow == wrapper
    }
    
    func switchRootViewController(to viewController: UIViewController, animated: Bool = true, duration: TimeInterval = 0.5, options: UIView.AnimationOptions = .transitionFlipFromRight, _ completion: (() -> Void)? = nil) {
        guard animated else {
            wrapper.rootViewController = viewController
            completion?()
            return
        }

        UIView.transition(with: wrapper, duration: duration, options: options, animations: {
            let oldState = UIView.areAnimationsEnabled
            UIView.setAnimationsEnabled(false)
            self.wrapper.rootViewController = viewController
            UIView.setAnimationsEnabled(oldState)
        }, completion: { _ in
            completion?()
        })
    }
}

