//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit
import EasyChainCore

public extension Chain where Base: UISegmentedControl {
    
    @discardableResult func segmentTitles(_ segmentTitles: [String]) -> Self {
        return make { $0.easy.segmentTitles = segmentTitles }
    }
    
    @discardableResult func segmentImages(_ segmentImages: [UIImage]) -> Self {
        return make { $0.easy.segmentImages = segmentImages }
    }
}
