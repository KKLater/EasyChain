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
    @discardableResult
    func windowScene(_ windowScene: UIWindowScene?) -> Self {
        return make { $0.windowScene = windowScene }
    }

    @discardableResult
    func canResizeToFitContent(_ canResizeToFitContent: Bool) -> Self {
        return make { $0.canResizeToFitContent = canResizeToFitContent }
    }

    @available(iOS 3.2, *)
    @discardableResult
    func screen(_ screen: UIScreen) -> Self {
        return make { $0.screen = screen }
    }

    @discardableResult
    func windowLevel(_ windowLevel: UIWindow.Level) -> Self {
        return make { $0.windowLevel = windowLevel }
    }

    @discardableResult
    func becomeKey() -> Self {
        return make { $0.becomeKey() }
    }

    @discardableResult
    func resignKey() -> Self {
        return make { $0.resignKey() }
    }

    @discardableResult
    func makeKey() -> Self {
        return make { $0.makeKey() }
    }

    @discardableResult
    func makeKeyAndVisible() -> Self {
        return make { $0.makeKeyAndVisible() }
    }

    @available(iOS 4.0, *)
    @discardableResult
    func rootViewController(_ rootViewController: UIViewController?) -> Self {
        return make { $0.rootViewController = rootViewController }
    }

    @discardableResult
    func sendEvent(_ event: UIEvent) -> Self {
        return make { $0.sendEvent(event) }
    }
}
