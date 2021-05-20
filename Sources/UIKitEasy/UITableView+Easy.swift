//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit

extension UITableView: EasyCompatible {}

public extension Easy where Base: UITableView {
       
    func register(cellClass: UITableViewCell.Type) {
        wrapper.register(cellClass, forCellReuseIdentifier: cellClass.easy.reuseIdentifier)
    }
    
    func register(nib: UINib?, for cellClass: UITableViewCell.Type) {
        wrapper.register(nib, forCellReuseIdentifier: cellClass.easy.reuseIdentifier)
    }
    
    func dequeueReusableCell<T: UITableViewCell>(cellClass: UITableViewCell.Type?, for indexPath: IndexPath? = nil) -> T? {
        guard let cls = cellClass else { return nil }
        if let indexPath = indexPath {
            return wrapper.dequeueReusableCell(withIdentifier: cls.easy.reuseIdentifier, for: indexPath) as? T
        } else {
            return wrapper.dequeueReusableCell(withIdentifier: cls.easy.reuseIdentifier) as? T
        }
    }
    
    func register(headerClass: AnyClass?) {
        if let hcls = headerClass {
            let identifier = NSStringFromClass(hcls.self)
            wrapper.register(hcls, forHeaderFooterViewReuseIdentifier: identifier)
        }
    }
    
    func numberOfRows() -> Int {
        var section = 0
        var rows = 0
        while section < wrapper.numberOfSections {
            rows += wrapper.numberOfRows(inSection: section)
            section += 1
        }
        return rows
    }
    
    func indexPathForLastRow(inSection section: Int) -> IndexPath? {
        guard section >= 0 else { return nil }
        guard section < wrapper.numberOfSections else { return nil }
        guard wrapper.numberOfRows(inSection: section) > 0 else { return IndexPath(row: 0, section: section) }
        return IndexPath(row: wrapper.numberOfRows(inSection: section) - 1, section: section)
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
    
    func removeTableFooterView() {
        wrapper.tableFooterView = nil
    }
    
    func removeTableHeaderView() {
        wrapper.tableHeaderView = nil
    }
    
    func removeLastEmptyRows() {
        let view = UIView()
        wrapper.tableFooterView = view
    }
    
    func safeScrollToRow(at indexPath: IndexPath, at scrollPosition: UITableView.ScrollPosition, animated: Bool) {
        guard indexPath.row >= 0,
            indexPath.section >= 0,
            indexPath.section < wrapper.numberOfSections,
            indexPath.row < wrapper.numberOfRows(inSection: indexPath.section) else {
            return
        }
        
        wrapper.scrollToRow(at: indexPath, at: scrollPosition, animated: animated)
    }
    
    func isValidIndexPath(_ indexPath: IndexPath) -> Bool {
        return indexPath.section >= 0 &&
            indexPath.row >= 0 &&
            indexPath.section < wrapper.numberOfSections &&
            indexPath.row < wrapper.numberOfRows(inSection: indexPath.section)
    }
    
   
}
