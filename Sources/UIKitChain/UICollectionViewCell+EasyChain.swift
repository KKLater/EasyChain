//
//  UICollectionViewCell+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

public extension EasyChain where Base: UICollectionViewCell {

    @available(iOS 14.0, *)
    @discardableResult func setNeedsUpdateConfiguration() -> Self {
        return make { $0.setNeedsUpdateConfiguration() }
    }

    @available(iOS 14.0, *)
    @discardableResult func automaticallyUpdatesContentConfiguration(_ automaticallyUpdatesContentConfiguration: Bool) -> Self {
        return make { $0.automaticallyUpdatesContentConfiguration = automaticallyUpdatesContentConfiguration }
    }
    
    @discardableResult func isSelected(_ isSelected: Bool) -> Self {
        return make { $0.isSelected = isSelected }
    }

    @discardableResult func isHighlighted(_ isHighlighted: Bool) -> Self {
        return make { $0.isHighlighted = isHighlighted }
    }

    @available(iOS 11.0, *)
    @discardableResult func dragStateDidChange(_ dragState: UICollectionViewCell.DragState) -> Self {
        return make { $0.dragStateDidChange(dragState) }
    }

    @available(iOS 14.0, *)
    @discardableResult func automaticallyUpdatesBackgroundConfiguration(_ automaticallyUpdatesBackgroundConfiguration: Bool) -> Self {
        return make { $0.automaticallyUpdatesContentConfiguration = automaticallyUpdatesBackgroundConfiguration }
    }

    @discardableResult func backgroundView(_ backgroundView: UIView?) -> Self {
        return make { $0.backgroundView = backgroundView }
    }

    @discardableResult func selectedBackgroundView(_ selectedBackgroundView: UIView?) -> Self {
        return make { $0.selectedBackgroundView = selectedBackgroundView }
    }
    
    @available(iOS 14.0, tvOS 14.0, *)
    @discardableResult func contentConfiguration(_ contentConfiguration: UIContentConfiguration?) -> Self {
        return make { $0.contentConfiguration = contentConfiguration }
    }
    
    @available(iOS 14.0, tvOS 14.0, *)
    @discardableResult func backgroundConfiguration(_ backgroundConfiguration: UIBackgroundConfiguration?) -> Self {
        return make { $0.backgroundConfiguration = backgroundConfiguration }
    }
}
