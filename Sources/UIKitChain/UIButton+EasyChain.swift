//
//  UIButton+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

extension EasyChain where Base: UIButton {

    @discardableResult
    func contentEdgeInsets(_ contentEdgeInsets: UIEdgeInsets) -> Self {
        return make { $0.contentEdgeInsets = contentEdgeInsets }
    }
    
    @discardableResult
    func titleEdgeInsets(_ titleEdgeInsets: UIEdgeInsets) -> Self {
        return make { $0.titleEdgeInsets = titleEdgeInsets }
    }
    
    @discardableResult
    func reversesTitleShadowWhenHighlighted(_ reversesTitleShadowWhenHighlighted: Bool) -> Self {
        return make { $0.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted}
    }
    
    @discardableResult
    func imageEdgeInsets(_ imageEdgeInsets: UIEdgeInsets) -> Self {
        return make { $0.imageEdgeInsets = imageEdgeInsets }
    }
    
    @discardableResult
    func adjustsImageWhenHighlighted(_ adjustsImageWhenHighlighted: Bool) -> Self {
        return make { $0.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted }
    }
    
    @discardableResult
    func adjustsImageWhenDisabled(_ adjustsImageWhenDisabled: Bool) -> Self {
        return make { $0.adjustsImageWhenDisabled = adjustsImageWhenDisabled }
    }
    
    @discardableResult
    func showsTouchWhenHighlighted(_ showsTouchWhenHighlighted: Bool) -> Self {
        return make { $0.showsTouchWhenHighlighted = showsTouchWhenHighlighted }
    }
    
    @available(iOS 5.0, *)
    @discardableResult
    func tintColor(_ tintColor: UIColor) -> Self {
        return make { $0.tintColor = tintColor }
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func role(_ role: UIButton.Role) -> Self {
        return make { $0.role = role }
    }
    
    
    @available(iOS 13.4, *)
    @discardableResult
    func pointerInteractionEnabled(_ pointerInteractionEnabled: Bool) -> Self {
        return make { $0.isPointerInteractionEnabled = pointerInteractionEnabled }
    }
    
    @available(iOS 14.0, *)
    @discardableResult
    func menu(_ menu: UIMenu?) -> Self {
        return make { $0.menu = menu }
    }
    
    
    @discardableResult
    func setTitle(_ title: String?, for state: UIControl.State) -> Self {
        return make { $0.setTitle(title, for: state) }
    }
        
    @discardableResult
    func setTitleColor(_ color: UIColor?, for state: UIControl.State) -> Self {
        return make { $0.setTitleColor(color, for: state) }
    }
    
    @discardableResult
    func setTitleShadowColor(_ color: UIColor?, for state: UIControl.State) -> Self {
        return make { $0.setTitleShadowColor(color, for: state) }
    }

    @discardableResult
    func setImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        return make { $0.setImage(image, for: state) }
    }
    
    @discardableResult
    func setBackgroundImage(_ image: UIImage?, for state: UIControl.State) -> Self {
        return make { $0.setBackgroundImage(image, for: state) }
    }
    
    @available(iOS 13.0, *)
    @discardableResult
    func setPreferredSymbolConfiguration(_ configuration: UIImage.SymbolConfiguration?, forImageIn state: UIControl.State) -> Self {
        return make { $0.setPreferredSymbolConfiguration(configuration, forImageIn: state) }
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    func setAttributedTitle(_ title: NSAttributedString?, for state: UIControl.State) -> Self {
        return make { $0.setAttributedTitle(title, for: state) }
    }
}

