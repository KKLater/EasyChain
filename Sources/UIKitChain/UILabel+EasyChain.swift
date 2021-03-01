//
//  UILabel+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

extension EasyChain where Base: UILabel {


    @discardableResult func text(_ text: String) -> Self {
        make { $0.text = text }
    }
    
    @discardableResult func font(_ font: UIFont) -> Self {
        make { $0.font = font }
    }
    
    @discardableResult func systemFont(ofSize fontSize: CGFloat) -> Self {
        make { $0.font = UIFont.systemFont(ofSize: fontSize) }
    }

    @available(iOS 8.2, *)
    @discardableResult func systemFont(ofSize fontSize: CGFloat, weight: UIFont.Weight) -> Self {
        make { $0.font = UIFont.systemFont(ofSize: fontSize, weight: weight) }
    }
    
    @discardableResult func textColor(_ textColor: UIColor) -> Self {
        make { $0.textColor = textColor }
    }
    
    @discardableResult func shadowColor(_ shadowColor: UIColor) -> Self {
        make { $0.shadowColor = shadowColor }
    }
    
    @discardableResult func shadowOffset(_ shadowOffset: CGSize) -> Self {
        make { $0.shadowOffset = shadowOffset }
    }
    
    @discardableResult func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        make { $0.textAlignment = textAlignment }
    }
    
    @discardableResult func lineBreakMode(_ lineBreakMode: NSLineBreakMode) -> Self {
        make { $0.lineBreakMode = lineBreakMode }
    }
    
    @available(iOS 6.0, *)
    @discardableResult func attributedText(_ attributedText: NSAttributedString) -> Self {
        make { $0.attributedText = attributedText }
    }
    
    @discardableResult func highlightedTextColor(_ highlightedTextColor: UIColor) -> Self {
        make { $0.highlightedTextColor = highlightedTextColor }
    }
    
    @discardableResult func isHighlighted(_ isHighlighted: Bool) -> Self {
        make { $0.isHighlighted = isHighlighted }
    }
    
    @discardableResult func isEnabled(_ isEnabled: Bool) -> Self {
        make { $0.isEnabled = isEnabled }
    }
    
    @discardableResult func numberOfLines(_ numberOfLines: Int) -> Self {
        make { $0.numberOfLines = numberOfLines }
    }
    
    @discardableResult func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        make { $0.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth }
    }
    
    @discardableResult func baselineAdjustment(_ baselineAdjustment: UIBaselineAdjustment) -> Self {
        make { $0.baselineAdjustment = baselineAdjustment }
    }
    
    @discardableResult func minimumScaleFactor(_ minimumScaleFactor: CGFloat) -> Self {
        make { $0.minimumScaleFactor = minimumScaleFactor }
    }
    
    @available(iOS 9.0, *)
    @discardableResult func allowsDefaultTighteningForTruncation(_ allowsDefaultTighteningForTruncation: Bool) -> Self {
        make { $0.allowsDefaultTighteningForTruncation = allowsDefaultTighteningForTruncation }
    }
    
    @discardableResult func lineBreakStrategy(_ lineBreakStrategy: NSParagraphStyle.LineBreakStrategy) -> Self {
        make { $0.lineBreakStrategy = lineBreakStrategy }
    }
    
    @discardableResult func preferredMaxLayoutWidth(_ preferredMaxLayoutWidth: CGFloat) -> Self {
        make { $0.preferredMaxLayoutWidth = preferredMaxLayoutWidth }
    }
}

