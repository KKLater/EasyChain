//
//  UIBarItem+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//


import UIKit
import EasyChainCore

extension UIBarItem: ChainCompatible {}
public extension Chain where Base: UIBarItem {

    @discardableResult func isEnabled(_ isEnabled: Bool) -> Self {
        return make { $0.isEnabled = isEnabled }
    }

    @discardableResult func title(_ title: String?) -> Self {
        return make { $0.title = title }
    }

    @discardableResult func image(_ image: UIImage?) -> Self {
        return make { $0.image = image }
    }

    @available(iOS 5.0, *)
    @discardableResult func landscapeImagePhone(_ landscapeImagePhone: UIImage?) -> Self {
        return make { $0.landscapeImagePhone = landscapeImagePhone }
    }

    @available(iOS 11.0, *)
    @discardableResult func largeContentSizeImage(_ largeContentSizeImage: UIImage?) -> Self {
        return make { $0.largeContentSizeImage = largeContentSizeImage }
    }

    
    @discardableResult func imageInsets(_ imageInsets: UIEdgeInsets) -> Self {
        return make { $0.imageInsets = imageInsets }
    }

    @available(iOS 5.0, *)
    @discardableResult func landscapeImagePhoneInsets(_ landscapeImagePhoneInsets: UIEdgeInsets) -> Self {
        return make { $0.landscapeImagePhoneInsets = landscapeImagePhoneInsets }
    }

    @available(iOS 11.0, *)
    @discardableResult func largeContentSizeImageInsets(_ largeContentSizeImageInsets: UIEdgeInsets) -> Self {
        return make { $0.largeContentSizeImageInsets = largeContentSizeImageInsets }
    }

    @discardableResult func tag(_ tag: Int) -> Self {
        return make { $0.tag = tag }
    }

    @available(iOS 5.0, *)
    @discardableResult func setTitleTextAttributes(_ attributes: [NSAttributedString.Key : Any]?, for state: UIControl.State) -> Self {
        return make { $0.setTitleTextAttributes(attributes, for: state) }
    }
}
