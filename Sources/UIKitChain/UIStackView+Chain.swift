//
//  UIStackView+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

@available(iOS 9.0, *)
public extension Chain where Base: UIStackView {

    @discardableResult func addArrangedSubview(_ view: UIView) -> Self {
        make { $0.addArrangedSubview(view) }
    }
    
    @discardableResult func addArrangedSubviews(_ views: UIView...) -> Self {
        make { view in
            views.forEach { view.addArrangedSubview($0) }
        }
    }

    @discardableResult func removeArrangedSubview(_ view: UIView) -> Self {
        make { $0.removeArrangedSubview(view) }
    }

    @discardableResult func removeArrangedSubviews(_ views: UIView...) -> Self {
        make { (view) in
            views.forEach { view.removeArrangedSubview($0) }
        }
    }

    @discardableResult func insertArrangedSubview(_ view: UIView, at stackIndex: Int) -> Self {
        make { $0.insertArrangedSubview(view, at: stackIndex) }
    }

    @discardableResult func axis(_ axis: NSLayoutConstraint.Axis) -> Self {
        make { $0.axis = axis }
    }

    @discardableResult func distribution(_ distribution: UIStackView.Distribution) -> Self {
        make { $0.distribution = distribution }
    }

    @discardableResult func alignment(_ alignment: UIStackView.Alignment) -> Self {
        make { $0.alignment = alignment }
    }

    @discardableResult func spacing(_ spacing: CGFloat) -> Self {
        make { $0.spacing = spacing }
    }

    @available(iOS 11.0, *)
    @discardableResult func setCustomSpacing(_ spacing: CGFloat, after arrangedSubview: UIView) -> Self {
        make { $0.setCustomSpacing(spacing, after: arrangedSubview)}
    }

    @discardableResult func isBaselineRelativeArrangement(_ isBaselineRelativeArrangement: Bool) -> Self {
        make { $0.isBaselineRelativeArrangement = isBaselineRelativeArrangement }
    }

    @discardableResult func isLayoutMarginsRelativeArrangement(_ isLayoutMarginsRelativeArrangement: Bool) -> Self {
        make { $0.isLayoutMarginsRelativeArrangement = isLayoutMarginsRelativeArrangement }
    }
}
