//
//  UIView+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

extension UIView: EasyChainCompatible {}

public extension EasyChain where Base: UIView {
    
    @discardableResult func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        make { $0.isUserInteractionEnabled = isUserInteractionEnabled }
    }
    
    @discardableResult func tag(_ tag: Int) -> Self {
        make { $0.tag = tag }
    }
    
    @available(iOS 14.0, *)
    @discardableResult func focusGroupIdentifier(_ focusGroupIdentifier: String) -> Self {
        make { $0.focusGroupIdentifier = focusGroupIdentifier }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func semanticContentAttribute(_ semanticContentAttribute: UISemanticContentAttribute) -> Self {
        make { $0.semanticContentAttribute = semanticContentAttribute }
    }
    
    @discardableResult func frame(_ rect: CGRect) -> Self {
        make { $0.frame = rect }
    }
    
    @discardableResult func bounds(_ bounds: CGRect) -> Self {
        make { $0.bounds = bounds }
    }
    
    @discardableResult func center(_ x: CGFloat, _ y: CGFloat) -> Self {
        make { $0.center = CGPoint(x: x, y: y) }
    }
    
    @discardableResult func transform(_ transform: CGAffineTransform) -> Self {
        make { $0.transform = transform }
    }
    
    @available(iOS 13.0, *)
    @discardableResult func transform3D(_ transform3D: CATransform3D) -> Self {
        make { $0.transform3D = transform3D }
    }
    
    @available(iOS 4.0, *)
    @discardableResult func contentScaleFactor(_ contentScaleFactor: CGFloat) -> Self {
        make { $0.contentScaleFactor = contentScaleFactor }
    }
    
    @discardableResult func isMultipleTouchEnabled(_ isMultipleTouchEnabled: Bool) -> Self {
        make { $0.isMultipleTouchEnabled = isMultipleTouchEnabled }
    }
    
    
    @discardableResult func isExclusiveTouch(_ isExclusiveTouch: Bool) -> Self {
        make { $0.isExclusiveTouch = isExclusiveTouch }
    }
    
    @discardableResult func hitTest(_ point: CGPoint, with event: UIEvent?, closure: (UIView?) -> Void) -> Self {
        make { closure($0.hitTest(point, with: event)) }
    }
    
    @discardableResult func point(inside point: CGPoint, with event: UIEvent?, closure: (Bool) -> Void) -> Self {
        make { closure($0.point(inside: point, with: event)) }
    }
    
    @discardableResult func convert(_ point: CGPoint, to view: UIView?, closure: (CGPoint) -> Void) -> Self {
        make { closure($0.convert(point, to: view)) }
    }
    
    @discardableResult func convert(_ point: CGPoint, from view: UIView?, closure: (CGPoint) -> Void) -> Self {
        make { closure($0.convert(point, from: view)) }
    }
    
    @discardableResult func convert(_ rect: CGRect, to view: UIView?, closure: (CGRect) -> Void) -> Self {
        make { closure($0.convert(rect, to: view)) }
    }
    
    @discardableResult func convert(_ rect: CGRect, from view: UIView?,  closure: (CGRect) -> Void) -> Self {
        make { closure($0.convert(rect, from: view)) }
    }

    @discardableResult func autoresizesSubviews(_ autoresizesSubviews: Bool) -> Self {
        make { $0.autoresizesSubviews = autoresizesSubviews }
    }
    
    @discardableResult func autoresizingMask(_ autoresizingMask: UIView.AutoresizingMask) -> Self {
        make { $0.autoresizingMask = autoresizingMask }
    }
    
    @discardableResult func sizeThatFits(_ size: CGSize, closure: (CGSize) -> Void) -> Self {
        make { closure($0.sizeThatFits(size)) }
    }
    
    @discardableResult func sizeToFit() -> Self {
        make { $0.sizeToFit() }
    }

    @discardableResult func superView(_ sView: UIView) -> Self {
        make { sView.addSubview($0) }
    }
    
    @discardableResult func removeFromSuperview() -> Self {
        make { $0.removeFromSuperview() }
    }
    
    @discardableResult func insertSubview(_ sView: UIView, at index: Int) -> Self {
        make { $0.insertSubview(sView, at: index) }
    }

    @discardableResult func exchangeSubview(at index1: Int, withSubviewAt index2: Int) -> Self {
        make { $0.exchangeSubview(at: index1, withSubviewAt: index2) }
    }
    
    @discardableResult func addSubview(_ sView: UIView) -> Self {
        make { $0.addSubview(sView) }
    }
    
    @discardableResult func addSubviews(_ views: UIView...) -> Self {
        make { view in
            views.forEach {
                view.addSubview($0)
            }
        }
    }
    
    @discardableResult func insertSubview(_ sView: UIView, belowSubview siblingSubview: UIView) -> Self {
        make { $0.insertSubview(sView, belowSubview: siblingSubview) }
    }
    
    @discardableResult func insertSubview(_ sView: UIView, aboveSubview siblingSubview: UIView) -> Self {
        make { $0.insertSubview(sView, aboveSubview: siblingSubview) }
    }
    
    @discardableResult func bringSubviewToFront(_ sView: UIView) -> Self {
        make { $0.bringSubviewToFront(sView) }
    }
    
    @discardableResult func sendSubviewToBack(_ sView: UIView) -> Self {
        make { $0.sendSubviewToBack(sView) }
    }
    
    @discardableResult func didAddSubview(_ subview: UIView) -> Self {
        make { $0.didAddSubview(subview) }
    }
    
    @discardableResult func willRemoveSubview(_ subview: UIView) -> Self {
        make { $0.willRemoveSubview(subview) }
    }

    @discardableResult func willMove(toSuperview newSuperview: UIView?) -> Self {
        make { $0.willMove(toSuperview: newSuperview) }
    }

    @discardableResult func didMoveToSuperview() -> Self {
        make { $0.didMoveToSuperview() }
    }

    @discardableResult func willMove(toWindow newWindow: UIWindow?) -> Self {
        make { $0.willMove(toWindow: newWindow) }
    }

    @discardableResult func didMoveToWindow() -> Self {
        make { $0.didMoveToWindow() }
    }
    
    @discardableResult func isDescendant(of view: UIView, closure: (Bool) -> Void) -> Self {
        make { closure($0.isDescendant(of: view)) }
    }
    
    @discardableResult  func viewWithTag(_ tag: Int, closure: (UIView?) -> Void) -> Self {
        make { closure($0.viewWithTag(tag)) }
    }

    @available(iOS 8.0, *)
    @discardableResult func layoutMargins(_ layoutMargins: UIEdgeInsets) -> Self {
        make { $0.layoutMargins = layoutMargins }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func directionalLayoutMargins(_ directionalLayoutMargins: NSDirectionalEdgeInsets) -> Self {
        make { $0.directionalLayoutMargins = directionalLayoutMargins }
    }
    
    @available(iOS 8.0, *)
    @discardableResult func preservesSuperviewLayoutMargins(_ preservesSuperviewLayoutMargins: Bool) -> Self {
        make { $0.preservesSuperviewLayoutMargins = preservesSuperviewLayoutMargins }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func insetsLayoutMarginsFromSafeArea(_ insetsLayoutMarginsFromSafeArea: Bool) -> Self {
        make { $0.insetsLayoutMarginsFromSafeArea = insetsLayoutMarginsFromSafeArea }
    }
    
    @discardableResult func clipsToBounds(_ clipsToBounds: Bool) -> Self {
        make { $0.clipsToBounds = clipsToBounds }
    }
    
    @discardableResult func backgroundColor(_ color: UIColor, alpha: CGFloat? = nil) -> Self {
        return make { (view) in
            if let alpha = alpha {
                let bgColor = color.withAlphaComponent(alpha)
                view.backgroundColor = bgColor
            } else {
                view.backgroundColor = color
            }
        }
    }
    
    @discardableResult func alpha(_ alpha: CGFloat) -> Self {
        make { $0.alpha = alpha }
    }
    
    @discardableResult func isOpaque(_ isOpaque: Bool) -> Self {
        make { $0.isOpaque = isOpaque }
    }
    
    @discardableResult func clearsContextBeforeDrawing(_ clearsContextBeforeDrawing: Bool) -> Self {
        make { $0.clearsContextBeforeDrawing = clearsContextBeforeDrawing }
    }
    
    @discardableResult func isHidden(_ isHidden: Bool) -> Self {
        make { $0.isHidden = isHidden }
    }
    
    @discardableResult func contentMode(_ contentMode: UIView.ContentMode) -> Self {
        make { $0.contentMode = contentMode }
    }
    
    @available(iOS 8.0, *)
    @discardableResult func mask(_ mask: UIView?) -> Self {
        make { $0.mask = mask }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func tintColor(_ tintColor: UIColor) -> Self {
        make { $0.tintColor = tintColor }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func tintAdjustmentMode(_ tintAdjustmentMode: UIView.TintAdjustmentMode) -> Self {
        make { $0.tintAdjustmentMode = tintAdjustmentMode }
    }
    
    @available(iOS 3.2, *)
    @discardableResult func gestureRecognizers(_ gestureRecognizers: [UIGestureRecognizer]?) -> Self {
        make { $0.gestureRecognizers = gestureRecognizers }
    }
    
    @available(iOS 3.2, *)
    @discardableResult func addGestureRecognizer(_ gestureRecognizer: UIGestureRecognizer) -> Self {
        make { $0.addGestureRecognizer(gestureRecognizer) }
    }
    
    @available(iOS 3.2, *)
    @discardableResult func removeGestureRecognizer(_ gestureRecognizer: UIGestureRecognizer) -> Self {
        make { $0.removeGestureRecognizer(gestureRecognizer) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer, closure: (Bool) -> Void) -> Self {
        make { closure($0.gestureRecognizerShouldBegin(gestureRecognizer)) }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func addMotionEffect(_ effect: UIMotionEffect) -> Self {
        make { $0.addMotionEffect(effect) }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func removeMotionEffect(_ effect: UIMotionEffect) -> Self {
        make { $0.removeMotionEffect(effect) }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func motionEffects(_ motionEffects: [UIMotionEffect]) -> Self {
        make { $0.motionEffects = motionEffects }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func constraints(_ closure: ([NSLayoutConstraint]) -> Void) -> Self {
        make { closure($0.constraints) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func addConstraint(_ constraint: NSLayoutConstraint) -> Self {
        make { $0.addConstraint(constraint) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func addConstraints(_ constraints: [NSLayoutConstraint]) -> Self {
        make { $0.addConstraints(constraints) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func removeConstraint(_ constraint: NSLayoutConstraint) -> Self {
        make { $0.removeConstraint(constraint) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func removeConstraints(_ constraints: [NSLayoutConstraint]) -> Self {
        make { $0.removeConstraints(constraints) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func updateConstraintsIfNeeded() -> Self {
        make { $0.updateConstraintsIfNeeded() }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func updateConstraints() -> Self {
        make { $0.updateConstraints() }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func needsUpdateConstraints(_ closure: (Bool) -> Void) -> Self {
        make { closure($0.needsUpdateConstraints()) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func setNeedsUpdateConstraints() -> Self {
        make { $0.setNeedsUpdateConstraints() }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func translatesAutoresizingMaskIntoConstraints(_ translatesAutoresizingMaskIntoConstraints: Bool) -> Self {
        make { $0.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func alignmentRect(forFrame frame: CGRect, closure: (CGRect) -> Void) -> Self {
        make { closure($0.alignmentRect(forFrame: frame)) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func frame(forAlignmentRect alignmentRect: CGRect, closure: (CGRect) -> Void) -> Self {
        make { closure($0.frame(forAlignmentRect: alignmentRect)) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func alignmentRectInsets(_ closure: (UIEdgeInsets) -> Void) -> Self {
        make { closure($0.alignmentRectInsets) }
    }
    
    @available(iOS, introduced: 6.0, deprecated: 9.0, message: "Override -viewForFirstBaselineLayout or -viewForLastBaselineLayout as appropriate, instead")
    @discardableResult func forBaselineLayout(_ closure: (UIView) -> Void) -> Self {
        make { closure($0.forLastBaselineLayout) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func forFirstBaselineLayout(_ closure: (UIView) -> Void) -> Self {
        make { closure($0.forFirstBaselineLayout) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func forLastBaselineLayout(_ closure: (UIView) -> Void) -> Self {
        make { closure($0.forLastBaselineLayout) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func intrinsicContentSize(_ closure: (CGSize) -> Void) -> Self {
        make { closure($0.intrinsicContentSize) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func invalidateIntrinsicContentSize() -> Self {
        make { $0.invalidateIntrinsicContentSize() }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func contentHuggingPriority(for axis: NSLayoutConstraint.Axis, closure: (UILayoutPriority) -> Void) -> Self {
        make { closure($0.contentHuggingPriority(for: axis)) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func setContentHuggingPriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        make { $0.setContentHuggingPriority(priority, for: axis) }
    }

    @available(iOS 6.0, *)
    @discardableResult func contentCompressionResistancePriority(for axis: NSLayoutConstraint.Axis, closure: (UILayoutPriority) -> Void) -> Self {
        make { closure($0.contentCompressionResistancePriority(for: axis)) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func setContentCompressionResistancePriority(_ priority: UILayoutPriority, for axis: NSLayoutConstraint.Axis) -> Self {
        make { $0.setContentCompressionResistancePriority(priority, for: axis) }
    }

    @available(iOS 6.0, *)
    @discardableResult func systemLayoutSizeFitting(_ targetSize: CGSize, closure: (CGSize) -> Void) -> Self {
        make { closure($0.systemLayoutSizeFitting(targetSize)) }
    }
    
    @available(iOS 8.0, *)
    @discardableResult func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority, closure: (CGSize) -> Void) -> Self {
        make { closure($0.systemLayoutSizeFitting(targetSize, withHorizontalFittingPriority: horizontalFittingPriority, verticalFittingPriority: verticalFittingPriority)) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func layoutGuides(_ closure: ([UILayoutGuide]) ->Void) -> Self {
        make { closure($0.layoutGuides) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func addLayoutGuide(_ layoutGuide: UILayoutGuide) -> Self {
        make { $0.addLayoutGuide(layoutGuide) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func removeLayoutGuide(_ layoutGuide: UILayoutGuide) -> Self {
        make { $0.removeLayoutGuide(layoutGuide) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func leadingAnchor(_ closure: (NSLayoutXAxisAnchor) -> Void) -> Self {
        make { closure($0.leadingAnchor) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func trailingAnchor(_ closure: (NSLayoutXAxisAnchor) -> Void) -> Self {
        make { closure($0.trailingAnchor) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func leftAnchor(_ closure: (NSLayoutXAxisAnchor) -> Void) -> Self {
        make { closure($0.leftAnchor) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func rightAnchor(_ closure: (NSLayoutXAxisAnchor) -> Void) -> Self {
        make { closure($0.rightAnchor) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func topAnchor(_ closure: (NSLayoutYAxisAnchor) -> Void) -> Self {
        make { closure($0.topAnchor) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func bottomAnchor(_ closure: (NSLayoutYAxisAnchor) -> Void) -> Self {
        make { closure($0.bottomAnchor) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func widthAnchor(_ closure: (NSLayoutDimension) -> Void) -> Self {
        make { closure($0.widthAnchor) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func heightAnchor(_ closure: (NSLayoutDimension) -> Void) -> Self {
        make { closure($0.heightAnchor) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func centerXAnchor(_ closure: (NSLayoutXAxisAnchor) -> Void) -> Self {
        make { closure($0.centerXAnchor) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func centerYAnchor(_ closure: (NSLayoutYAxisAnchor) -> Void) -> Self {
        make { closure($0.centerYAnchor) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func firstBaselineAnchor(_ closure: (NSLayoutYAxisAnchor) -> Void) -> Self {
        make { closure($0.firstBaselineAnchor) }
    }

    @available(iOS 9.0, *)
    @discardableResult func lastBaselineAnchor(_ closure: (NSLayoutYAxisAnchor) -> Void) -> Self {
        make { closure($0.lastBaselineAnchor) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func constraintsAffectingLayout(for axis: NSLayoutConstraint.Axis, closure: ([NSLayoutConstraint]) -> Void) -> Self {
        make { closure($0.constraintsAffectingLayout(for: axis)) }
    }

    @available(iOS 6.0, *)
    @discardableResult func hasAmbiguousLayout(_ closure: (Bool) -> Void) -> Self {
        make { closure($0.hasAmbiguousLayout) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func exerciseAmbiguityInLayout() -> Self {
        make { $0.exerciseAmbiguityInLayout() }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func restorationIdentifier(_ restorationIdentifier: String?) -> Self {
        make { $0.restorationIdentifier = restorationIdentifier }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func restorationIdentifier(closure: (String?) -> Void) -> Self {
        make { closure($0.restorationIdentifier) }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func snapshotView(afterScreenUpdates afterUpdates: Bool, closure: (UIView?) -> Void) -> Self {
        make { closure($0.snapshotView(afterScreenUpdates: afterUpdates)) }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func resizableSnapshotView(from rect: CGRect, afterScreenUpdates afterUpdates: Bool, withCapInsets capInsets: UIEdgeInsets, closure: (UIView?) -> Void) -> Self {
        make { closure($0.resizableSnapshotView(from: rect, afterScreenUpdates: afterUpdates, withCapInsets: capInsets)) }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func drawHierarchy(in rect: CGRect, afterScreenUpdates afterUpdates: Bool, closure: (Bool) -> Void) -> Self {
        make { closure($0.drawHierarchy(in: rect, afterScreenUpdates: afterUpdates)) }
    }
    
    @available(iOS 13.0, *)
    @discardableResult func overrideUserInterfaceStyle(_ overrideUserInterfaceStyle: UIUserInterfaceStyle) -> Self {
        make { $0.overrideUserInterfaceStyle = overrideUserInterfaceStyle }
    }
    
    @available(iOS 13.0, *)
    @discardableResult func overrideUserInterfaceStyle(_ closure: (UIUserInterfaceStyle) -> Void) -> Self {
        make { closure($0.overrideUserInterfaceStyle) }
    }
    
    
    @discardableResult func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        make { $0.layer.cornerRadius = cornerRadius }
    }
    
    @discardableResult func mask(_ mask: CALayer?) -> Self {
        make { $0.layer.mask = mask }
    }
    
    @discardableResult func masksToBounds(_ masksToBounds: Bool) -> Self {
        make { $0.layer.masksToBounds = masksToBounds }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func maskedCorners(_ maskedCorners: CACornerMask) -> Self {
        make { $0.layer.maskedCorners = maskedCorners }
    }
    
    @discardableResult func borderWidth(_ borderWidth: CGFloat) -> Self {
        make { $0.layer.borderWidth = borderWidth }
    }

    @discardableResult func borderColor(_ borderColor: UIColor?) -> Self {
        make { $0.layer.borderColor = borderColor?.cgColor }
    }

    @discardableResult func borderColor(_ borderColor: CGColor?) -> Self {
        make { $0.layer.borderColor = borderColor }
    }

    @discardableResult func opacity(_ opacity: Float) -> Self {
        make { $0.layer.opacity = opacity }
    }

    @discardableResult func allowsGroupOpacity(_ allowsGroupOpacity: Bool) -> Self {
        make { $0.layer.allowsGroupOpacity = allowsGroupOpacity }
    }
    
    @discardableResult func shadowColor(_ shadowColor: UIColor, alpha: CGFloat? = nil) -> Self {
        return make { (view) in
            if let alpha = alpha {
                let color = shadowColor.withAlphaComponent(alpha)
                view.layer.shadowColor = color.cgColor
            } else {
                view.layer.shadowColor = shadowColor.cgColor
            }
        }
    }
    
    @discardableResult func shadowOffset(_ width: CGFloat, _ height: CGFloat) -> Self {
        make { $0.layer.shadowOffset = CGSize(width: width, height: height) }
    }
    
    @discardableResult func shadowRadius(_ shadowRadius: CGFloat) -> Self {
        make { $0.layer.shadowRadius = shadowRadius }
    }
    
    @discardableResult func shadowOpacity(_ shadowOpacity: Float) -> Self {
        make { $0.layer.shadowOpacity = shadowOpacity }
    }
    
    @available(iOS 4.0, *)
    @discardableResult static func animate(withDuration duration: TimeInterval, delay: TimeInterval, options: UIView.AnimationOptions = [], animations: @escaping () -> Void, completion: ((Bool) -> Void)? = nil) -> Self.Type {
        Base.animate(withDuration: duration, delay: delay, options: options, animations: animations, completion: completion)
        return self
    }

}
