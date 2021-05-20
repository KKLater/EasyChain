//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit
import EasyChainCore



public extension Easy where Base: UIWindow {

    var isMain: Bool {
        return UIApplication.es.mainWindow == wrapper
    }
}

