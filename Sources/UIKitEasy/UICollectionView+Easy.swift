//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit
import EasyChainCore

public extension EasyChainCore.Easy where Base: UICollectionView {

    func register(cellClass: UICollectionViewCell.Type) {
        wrapper.register(cellClass, forCellWithReuseIdentifier: cellClass.easy.reuseIdentifier)
    }
    
    func register(nib: UINib?, for cellClass: UICollectionViewCell.Type) {
        wrapper.register(nib, forCellWithReuseIdentifier: cellClass.easy.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(cellClass: T.Type, for indexPath: IndexPath) -> T? {
        return wrapper.dequeueReusableCell(withReuseIdentifier: cellClass.easy.reuseIdentifier, for: indexPath) as? T
       
    }

    func numberOfItems() -> Int {
        var section = 0
        var items = 0
        while section < wrapper.numberOfSections {
            items += wrapper.numberOfItems(inSection: section)
            section += 1
        }
        return items
    }
    
    func indexPathForLastItem(inSection section: Int) -> IndexPath? {
        guard section >= 0 else { return nil }
        guard section < wrapper.numberOfSections else { return nil }
        guard wrapper.numberOfItems(inSection: section) > 0 else { return IndexPath(item: 0, section: section) }
        return IndexPath(item: wrapper.numberOfItems(inSection: section) - 1, section: section)
    }
    
    var lastSection: Int? {
        return wrapper.numberOfSections > 0 ? wrapper.numberOfSections - 1 : nil
    }
    
    func reloadData(_ completion: @escaping () ->Void) {
        UIView.animate(withDuration: 0) {
            self.wrapper.reloadData()
        } completion: { _ in
            completion()
        }
    }


    func safeScrollToRow(at indexPath: IndexPath, at scrollPosition: UICollectionView.ScrollPosition, animated: Bool) {
        guard indexPath.item >= 0,
            indexPath.section >= 0,
            indexPath.section < wrapper.numberOfSections,
            indexPath.item < wrapper.numberOfItems(inSection: indexPath.section) else {
            return
        }
        
        wrapper.scrollToItem(at: indexPath, at: scrollPosition, animated: animated)
    }
    
    func isValidIndexPath(_ indexPath: IndexPath) -> Bool {
        return indexPath.section >= 0 &&
            indexPath.item >= 0 &&
            indexPath.section < wrapper.numberOfSections &&
            indexPath.item < wrapper.numberOfItems(inSection: indexPath.section)
    }
    
}
