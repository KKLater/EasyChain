//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit

public extension Easy where Base: UITextView {
 
    func clear() {
        wrapper.text = ""
        wrapper.attributedText = nil
    }

    func scrollToBottom() {
        let range = NSRange(location: (wrapper.text as NSString).length - 1, length: 1)
        wrapper.scrollRangeToVisible(range)
    }

    func scrollToTop() {
        let range = NSRange(location: 0, length: 1)
        wrapper.scrollRangeToVisible(range)
    }

    func wrapToContent() {
        wrapper.contentInset = .zero
        wrapper.scrollIndicatorInsets = .zero
        wrapper.contentOffset = .zero
        wrapper.textContainerInset = .zero
        wrapper.textContainer.lineFragmentPadding = 0
        wrapper.sizeToFit()
    }
}
