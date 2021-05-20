//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit

extension UITableViewCell: EasyCompatible {}

public extension Easy where Base: UITableViewCell {

    static var reuseIdentifier: String {
        return "com.easy.tableView.cell.identifier."+"\(Base.self)"
    }
    
    var reuseIdentifier: String {
        return Base.easy.reuseIdentifier
    }
}
