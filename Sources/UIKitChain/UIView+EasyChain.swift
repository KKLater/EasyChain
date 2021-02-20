//
//  UIView+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

extension UIView: EasyChainCompatible {}

extension EasyChain where Base: UIView {
    
    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        return make { (view) in
            view.isUserInteractionEnabled = isUserInteractionEnabled
        }
    }
    
    @discardableResult
    func tag(_ tag: Int) -> Self {
        return make { (view) in
            view.tag = tag
        }
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func focusGroupIdentifier(_ focusGroupIdentifier: String) -> Self {
        return make { (view) in
            view.focusGroupIdentifier = focusGroupIdentifier
        }
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    func semanticContentAttribute(_ semanticContentAttribute: UISemanticContentAttribute) -> Self {
        return make { (view) in
            view.semanticContentAttribute = semanticContentAttribute
        }
    }
    
    @discardableResult
    func frame(_ rect: CGRect) -> Self {
        return make { (view) in
            view.frame = rect
        }
    }
    
    @discardableResult
    func bounds(_ bounds: CGRect) -> Self {
        return make { (view) in
            view.bounds = bounds
        }
    }
    
    @discardableResult
    func center(_ x: CGFloat, _ y: CGFloat) -> Self {
        return make { (view) in
            view.center = CGPoint(x: x, y: y)
        }
    }
    
    @discardableResult
    func transform(_ transform: CGAffineTransform) -> Self {
        return make { (view) in
            view.transform = transform
        }
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func transform3D(_ transform3D: CATransform3D) -> Self {
        return make { (view) in
            view.transform3D = transform3D
        }
    }
    
    @available(iOS 4.0, *)
    @discardableResult
    func contentScaleFactor(_ contentScaleFactor: CGFloat) -> Self {
        return make { (view) in
            view.contentScaleFactor = contentScaleFactor
        }
    }
    
    @discardableResult
    func isMultipleTouchEnabled(_ isMultipleTouchEnabled: Bool) -> Self {
        return make { (view) in
            view.isMultipleTouchEnabled = isMultipleTouchEnabled
        }
    }
    
    
    @discardableResult
    func isExclusiveTouch(_ isExclusiveTouch: Bool) -> Self {
        return make { (view) in
            view.isExclusiveTouch = isExclusiveTouch
        }
    }

    @discardableResult
    func autoresizesSubviews(_ autoresizesSubviews: Bool) -> Self {
        return make { (view) in
            view.autoresizesSubviews = autoresizesSubviews
        }
    }
    
    @discardableResult
    func autoresizingMask(_ autoresizingMask: UIView.AutoresizingMask) -> Self {
        return make { (view) in
            view.autoresizingMask = autoresizingMask
        }
    }
    
    @discardableResult
    func sizeToFit() -> Self {
        return make { (view) in
            view.sizeToFit()
        }
    }

    @discardableResult
    func superView(_ sView: UIView) -> Self {
        return make { (view) in
            sView.addSubview(view)
        }
    }
    
    @discardableResult
    func removeFromSuperview() -> Self {
        return make { (view) in
            view.removeFromSuperview()
        }
    }
    
    @discardableResult
    func insertSubview(_ sView: UIView, at index: Int) -> Self {
        return make { (view) in
            view.insertSubview(sView, at: index)
        }
    }

    @discardableResult
    func exchangeSubview(at index1: Int, withSubviewAt index2: Int) -> Self {
        return make { (view) in
            view.exchangeSubview(at: index1, withSubviewAt: index2)
        }
    }
    
    @discardableResult
    func addSubview(_ sView: UIView) -> Self {
        return make { (view) in
            view.addSubview(sView)
        }
    }
    
    @discardableResult
    func addSubviews(_ views: UIView...) -> Self {
        return make { (view) in
            views.forEach {
                view.addSubview($0)
            }
            
        }
    }
    
    @discardableResult
    func insertSubview(_ sView: UIView, belowSubview siblingSubview: UIView) -> Self {
        return make { (view) in
            view.insertSubview(sView, belowSubview: siblingSubview)
        }
    }
    
    @discardableResult
    func insertSubview(_ sView: UIView, aboveSubview siblingSubview: UIView) -> Self {
        return make { (view) in
            view.insertSubview(sView, aboveSubview: siblingSubview)
        }
    }
    
    @discardableResult
    func bringSubviewToFront(_ sView: UIView) -> Self {
        return make { (view) in
            view.bringSubviewToFront(sView)
        }
    }
    
    @discardableResult
    func sendSubviewToBack(_ sView: UIView) -> Self {
        return make { (view) in
            view.sendSubviewToBack(sView)
        }
    }

    
    @discardableResult
    func didAddSubview(_ subview: UIView) -> Self {
        return make { (view) in
            view.didAddSubview(subview)
        }
    }
    
    @discardableResult
    func willRemoveSubview(_ subview: UIView) -> Self {
        return make { (view) in
            view.willRemoveSubview(subview)
        }
    }
    

    @discardableResult
    func willMove(toSuperview newSuperview: UIView?) -> Self {
        return make { (view) in
            view.willMove(toSuperview: newSuperview)
        }
    }

    @discardableResult
    func didMoveToSuperview() -> Self {
        return make { (view) in
            view.didMoveToSuperview()
        }
    }

    @discardableResult
    func willMove(toWindow newWindow: UIWindow?) -> Self {
        return make { (view) in
            view.willMove(toWindow: newWindow)
        }
    }

    @discardableResult
    func didMoveToWindow() -> Self {
        return make { (view) in
            view.didMoveToWindow()
        }
    }


    @available(iOS 8.0, *)
    @discardableResult
    func layoutMargins(_ layoutMargins: UIEdgeInsets) -> Self {
        return make { (view) in
            view.layoutMargins = layoutMargins
        }
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func directionalLayoutMargins(_ directionalLayoutMargins: NSDirectionalEdgeInsets) -> Self {
        return make { (view) in
            view.directionalLayoutMargins = directionalLayoutMargins
        }
    }
    
    @available(iOS 8.0, *)
    @discardableResult
    func preservesSuperviewLayoutMargins(_ preservesSuperviewLayoutMargins: Bool) -> Self {
        return make { (view) in
            view.preservesSuperviewLayoutMargins = preservesSuperviewLayoutMargins
        }
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func insetsLayoutMarginsFromSafeArea(_ insetsLayoutMarginsFromSafeArea: Bool) -> Self {
        return make { (view) in
            view.insetsLayoutMarginsFromSafeArea = insetsLayoutMarginsFromSafeArea
        }
    }

    
    @discardableResult
    func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        return make { (view) in
            view.clipsToBounds = clipsToBounds
        }
    }
    
    
    @discardableResult
    func backgroundColor(_ color: UIColor, alpha: CGFloat? = nil) -> Self {
        return make { (view) in
            if let alpha = alpha {
                let bgColor = color.withAlphaComponent(alpha)
                view.backgroundColor = bgColor
            } else {
                view.backgroundColor = color
            }
        }
    }
    
    @discardableResult
    func alpha(_ alpha: CGFloat) -> Self {
        return make { (view) in
            view.alpha = alpha
        }
    }
    
    @discardableResult
    func isOpaque(_ isOpaque: Bool) -> Self {
        return make { (view) in
            view.isOpaque = isOpaque
        }
    }
    
    @discardableResult
    func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool) -> Self {
        return make { (view) in
            view.clearsContextBeforeDrawing = clearsContextBeforeDrawing
        }
    }
    
    @discardableResult
    func isHidden(_ isHidden: Bool) -> Self {
        return make { (view) in
            view.isHidden = isHidden
        }
    }
    
    
    @discardableResult
    func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        return make { (view) in
            view.contentMode = contentMode
        }
    }
    
    @available(iOS 8.0, *)
    @discardableResult
    func mask(_ mask: UIView?) -> Self {
        return make { (view) in
            view.mask = mask
        }
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> Self {
        return make { (view) in
            view.tintColor = tintColor
        }
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    func tintAdjustmentMode(_ tintAdjustmentMode: UIView.TintAdjustmentMode) -> Self {
        return make { (view) in
            view.tintAdjustmentMode = tintAdjustmentMode
        }
    }


    @discardableResult
    func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        return make { (view) in
            view.layer.cornerRadius = cornerRadius
        }
    }
    
    @discardableResult
    func shadowColor(_ shadowColor: UIColor, alpha: CGFloat? = nil) -> Self {
        return make { (view) in
            if let alpha = alpha {
                let color = shadowColor.withAlphaComponent(alpha)
                view.layer.shadowColor = color.cgColor
            } else {
                view.layer.shadowColor = shadowColor.cgColor
            }
        }
    }
    
    @discardableResult
    func shadowOffset(_ width: CGFloat, _ height: CGFloat) -> Self {
        return make { (view) in
            view.layer.shadowOffset = CGSize(width: width, height: height)
        }
    }
    
    @discardableResult
    func shadowRadius(_ shadowRadius: CGFloat) -> Self {
        return make { (view) in
            view.layer.shadowRadius = shadowRadius
        }
    }
    
    @discardableResult
    func shadowOpacity(_ shadowOpacity: Float) -> Self {
        return make { (view) in
            view.layer.shadowOpacity = shadowOpacity
        }
    }
}
