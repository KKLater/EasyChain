//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/2/25.
//

import Foundation
import EasyChainCore
import QuartzCore
import CoreGraphics
import UIKit

extension CALayer: EasyChainCompatible {
    public typealias StyleCompatible = CALayer
}

public extension EasyChain where Base: CALayer {
    @discardableResult func bounds(_ bounds: CGRect) -> Self {
        make { $0.bounds = bounds }
    }

    @discardableResult func position(_ position: CGPoint) -> Self {
        make { $0.position = position }
    }

    @discardableResult func zPosition(_ zPosition: CGFloat) -> Self {
        make { $0.zPosition = zPosition }
    }

    @discardableResult func anchorPoint(_ anchorPoint: CGPoint) -> Self {
        make { $0.anchorPoint = anchorPoint }
    }

    @discardableResult func anchorPointZ(_ anchorPointZ: CGFloat) -> Self {
        make { $0.anchorPointZ = anchorPointZ }
    }

    @discardableResult func transform(_ transform: CATransform3D) -> Self {
        make { $0.transform = transform }
    }

    @discardableResult func setAffineTransform(_ affineTransform: CGAffineTransform) -> Self {
        make { $0.setAffineTransform(affineTransform) }
    }

    @discardableResult func frame(_ frame: CGRect) -> Self {
        make { $0.frame = frame }
    }

    @discardableResult func isHidden(_ isHidden: Bool) -> Self {
        make { $0.isHidden = isHidden }
    }

    @discardableResult func isDoubleSided(_ isDoubleSided: Bool) -> Self {
        make { $0.isDoubleSided = isDoubleSided }
    }

    @discardableResult func isGeometryFlipped(_ isGeometryFlipped: Bool) -> Self {
        make { $0.isGeometryFlipped = isGeometryFlipped }
    }

    @discardableResult func removeFromSuperlayer() -> Self {
        make { $0.removeFromSuperlayer() }
    }

    @discardableResult func sublayers(_ sublayers: [CALayer]?) -> Self {
        make { $0.sublayers = sublayers }
    }

    @discardableResult func addSublayer(_ layer: CALayer) -> Self {
        make { $0.addSublayer(layer) }
    }

    @discardableResult func insertSublayer(_ layer: CALayer, at idx: UInt32) -> Self {
        make { $0.insertSublayer(layer, at: idx) }
    }

    @discardableResult func insertSublayer(_ layer: CALayer, below sibling: CALayer?) -> Self {
        make { $0.insertSublayer(layer, below: sibling) }
    }

    @discardableResult func insertSublayer(_ layer: CALayer, above sibling: CALayer?) -> Self {
        make { $0.insertSublayer(layer, above: sibling) }
    }

    @discardableResult func replaceSublayer(_ oldLayer: CALayer, with newLayer: CALayer) -> Self {
        make { $0.replaceSublayer(oldLayer, with: newLayer) }
    }

    @discardableResult func sublayerTransform(_ sublayerTransform: CATransform3D) -> Self {
        make { $0.sublayerTransform = sublayerTransform }
    }

    @discardableResult func mask(_ mask: CALayer?) -> Self {
        make { $0.mask = mask }
    }

    @discardableResult func masksToBounds(_ masksToBounds: Bool) -> Self {
        make { $0.masksToBounds = masksToBounds }
    }

    @discardableResult func contents(_ contents: Any?) -> Self {
        make { $0.contents = contents }
    }

    @discardableResult func contentsRect(_ contentsRect: CGRect) -> Self {
        make { $0.contentsRect = contentsRect }
    }

    @discardableResult func contentsGravity(_ contentsGravity: CALayerContentsGravity) -> Self {
        make { $0.contentsGravity = contentsGravity }
    }

    @discardableResult func contentsScale(_ contentsScale: CGFloat) -> Self {
        make { $0.contentsScale = contentsScale }
    }

    @discardableResult func contentsCenter(_ contentsCenter: CGRect) -> Self {
        make { $0.contentsCenter = contentsCenter }
    }

    @available(iOS 10.0, *)
    @discardableResult func contentsFormat(_ contentsFormat: CALayerContentsFormat) -> Self {
        make { $0.contentsFormat = contentsFormat }
    }

    @discardableResult func minificationFilter(_ minificationFilter: CALayerContentsFilter) -> Self {
        make { $0.minificationFilter = minificationFilter }
    }

    @discardableResult func magnificationFilter(_ magnificationFilter: CALayerContentsFilter) -> Self {
        make { $0.magnificationFilter = magnificationFilter }
    }

    @discardableResult func minificationFilterBias(_ minificationFilterBias: Float) -> Self {
        make { $0.minificationFilterBias = minificationFilterBias }
    }

    @discardableResult func isOpaque(_ isOpaque: Bool) -> Self {
        make { $0.isOpaque = isOpaque }
    }

    @discardableResult func display() -> Self {
        make { $0.display() }
    }

    @discardableResult func setNeedsDisplay() -> Self {
        make { $0.setNeedsDisplay() }
    }

    @discardableResult func setNeedsDisplay(_ rect: CGRect) -> Self {
        make { $0.setNeedsDisplay(rect) }
    }

    @discardableResult func displayIfNeeded() -> Self {
        make { $0.displayIfNeeded() }
    }

    @discardableResult func needsDisplayOnBoundsChange(_ needsDisplayOnBoundsChange: Bool) -> Self {
        make { $0.needsDisplayOnBoundsChange = needsDisplayOnBoundsChange }
    }

    @discardableResult func drawsAsynchronously(_ drawsAsynchronously: Bool) -> Self {
        make { $0.drawsAsynchronously = drawsAsynchronously }
    }

    @discardableResult func backgroundColor(_ backgroundColor: UIColor) -> Self {
        make { $0.backgroundColor = backgroundColor.cgColor }
    }

    @discardableResult func draw(in contex: CGContext) -> Self {
        make { $0.draw(in: contex) }
    }

    @discardableResult func render(in contex: CGContext) -> Self {
        make { $0.render(in: contex) }
    }

    @discardableResult func edgeAntialiasingMask(_  edgeAntialiasingMask: CAEdgeAntialiasingMask) -> Self {
        make { $0.edgeAntialiasingMask = edgeAntialiasingMask }
    }

    @discardableResult func allowsEdgeAntialiasing(_ allowsEdgeAntialiasing: Bool) -> Self {
        make { $0.allowsEdgeAntialiasing = allowsEdgeAntialiasing }
    }

    @discardableResult func backgroundColor(_ backgroundColor: CGColor?) -> Self {
        make { $0.backgroundColor = backgroundColor }
    }

    @discardableResult func cornerRadius(_ cornerRadius: CGFloat) -> Self {
        make { $0.cornerRadius = cornerRadius }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func maskedCorners(_ maskedCorners: CACornerMask) -> Self {
        make { $0.maskedCorners = maskedCorners }
    }

    @discardableResult func borderWidth(_ borderWidth: CGFloat) -> Self {
        make { $0.borderWidth = borderWidth }
    }

    @discardableResult func borderColor(_ borderColor: UIColor?) -> Self {
        make { $0.borderColor = borderColor?.cgColor }
    }

    @discardableResult func borderColor(_ borderColor: CGColor?) -> Self {
        make { $0.borderColor = borderColor }
    }

    @discardableResult func opacity(_ opacity: Float) -> Self {
        make { $0.opacity = opacity }
    }

    @discardableResult func allowsGroupOpacity(_ allowsGroupOpacity: Bool) -> Self {
        make { $0.allowsGroupOpacity = allowsGroupOpacity }
    }

    @discardableResult func compositingFilter(_ compositingFilter: Any?) -> Self {
        make { $0.compositingFilter = compositingFilter }
    }

    @discardableResult func filters(_ filters: [Any]?) -> Self {
        make { $0.filters = filters }
    }

    @discardableResult func backgroundFilters(_ backgroundFilters: [Any]?) -> Self {
        make { $0.backgroundFilters = backgroundFilters }
    }

    @discardableResult func shouldRasterize(_ shouldRasterize: Bool) -> Self {
        make { $0.shouldRasterize = shouldRasterize }
    }

    @discardableResult func rasterizationScale(_ rasterizationScale: CGFloat) -> Self {
        make { $0.rasterizationScale = rasterizationScale }
    }

    @discardableResult func shadowColor(_ shadowColor: UIColor) -> Self {
        make { $0.shadowColor = shadowColor.cgColor }
    }
    
    @discardableResult func shadowColor(_ shadowColor: CGColor) -> Self {
        make { $0.shadowColor = shadowColor }
    }

    @discardableResult func shadowOpacity(_ shadowOpacity: Float) -> Self {
        make { $0.shadowOpacity = shadowOpacity }
    }

    @discardableResult func shadowOffset(_ shadowOffset: CGSize) -> Self {
        make { $0.shadowOffset = shadowOffset }
    }
    
    @discardableResult func shadowRadius(_ shadowRadius: CGFloat) -> Self {
        make { $0.shadowRadius = shadowRadius }
    }

    @discardableResult func shadowPath(_ shadowPath: CGPath?) -> Self {
        make { $0.shadowPath = shadowPath }
    }

    @discardableResult func setNeedsLayout() -> Self {
        make { $0.setNeedsLayout() }
    }

    @discardableResult func layoutIfNeeded() -> Self {
        make { $0.layoutIfNeeded() }
    }

    @discardableResult func layoutSublayers() -> Self {
        make { $0.layoutSublayers() }
    }

    @discardableResult func actions(_ actions: [String : CAAction]?) -> Self {
        make { $0.actions = actions }
    }

    @discardableResult func add(_ animation: CAAnimation, forKey key: String?) -> Self {
        make { $0.add(animation, forKey: key) }
    }

    @discardableResult func removeAllAnimations() -> Self {
        make { $0.removeAllAnimations() }
    }

    @discardableResult func removeAnimation(forKey key: String) -> Self {
        make { $0.removeAnimation(forKey: key) }
    }

    @discardableResult func name(_ name: String?) -> Self {
        make { $0.name = name }
    }

    @discardableResult func delegate(_ delegate: CALayerDelegate?) -> Self {
        make { $0.delegate = delegate }
    }

    @discardableResult func style(_ style: [AnyHashable : Any]?) -> Self {
        make { $0.style = style }
    }
}
