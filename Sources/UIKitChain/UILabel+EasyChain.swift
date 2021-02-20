//
//  UILabel+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

extension EasyChain where Base: UILabel {


    @discardableResult
    func text(_ text: String) -> Self {
        return make { (label) in
            label.text = text
        }
    }
    
    @discardableResult
    func font(_ font: UIFont) -> Self {
        return make { (label) in
            label.font = font
        }
    }
    
    @discardableResult
    func systemFont(ofSize fontSize: CGFloat) -> Self {
        return make { $0.font = UIFont.systemFont(ofSize: fontSize) }
    }

    @available(iOS 8.2, *)
    @discardableResult
    func systemFont(ofSize fontSize: CGFloat, weight: UIFont.Weight) -> Self {
        return make { $0.font = UIFont.systemFont(ofSize: fontSize, weight: weight)
        }
    }
    
    @discardableResult
    func textColor(_ textColor: UIColor) -> Self {
        return make { (label) in
            label.textColor = textColor
        }
    }
    
    @discardableResult
    func shadowColor(_ shadowColor: UIColor) -> Self {
        return make { (label) in
            label.shadowColor = shadowColor
        }
    }
    
    @discardableResult
    func shadowOffset(_ shadowOffset: CGSize) -> Self {
        return make { (label) in
            label.shadowOffset = shadowOffset
        }
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        return make { (label) in
            label.textAlignment = textAlignment
        }
    }
    
    @discardableResult
    func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        return make { (label) in
            label.lineBreakMode = lineBreakMode
        }
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString) -> Self {
        return make { (label) in
            label.attributedText = attributedText
        }
    }
    
    @discardableResult
    func highlightedTextColor(_ highlightedTextColor: UIColor) -> Self {
        return make { (label) in
            label.highlightedTextColor = highlightedTextColor
        }
    }
    
    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> Self {
        return make { (label) in
            label.isHighlighted = isHighlighted
        }
    }
    
    @discardableResult
    func isEnabled(_ isEnabled: Bool) -> Self {
        return make { (label) in
            label.isEnabled = isEnabled
        }
    }
    
    @discardableResult
    func numberOfLines(_ numberOfLines: Int) -> Self {
        return make { (label) in
            label.numberOfLines = numberOfLines
        }
    }
    
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        return make { (label) in
            label.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth
        }
    }
    
    @discardableResult
    func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> Self {
        return make { (label) in
            label.baselineAdjustment = baselineAdjustment
        }
    }
    
    @discardableResult
    func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> Self {
        return make { (label) in
            label.minimumScaleFactor = minimumScaleFactor
        }
    }
    
    @available(iOS 9.0, *)
    @discardableResult
    func allowsDefaultTighteningForTruncation(_ allowsDefaultTighteningForTruncation: Bool) -> Self {
        return make { (label) in
            label.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation
        }
    }
    
    @discardableResult
    func lineBreakStrategy(_ lineBreakStrategy: NSParagraphStyle.LineBreakStrategy) -> Self {
        return make { (label) in
            label.lineBreakStrategy = lineBreakStrategy
        }
    }
    
    @discardableResult
    func preferredMaxLayoutWidth(_ preferredMaxLayoutWidth: CGFloat) -> Self {
        return make { (label) in
            label.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        }
    }
}

