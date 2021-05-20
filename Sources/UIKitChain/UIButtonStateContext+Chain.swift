//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit
import EasyChainCore
import UIKitEasy

public extension EasyChainCore.Chain where Base: UIButtonStateContext {

    @discardableResult func title(_ title: String?) -> Self {
        return make { $0.title = title }
    }
    
    @discardableResult func attributedTitle(_ attributedTitle: NSAttributedString?) -> Self {
        return make { $0.attributedTitle = attributedTitle }
    }
    
    @discardableResult func titleColor(_ titleColor: UIColor?) -> Self {
        return make { $0.titleColor = titleColor }
    }
    
    @discardableResult func titleShadowColor(_ titleShadowColor: UIColor?) -> Self {
        return make { $0.titleShadowColor = titleShadowColor }
    }
    
    @discardableResult func image(_ image: UIImage?) -> Self {
        return make { $0.image = image }
    }
   
    @discardableResult func backgroundImage(_ backgroundImage: UIImage?) -> Self {
        return make { $0.backgroundImage = backgroundImage }
    }
    
    @available(iOS 13.0, *)
    @discardableResult func preferredSymbolConfigurationforImage(_ preferredSymbolConfigurationforImage: UIImage.SymbolConfiguration?) -> Self {
         make { $0.preferredSymbolConfigurationforImage = preferredSymbolConfigurationforImage }
    }
}
