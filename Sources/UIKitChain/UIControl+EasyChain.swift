//
//  UIControl+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

public extension EasyChain where Base: UIControl {

    @discardableResult func enabled(_ enabled: Bool) -> Self {
        make { $0.isEnabled = enabled }
    }
    
    @discardableResult func selected(_ selected: Bool) -> Self {
        make { $0.isSelected = selected }
    }
    
    @discardableResult func highlighted(_ highlighted: Bool) -> Self {
        make { $0.isHighlighted = highlighted }
    }
    
    @discardableResult func contentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> Self {
        make { $0.contentVerticalAlignment = contentVerticalAlignment }
    }
    
    @discardableResult func contentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> Self {
        make { $0.contentHorizontalAlignment = contentHorizontalAlignment }
    }
    
    @discardableResult func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) -> Self {
        make { $0.addTarget(target, action: action, for: controlEvents) }
    }
    
    @discardableResult func removeTarget(_ target: Any?, action: Selector?, for controlEvents: UIControl.Event) -> Self {
        make { $0.removeTarget(target, action: action, for: controlEvents) }
    }
    
    @available(iOS 14, *)
    @discardableResult func addAction(_ action: UIAction, for controlEvents: UIControl.Event) -> Self {
        make { $0.addAction(action, for: controlEvents) }
    }

    @available(iOS 14.0, *)
    @discardableResult func removeAction(_ action: UIAction, for controlEvents: UIControl.Event) -> Self {
        make { $0.removeAction(action, for: controlEvents) }
    }
    
    @available(iOS 14.0, *)
    @discardableResult func removeAction(identifiedBy actionIdentifier: UIAction.Identifier, for controlEvents: UIControl.Event) -> Self {
        make { $0.removeAction(identifiedBy: actionIdentifier, for: controlEvents) }
    }

    @available(iOS 14.0, *)
    @discardableResult func contextMenuInteractionEnabled(_ contextMenuInteractionEnabled: Bool) -> Self {
        make { $0.isContextMenuInteractionEnabled = contextMenuInteractionEnabled }
    }
    
    @available(iOS 14.0, *)
    @discardableResult func showsMenuAsPrimaryAction(_ showsMenuAsPrimaryAction: Bool) -> Self {
        make { $0.showsMenuAsPrimaryAction = showsMenuAsPrimaryAction }
    }
}

