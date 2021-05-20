//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit
import EasyChainCore

public extension Chain where Base: UIActivityIndicatorView {
    
    @discardableResult func style(_ style: UIActivityIndicatorView.Style) -> Self {
        return make { $0.style = style }
    }
    
    @discardableResult func isHidesWhenStopped(_ isHidesWhenStopped: Bool) -> Self {
        return make { $0.hidesWhenStopped = isHidesWhenStopped }
    }

    @available(iOS 5.0, *)
    @discardableResult func color(_ color: UIColor) -> Self {
        return make { $0.color = color }
    }

}
