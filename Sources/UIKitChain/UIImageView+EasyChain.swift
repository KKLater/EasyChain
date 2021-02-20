//
//  UIImageView+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//


import UIKit
import EasyChainCore

extension EasyChain where Base: UIImageView {
    
    @discardableResult
    func image(_ image: UIImage?) -> Self {
        return make { (imgView) in
            imgView.image = image
        }
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    func highlightedImage(_ highlightedImage: UIImage?) -> Self {
        return make { (imgView) in
            imgView.highlightedImage = highlightedImage
        }
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func preferredSymbolConfiguration(_ preferredSymbolConfiguration: UIImage.SymbolConfiguration?) -> Self {
        return make { (imgView) in
            imgView.preferredSymbolConfiguration = preferredSymbolConfiguration
        }
    }
   
    @discardableResult
    func isUserInteractionEnabled(_ isUserInteractionEnabled: Bool) -> Self {
        return make { (imgView) in
            imgView.isUserInteractionEnabled = isUserInteractionEnabled
        }
    }
    
    @available(iOS 3.0, *)
    @discardableResult
    func isHighlighted(_ isHighlighted: Bool) -> Self {
        return make { (imgView) in
            imgView.isHighlighted = isHighlighted
        }
    }
    
    
    @discardableResult
    func animationImages(_ animationImages: [UIImage]?) -> Self {
        return make { (imgView) in
            imgView.animationImages = animationImages
        }
    }
        
    @available(iOS 3.0, *)
    @discardableResult
    func highlightedAnimationImages(_ highlightedAnimationImages: [UIImage]?) -> Self {
        return make { (imgView) in
            imgView.highlightedAnimationImages = highlightedAnimationImages
        }
    }
    
    @discardableResult
    func animationDuration(_ animationDuration: TimeInterval) -> Self {
        return make { (imgView) in
            imgView.animationDuration = animationDuration
        }
    }
    
    @discardableResult
    func animationRepeatCount(_ animationRepeatCount: Int) -> Self {
        return make { (imgView) in
            imgView.animationRepeatCount = animationRepeatCount
        }
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> Self {
        return make { (imgView) in
            imgView.tintColor = tintColor
        }
    }
}
