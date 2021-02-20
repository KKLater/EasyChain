//
//  UIControl+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

extension EasyChain where Base: UIControl {

    func enabled(_ enabled: Bool) -> Self {
        return make { (ct) in
            ct.isEnabled = enabled
        }
    }
    
    func selected(_ selected: Bool) -> Self {
        return make { (ct) in
            ct.isSelected = selected
        }
    }
    
    func highlighted(_ highlighted: Bool) -> Self {
        return make { (ct) in
            ct.isHighlighted = highlighted
        }
    }
    
    func contentVerticalAlignment(_ contentVerticalAlignment: UIControl.ContentVerticalAlignment) -> Self {
        return make { (ct) in
            ct.contentVerticalAlignment = contentVerticalAlignment
        }
    }
    
    
    func contentHorizontalAlignment(_ contentHorizontalAlignment: UIControl.ContentHorizontalAlignment) -> Self {
        return make { (ct) in
            ct.contentHorizontalAlignment = contentHorizontalAlignment
        }
    }
    
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) -> Self {
        return make { (ct) in
            ct.addTarget(target, action: action, for: controlEvents)
        }
    }
    
   func removeTarget(_ target: Any?, action: Selector?, for controlEvents: UIControl.Event) -> Self {
        return make { (ct) in
            ct.removeTarget(target, action: action, for: controlEvents)
        }
    }
    
    @available(iOS 14, *)
    func addAction(_ action: UIAction, for controlEvents: UIControl.Event) -> Self {
        return make { (ct) in
            ct.addAction(action, for: controlEvents)
        }
    }

    @available(iOS 14.0, *)
    func removeAction(_ action: UIAction, for controlEvents: UIControl.Event) -> Self {
        return make { (ct) in
            ct.removeAction(action, for: controlEvents)
        }
    }
    
    @available(iOS 14.0, *)
    func removeAction(identifiedBy actionIdentifier: UIAction.Identifier, for controlEvents: UIControl.Event) -> Self {
        return make { (ct) in
            ct.removeAction(identifiedBy: actionIdentifier, for: controlEvents)
        }
    }

    @available(iOS 14.0, *)
    func contextMenuInteractionEnabled(_ contextMenuInteractionEnabled: Bool) -> Self {
        return make { (ct) in
            ct.isContextMenuInteractionEnabled = contextMenuInteractionEnabled
        }
    }
    
    @available(iOS 14.0, *)
    func showsMenuAsPrimaryAction(_ showsMenuAsPrimaryAction: Bool) -> Self {
        return make { (ct) in
            ct.showsMenuAsPrimaryAction = showsMenuAsPrimaryAction
        }
    }
}

