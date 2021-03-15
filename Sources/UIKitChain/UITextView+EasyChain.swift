//
//  UITextView+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

public extension EasyChain where Base: UITextView {

    @discardableResult func delegate(_ delegate: UITextViewDelegate?) -> Self {
        make { $0.delegate = delegate }
    }

    @discardableResult func text(_ text: String!) -> Self {
        make { $0.text = text }
    }
    
    @discardableResult func font(_ font: UIFont?) -> Self {
        make { $0.font = font }
    }

    @discardableResult func textColor(_ textColor: UIColor?) -> Self {
        make { $0.textColor = textColor }
    }

    @discardableResult func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        make { $0.textAlignment = textAlignment }
    }

    @discardableResult func selectedRange(_ selectedRange: NSRange) -> Self {
        make { $0.selectedRange = selectedRange }
    }

    @discardableResult func isEditable(_ isEditable: Bool) -> Self {
        make { $0.isEditable = isEditable }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func isSelectable(_ isSelectable: Bool) -> Self {
        make { $0.isSelectable = isSelectable }
    }
    
    @available(iOS 3.0, *)
    @discardableResult func dataDetectorTypes(_ dataDetectorTypes: UIDataDetectorTypes) -> Self {
        make { $0.dataDetectorTypes = dataDetectorTypes }
    }

    @available(iOS 6.0, *)
    @discardableResult func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> Self {
        make { $0.allowsEditingTextAttributes = allowsEditingTextAttributes }
    }

    @available(iOS 6.0, *)
    @discardableResult func attributedText(_ attributedText: NSAttributedString!) -> Self {
        make { $0.attributedText = attributedText }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]) -> Self {
        make { $0.typingAttributes = typingAttributes }
    }
    
    @discardableResult func scrollRangeToVisible(_ range: NSRange) -> Self {
        make { $0.scrollRangeToVisible(range) }
    }
    
    @discardableResult func inputView(_ inputView: UIView?) -> Self {
        make { $0.inputView = inputView }
    }

    @discardableResult func inputAccessoryView(_ inputAccessoryView: UIView?) -> Self {
        make { $0.inputAccessoryView = inputAccessoryView }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func clearsOnInsertion(_ clearsOnInsertion: Bool) -> Self {
        make { $0.clearsOnInsertion = clearsOnInsertion }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func textContainerInset(_ textContainerInset: UIEdgeInsets) -> Self {
        make { $0.textContainerInset = textContainerInset }
    }

    @available(iOS 7.0, *)
    @discardableResult func linkTextAttributes(_ linkTextAttributes: [NSAttributedString.Key : Any]!) -> Self {
        make { $0.linkTextAttributes = linkTextAttributes }
    }

    @available(iOS 13.0, *)
    @discardableResult func usesStandardTextScaling(_ usesStandardTextScaling: Bool) -> Self {
        make { $0.usesStandardTextScaling = usesStandardTextScaling }
    }
}
