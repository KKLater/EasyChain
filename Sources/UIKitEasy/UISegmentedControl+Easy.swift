//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit

public extension Easy where Base: UISegmentedControl {
    
    var segmentTitles: [String] {
        get {
            let range = 0..<wrapper.numberOfSegments
            return range.compactMap { wrapper.titleForSegment(at: $0) }
        }
        set {
            wrapper.removeAllSegments()
            for (index, title) in newValue.enumerated() {
                wrapper.insertSegment(withTitle: title, at: index, animated: false)
            }
        }
    }
    
    var segmentImages: [UIImage] {
        get {
            let range = 0..<wrapper.numberOfSegments
            return range.compactMap { wrapper.imageForSegment(at: $0) }
        }
        set {
            wrapper.removeAllSegments()
            for (index, image) in newValue.enumerated() {
                wrapper.insertSegment(with: image, at: index, animated: false)
            }
        }
    }
}
