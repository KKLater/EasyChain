//
//  UITableView+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

extension EasyChain where Base: UITableView {
    
    @discardableResult
    func dataSource(_ dataSource: UITableViewDataSource?) -> Self {
        return make { $0.dataSource = dataSource }
    }
    
    @discardableResult
    func delegate(_ delegate: UITableViewDelegate?) -> Self {
        return make { $0.delegate = delegate }
    }

    @available(iOS 10.0, *)
    @discardableResult
    func prefetchDataSource(_ prefetchDataSource: UITableViewDataSourcePrefetching?) -> Self {
        return make { $0.prefetchDataSource = prefetchDataSource }
    }

    @available(iOS 11.0, *)
    @discardableResult
    func dragDelegate(_ dragDelegate: UITableViewDragDelegate?) -> Self {
        return make { $0.dragDelegate = dragDelegate }
    }

    @available(iOS 11.0, *)
    @discardableResult
    func dropDelegate(_ dropDelegate: UITableViewDropDelegate?) -> Self {
        return make { $0.dropDelegate = dropDelegate }
    }

    @discardableResult
    func rowHeight(_ rowHeight: CGFloat) -> Self {
        return make { $0.rowHeight = rowHeight }
    }

    @discardableResult
    func sectionHeaderHeight(_ sectionHeaderHeight: CGFloat) -> Self {
        return make { $0.sectionHeaderHeight = sectionHeaderHeight }
    }

    @discardableResult
    func sectionFooterHeight(_ sectionFooterHeight: CGFloat) -> Self {
        return make { $0.sectionFooterHeight = sectionFooterHeight }
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    func estimatedRowHeight(_ estimatedRowHeight: CGFloat) -> Self {
        return make { $0.estimatedRowHeight = estimatedRowHeight }
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    func estimatedSectionHeaderHeight(_ estimatedSectionHeaderHeight: CGFloat) -> Self {
        return make { $0.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight }
    }

    @available(iOS 7.0, *)
    @discardableResult
    func estimatedSectionFooterHeight(_ estimatedSectionFooterHeight: CGFloat) -> Self {
        return make { $0.estimatedSectionFooterHeight = estimatedSectionFooterHeight }
    }

    
    @available(iOS 7.0, *)
    @discardableResult
    func separatorInset(_ separatorInset: UIEdgeInsets) -> Self {
        return make { $0.separatorInset = separatorInset }
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func separatorInsetReference(_ separatorInsetReference: UITableView.SeparatorInsetReference) -> Self {
        return make { $0.separatorInsetReference = separatorInsetReference }
    }

    @available(iOS 3.2, *)
    @discardableResult
    func backgroundView(_ backgroundView: UIView?) -> Self {
        return make { $0.backgroundView = backgroundView }
    }
    
    @discardableResult
    func scrollToRow(at indexPath: IndexPath, at scrollPosition: UITableView.ScrollPosition, animated: Bool) -> Self {
        return make { $0.scrollToRow(at: indexPath, at: scrollPosition, animated: animated) }
    }
    
    @discardableResult
    func scrollToNearestSelectedRow(at scrollPosition: UITableView.ScrollPosition, animated: Bool) -> Self {
        return make { $0.scrollToNearestSelectedRow(at: scrollPosition, animated: animated) }
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil) -> Self {
        return make { $0.performBatchUpdates(updates, completion: completion) }
    }

    @discardableResult
    func updates(_ updates:(() -> Void)?, completion: ((Bool) -> Void)? = nil) -> Self {
        if #available(iOS 11.0, *) {
            return make { $0.performBatchUpdates(updates, completion: completion) }
        } else {
            return make { (tableView) in
                DispatchQueue.main.async {
                    CATransaction.begin()
                    CATransaction.setCompletionBlock {
                        completion?(true)
                    }
                    tableView.beginUpdates()
                    updates?()
                    tableView.endUpdates()
                    CATransaction.commit()
                }
            }
        }
    }
    
    @discardableResult
    func insertSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) -> Self {
        return make { $0.insertSections(sections, with: animation)}
    }
    
    @discardableResult
    func deleteSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) -> Self {
        return make { $0.deleteSections(sections, with: animation)}
    }
    
    @discardableResult
    @available(iOS 3.0, *)
    func reloadSections(_ sections: IndexSet, with animation: UITableView.RowAnimation) -> Self {
        return make { $0.reloadSections(sections, with: animation)}
    }

    @discardableResult
    @available(iOS 5.0, *)
    func moveSection(_ section: Int, toSection newSection: Int) -> Self {
        return make { $0.moveSection(section, toSection: newSection)}
    }

    @discardableResult
    func insertRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) -> Self {
        return make { $0.insertRows(at: indexPaths, with: animation)}
    }
    
    @discardableResult
    func deleteRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) -> Self {
        return make { $0.deleteRows(at: indexPaths, with: animation)}
    }

    @available(iOS 3.0, *)
    @discardableResult
    func reloadRows(at indexPaths: [IndexPath], with animation: UITableView.RowAnimation) -> Self {
        return make { $0.reloadRows(at: indexPaths, with: animation)}
    }

    @available(iOS 5.0, *)
    @discardableResult
    func moveRow(at indexPath: IndexPath, to newIndexPath: IndexPath) -> Self {
        return make { $0.moveRow(at: indexPath, to: newIndexPath)}
    }
    
    @discardableResult
    func reloadData() -> Self {
        return make { $0.reloadData() }
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    func reloadSectionIndexTitles() -> Self {
        return make { $0.reloadSectionIndexTitles() }
    }

    @discardableResult
    func isEditing(_ isEditing: Bool) -> Self {
        return make { $0.isEditing = isEditing }
    }

    @discardableResult
    func setEditing(_ editing: Bool, animated: Bool) -> Self {
        return make { $0.setEditing(editing, animated: animated) }
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    func allowsSelection(_ allowsSelection: Bool) -> Self {
        return make { $0.allowsSelection = allowsSelection }
    }

    @discardableResult
    func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool) -> Self {
        return make { $0.allowsSelectionDuringEditing = allowsSelectionDuringEditing }
    }

    @available(iOS 5.0, *)
    @discardableResult
    func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> Self {
        return make { $0.allowsMultipleSelection = allowsMultipleSelection }
    }

    @available(iOS 5.0, *)
    @discardableResult
    func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool) -> Self {
        return make { $0.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing }
    }
    
    @discardableResult
    func selectRow(at indexPath: IndexPath?, animated: Bool, scrollPosition: UITableView.ScrollPosition) -> Self {
        return make { $0.selectRow(at: indexPath, animated: animated, scrollPosition: scrollPosition) }

    }

    @discardableResult
    func deselectRow(at indexPath: IndexPath, animated: Bool) -> Self {
        return make { $0.deselectRow(at: indexPath, animated: animated) }
    }
    
    @discardableResult
    func sectionIndexMinimumDisplayRowCount(_ sectionIndexMinimumDisplayRowCount: Int) -> Self {
        return make { $0.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount }
    }

    @available(iOS 6.0, *)
    @discardableResult
    func sectionIndexColor(_ sectionIndexColor: UIColor?) -> Self {
        return make { $0.sectionIndexColor = sectionIndexColor }
    }

    @available(iOS 7.0, *)
    @discardableResult
    func sectionIndexBackgroundColor(_ sectionIndexBackgroundColor: UIColor?) -> Self {
        return make { $0.sectionIndexBackgroundColor = sectionIndexBackgroundColor }
    }

    @available(iOS 6.0, *)
    @discardableResult
    func sectionIndexTrackingBackgroundColor(_ sectionIndexTrackingBackgroundColor: UIColor?) -> Self {
        return make { $0.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor }
    }

    @discardableResult
    func separatorStyle(_ separatorStyle: UITableViewCell.SeparatorStyle) -> Self {
        return make { $0.separatorStyle = separatorStyle }
    }
    
    @discardableResult
    func separatorColor(_ separatorColor: UIColor?) -> Self {
        return make { $0.separatorColor = separatorColor }
    }


    @available(iOS 8.0, *)
    @discardableResult
    func separatorEffect(_ separatorEffect: UIVisualEffect?) -> Self {
        return make { $0.separatorEffect = separatorEffect }
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    func cellLayoutMarginsFollowReadableWidth(_ cellLayoutMarginsFollowReadableWidth: Bool) -> Self {
        return make { $0.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth }
    }

    @available(iOS 11.0, *)
    @discardableResult
    func insetsContentViewsToSafeArea(_ insetsContentViewsToSafeArea: Bool) -> Self {
        return make { $0.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea }
    }

    @discardableResult
    func tableHeaderView(_ tableHeaderView: UIView) -> Self {
        return make { $0.tableHeaderView = tableHeaderView }
    }

    @discardableResult
    func tableFooterView(_ tableFooterView: UIView) -> Self {
        return make { $0.tableFooterView = tableFooterView }
    }
    
    @available(iOS 5.0, *)
    @discardableResult
    func register(_ nib: UINib?, forCellReuseIdentifier identifier: String) -> Self {
        return make { $0.register(nib, forCellReuseIdentifier: identifier) }
    }

    @available(iOS 6.0, *)
    @discardableResult
    func register(_ cellClass: AnyClass?, forCellReuseIdentifier identifier: String) -> Self {
        return make { $0.register(cellClass, forCellReuseIdentifier: identifier) }
    }

    
    @available(iOS 6.0, *)
    @discardableResult
    func register(_ nib: UINib?, forHeaderFooterViewReuseIdentifier identifier: String) -> Self {
        return make { $0.register(nib, forHeaderFooterViewReuseIdentifier: identifier) }
    }

    @available(iOS 6.0, *)
    @discardableResult
    func register(_ aClass: AnyClass?, forHeaderFooterViewReuseIdentifier identifier: String) -> Self {
        return make { $0.register(aClass, forHeaderFooterViewReuseIdentifier: identifier) }
    }

    @available(iOS 9.0, *)
    @discardableResult
    func remembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool) -> Self {
        return make { $0.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath }
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func selectionFollowsFocus(_ selectionFollowsFocus: Bool) -> Self {
        return make { $0.selectionFollowsFocus = selectionFollowsFocus }
    }
    
    @available(iOS 11.0, *)
    @discardableResult
    func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> Self {
        return make { $0.dragInteractionEnabled = dragInteractionEnabled }
    }
}
