//
//  UIImageView+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//


import UIKit
import EasyChainCore

public extension EasyChain where Base: UIImageView {
    
    @discardableResult func image(_ image: UIImage?) -> Self {
        make { $0.image = image }
    }
    
    @available(iOS 3.0, *)
    @discardableResult func highlightedImage(_ highlightedImage: UIImage?) -> Self {
        make { $0.highlightedImage = highlightedImage }
    }
    
    @available(iOS 13.0, *)
    @discardableResult func preferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?) -> Self {
        make{ $0.preferredSymbolConfiguration = preferredSymbolConfiguration }
    }
   
    @discardableResult func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        make{ $0.isUserInteractionEnabled = isUserInteractionEnabled }
    }
    
    @available(iOS 3.0, *)
    @discardableResult func isHighlighted(_ isHighlighted: Bool) -> Self {
        make{ $0.isHighlighted = isHighlighted }
    }
    
    @discardableResult func animationImages(_ animationImages: [UIImage]?) -> Self {
        make{ $0.animationImages = animationImages }
    }
        
    @available(iOS 3.0, *)
    @discardableResult func highlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) -> Self {
        make{ $0.highlightedAnimationImages = highlightedAnimationImages }
    }
    
    @discardableResult func animationDuration(_ animationDuration: TimeInterval) -> Self {
        make{ $0.animationDuration = animationDuration }
    }
    
    @discardableResult func animationRepeatCount(_ animationRepeatCount: Int) -> Self {
        make{ $0.animationRepeatCount = animationRepeatCount }
    }
    
    @available(iOS 7.0, *)
    @discardableResult func tintColor(_ tintColor: UIColor) -> Self {
        make { $0.tintColor = tintColor }
    }
}
