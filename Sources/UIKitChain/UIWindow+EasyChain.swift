//
//  UIWindow+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

public extension EasyChain where Base: UIWindow {
 
    @available(iOS 13.0, *)
    @discardableResult func windowScene(_ windowScene: UIWindowScene?) -> Self {
        make { $0.windowScene = windowScene }
    }

    @discardableResult func canResizeToFitContent(_ canResizeToFitContent: Bool) -> Self {
        make { $0.canResizeToFitContent = canResizeToFitContent }
    }

    @available(iOS 3.2, *)
    @discardableResult func screen(_ screen: UIScreen) -> Self {
        make { $0.screen = screen }
    }

    @discardableResult func windowLevel(_ windowLevel: UIWindow.Level) -> Self {
        make { $0.windowLevel = windowLevel }
    }

    @discardableResult func becomeKey() -> Self {
        make { $0.becomeKey() }
    }

    @discardableResult func resignKey() -> Self {
        make { $0.resignKey() }
    }

    @discardableResult func makeKey() -> Self {
        make { $0.makeKey() }
    }

    @discardableResult func makeKeyAndVisible() -> Self {
        make { $0.makeKeyAndVisible() }
    }
    
    @discardableResult func sendEvent(_ event: UIEvent) -> Self {
        make { $0.sendEvent(event) }
    }
    
    @discardableResult func convert(_ point: CGPoint, to window: UIWindow?, closure: (CGPoint) -> Void) -> Self {
        make { closure($0.convert(point, to: window)) }
    }
    
    @discardableResult func convert(_ point: CGPoint, from window: UIWindow?, closure: (CGPoint) -> Void) -> Self {
        make { closure($0.convert(point, from: window)) }
    }
    
    @discardableResult func convert(_ rect: CGRect, to window: UIWindow?, closure: (CGRect) -> Void) -> Self {
        make { closure($0.convert(rect, to: window)) }
    }
    
    @discardableResult func convert(_ rect: CGRect, from window: UIWindow?, closure: (CGRect) -> Void) -> Self {
        make { closure($0.convert(rect, from: window)) }
    }

    @available(iOS 4.0, *)
    @discardableResult func rootViewController(_ rootViewController: UIViewController?) -> Self {
        make { $0.rootViewController = rootViewController }
    }
}
