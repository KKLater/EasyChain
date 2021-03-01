//
//  UICollectionView+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

extension EasyChain where Base: UICollectionView {

    @discardableResult func collectionViewLayout(_ collectionViewLayout: UICollectionViewLayout) -> Self {
        return make { $0.collectionViewLayout = collectionViewLayout }
    }

    @discardableResult func delegate(_ delegate: UICollectionViewDelegate?) -> Self {
        return make { $0.delegate = delegate }
    }

    @discardableResult func dataSource(_ dataSource: UICollectionViewDataSource?) -> Self {
        return make { $0.dataSource = dataSource }
    }
    
    @available(iOS 10.0, *)
    @discardableResult func prefetchDataSource(_ prefetchDataSource: UICollectionViewDataSourcePrefetching?) -> Self {
        return make { $0.prefetchDataSource = prefetchDataSource }
    }

    @available(iOS 10.0, *)
    @discardableResult func isPrefetchingEnabled(_ isPrefetchingEnabled: Bool) -> Self {
        return make { $0.isPrefetchingEnabled = isPrefetchingEnabled }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func dragDelegate(_ dragDelegate: UICollectionViewDragDelegate?) -> Self {
        return make { $0.dragDelegate = dragDelegate }
    }

    @available(iOS 11.0, *)
    @discardableResult func dropDelegate(_ dropDelegate: UICollectionViewDropDelegate?) -> Self {
        return make { $0.dropDelegate = dropDelegate }
    }
    
    @available(iOS 11.0, *)
    @discardableResult func dragInteractionEnabled(_ dragInteractionEnabled: Bool) -> Self {
        return make { $0.dragInteractionEnabled = dragInteractionEnabled }
    }

    @available(iOS 11.0, *)
    @discardableResult func reorderingCadence(_ reorderingCadence: UICollectionView.ReorderingCadence) -> Self {
        return make { $0.reorderingCadence = reorderingCadence }
    }
    
    @discardableResult func backgroundView(_ backgroundView: UIView?) -> Self {
        return make { $0.backgroundView = backgroundView }
    }
    
    @discardableResult func register(_ cellClass: AnyClass?, forCellWithReuseIdentifier identifier: String) -> Self {
        return make { $0.register(cellClass, forCellWithReuseIdentifier: identifier) }
    }

    @discardableResult func register(_ nib: UINib?, forCellWithReuseIdentifier identifier: String) -> Self {
        return make { $0.register(nib, forCellWithReuseIdentifier: identifier) }
    }
    
    @discardableResult func register(_ viewClass: AnyClass?, forSupplementaryViewOfKind elementKind: String, withReuseIdentifier identifier: String) -> Self {
        return make { $0.register(viewClass, forSupplementaryViewOfKind: elementKind, withReuseIdentifier: identifier) }
    }

    @discardableResult func register(_ nib: UINib?, forSupplementaryViewOfKind kind: String, withReuseIdentifier identifier: String) -> Self {
        return make { $0.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: identifier) }
    }
    
    @discardableResult func allowsSelection(_ allowsSelection: Bool) -> Self {
        return make { $0.allowsSelection = allowsSelection }
    }

    @discardableResult func allowsMultipleSelection(_ allowsMultipleSelection: Bool) -> Self {
        return make { $0.allowsMultipleSelection = allowsMultipleSelection }
    }
    
    @discardableResult func selectItem(at indexPath: IndexPath?, animated: Bool, scrollPosition: UICollectionView.ScrollPosition) -> Self {
        return make { $0.selectItem(at: indexPath, animated: animated, scrollPosition: scrollPosition) }
    }
    
    @discardableResult func deselectItem(at indexPath: IndexPath, animated: Bool) -> Self {
        return make { $0.deselectItem(at: indexPath, animated: animated) }
    }
    
    @discardableResult func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool) -> Self {
        return make { $0.setCollectionViewLayout(layout, animated: animated) }
    }

    @available(iOS 7.0, *)
    @discardableResult func setCollectionViewLayout(_ layout: UICollectionViewLayout, animated: Bool, completion: ((Bool) -> Void)? = nil) -> Self {
        return make { $0.setCollectionViewLayout(layout, animated: animated, completion: completion)}
    }
    
    @available(iOS 7.0, *)
    @discardableResult func finishInteractiveTransition() -> Self {
        return make { $0.finishInteractiveTransition() }
    }

    @available(iOS 7.0, *)
    @discardableResult func cancelInteractiveTransition() -> Self {
        return make { $0.cancelInteractiveTransition() }
    }
    
    @discardableResult func scrollToItem(at indexPath: IndexPath, at scrollPosition: UICollectionView.ScrollPosition, animated: Bool) -> Self {
        return make { $0.scrollToItem(at: indexPath, at: scrollPosition, animated: animated)}
    }
    
    @discardableResult func insertSections(_ sections: IndexSet) -> Self {
        return make { $0.insertSections(sections) }
    }
    
    @discardableResult func deleteSections(_ sections: IndexSet) -> Self {
        return make { $0.deleteSections(sections) }
    }

    @discardableResult func reloadSections(_ sections: IndexSet) -> Self {
        return make { $0.reloadSections(sections) }
    }


    @discardableResult func moveSection(_ section: Int, toSection newSection: Int) -> Self {
        return make { $0.moveSection(section, toSection: newSection) }
    }

    @discardableResult func insertItems(at indexPaths: [IndexPath]) -> Self {
        return make { $0.insertItems(at: indexPaths) }
    }
    
    @discardableResult func deleteItems(at indexPaths: [IndexPath]) -> Self {
        return make { $0.deleteItems(at: indexPaths) }
    }


    @discardableResult func reloadItems(at indexPaths: [IndexPath]) -> Self {
        return make { $0.reloadItems(at: indexPaths) }
    }

    @discardableResult func moveItem(at indexPath: IndexPath, to newIndexPath: IndexPath) -> Self {
        return make { $0.moveItem(at: indexPath, to: newIndexPath) }
    }

    @discardableResult func performBatchUpdates(_ updates: (() -> Void)?, completion: ((Bool) -> Void)? = nil) -> Self {
        return make { $0.performBatchUpdates(updates, completion: completion)}
    }
    
    
    @available(iOS 9.0, *)
    @discardableResult func updateInteractiveMovementTargetPosition(_ targetPosition: CGPoint) -> Self {
        return make { $0.updateInteractiveMovementTargetPosition(targetPosition)}
    }

    @available(iOS 9.0, *)
    @discardableResult func endInteractiveMovement() -> Self {
        return make { $0.endInteractiveMovement() }
    }

    @available(iOS 9.0, *)
    @discardableResult func cancelInteractiveMovement() -> Self {
        return make { $0.cancelInteractiveMovement() }
    }

    
    @available(iOS 9.0, *)
    @discardableResult func remembersLastFocusedIndexPath(_ remembersLastFocusedIndexPath: Bool) -> Self {
        return make { $0.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath }
    }

    
    @available(iOS 14.0, *)
    @discardableResult func selectionFollowsFocus(_ selectionFollowsFocus: Bool) -> Self {
        return make { $0.selectionFollowsFocus = selectionFollowsFocus }
    }
    
    @available(iOS 14.0, *)
    @discardableResult func isEditing(_ isEditing: Bool) -> Self {
        return make { $0.isEditing = isEditing }
    }

    @available(iOS 14.0, *)
    @discardableResult func allowsSelectionDuringEditing(_ allowsSelectionDuringEditing: Bool) -> Self {
        return make { $0.allowsSelectionDuringEditing = allowsSelectionDuringEditing }
    }

    @available(iOS 14.0, *)
    @discardableResult func allowsMultipleSelectionDuringEditing(_ allowsMultipleSelectionDuringEditing: Bool) -> Self {
        return make { $0.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing }
    }
}
