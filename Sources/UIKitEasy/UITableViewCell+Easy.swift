//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit
import EasyChainCore


public extension Easy where Base: UITableViewCell {

    static var reuseIdentifier: String {
        return "com.easy.tableView.cell.identifier."+"\(Base.self)"
    }
    
    var reuseIdentifier: String {
        return Base.es.reuseIdentifier
    }
}
