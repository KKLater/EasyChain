//
//  UITableViewCell+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

extension EasyChain where Base: UITableViewCell {
    
    @available(iOS 14.0, *)
    @discardableResult
    func setNeedsUpdateConfiguration() -> Self {
        return make { $0.setNeedsUpdateConfiguration() }
    }

    
    @available(iOS 14.0, *)
    @discardableResult
    func automaticallyUpdatesContentConfiguration(_ automaticallyUpdatesContentConfiguration: Bool) -> Self {
        return make { $0.automaticallyUpdatesContentConfiguration = automaticallyUpdatesContentConfiguration }
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func automaticallyUpdatesBackgroundConfiguration(_ automaticallyUpdatesBackgroundConfiguration: Bool) -> Self {
        return make { $0.automaticallyUpdatesBackgroundConfiguration = automaticallyUpdatesBackgroundConfiguration }
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func backgroundView(_ backgroundView: UIView?) -> Self {
        return make { $0.backgroundView = backgroundView }
    }

    @discardableResult
    func selectedBackgroundView(_ selectedBackgroundView: UIView?) -> Self {
        return make { $0.selectedBackgroundView = selectedBackgroundView }
    }

    @available(iOS 5.0, *)
    @discardableResult
    func multipleSelectionBackgroundView(_ multipleSelectionBackgroundView: UIView?) -> Self {
        return make { $0.multipleSelectionBackgroundView = multipleSelectionBackgroundView }
    }
    
    @discardableResult
    func prepareForReuse() -> Self {
        return make { $0.prepareForReuse() }
    }

    @discardableResult
    func selectionStyle(_ selectionStyle: UITableViewCell.SelectionStyle) -> Self {
        return make { $0.selectionStyle = selectionStyle }
    }
    
    @discardableResult
    func isSelected(_ isSelected: Bool) -> Self {
        return make { $0.isSelected = isSelected }
    }
    
    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> Self {
        return make { $0.isHighlighted = isHighlighted }
    }

    @discardableResult
    func setSelected(_ selected: Bool, animated: Bool) -> Self {
        return make { $0.setSelected(selected, animated: animated) }
    }

    @discardableResult
    func setHighlighted(_ highlighted: Bool, animated: Bool) -> Self {
        return make { $0.setHighlighted(highlighted, animated: animated) }
    }
    
    @discardableResult
    func showsReorderControl(_ showsReorderControl: Bool) -> Self {
        return make { $0.showsReorderControl = showsReorderControl }
    }

    @discardableResult
    func shouldIndentWhileEditing(_ shouldIndentWhileEditing: Bool) -> Self {
        return make { $0.shouldIndentWhileEditing = shouldIndentWhileEditing }
    }

    @discardableResult
    func accessoryType(_ accessoryType: UITableViewCell.AccessoryType) -> Self {
        return make { $0.accessoryType = accessoryType }
    }
    
    @discardableResult
    func accessoryView(_ accessoryView: UIView?) -> Self {
        return make { $0.accessoryView = accessoryView }
    }

    @discardableResult
    func editingAccessoryType(_ editingAccessoryType: UITableViewCell.AccessoryType) -> Self {
        return make { $0.editingAccessoryType = editingAccessoryType }
    }

    @discardableResult
    func editingAccessoryView(_ editingAccessoryView: UIView?) -> Self {
        return make { $0.editingAccessoryView = editingAccessoryView }
    }

    @discardableResult
    func indentationLevel(_ indentationLevel: Int) -> Self {
        return make { $0.indentationLevel = indentationLevel }
    }
    
    @discardableResult
    func indentationWidth(_ indentationWidth: CGFloat) -> Self {
        return make { $0.indentationWidth = indentationWidth }
    }

    @available(iOS 7.0, *)
    @discardableResult
    func separatorInset(_ separatorInset: UIEdgeInsets) -> Self {
        return make { $0.separatorInset = separatorInset }
    }

    @discardableResult
    func isEditing(_ isEditing: Bool) -> Self {
        return make { $0.isEditing = isEditing }
    }
    
    @discardableResult
    func setEditing(_ editing: Bool, animated: Bool) -> Self {
        return make { $0.setEditing(editing, animated: animated) }
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    func focusStyle(_ focusStyle: UITableViewCell.FocusStyle) -> Self {
        return make { $0.focusStyle = focusStyle }
    }

    @available(iOS 3.0, *)
    @discardableResult
    func willTransition(to state: UITableViewCell.StateMask) -> Self {
        return make { $0.willTransition(to: state) }
    }

    @available(iOS 3.0, *)
    @discardableResult
    func didTransition(to state: UITableViewCell.StateMask) -> Self {
        return make { $0.didTransition(to: state) }
    }

    @available(iOS 11.0, *)
    @discardableResult
    func dragStateDidChange(_ dragState: UITableViewCell.DragState) -> Self {
        return make { $0.dragStateDidChange(dragState) }
    }

    @available(iOS 11.0, *)
    @discardableResult
    func userInteractionEnabledWhileDragging(_ userInteractionEnabledWhileDragging: Bool) -> Self {
        return make { $0.userInteractionEnabledWhileDragging = userInteractionEnabledWhileDragging }
    }

    @available(iOS 14.0, tvOS 14.0, *)
    @discardableResult
    func contentConfiguration(_ contentConfiguration: UIContentConfiguration?) -> Self {
        return make { $0.contentConfiguration = contentConfiguration }
    }

    @available(iOS 14.0, tvOS 14.0, *)
    @discardableResult
    func backgroundConfiguration(_ backgroundConfiguration: UIBackgroundConfiguration?) -> Self {
        return make { $0.backgroundConfiguration = backgroundConfiguration }
    }
}
