//
//  UITabBar+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//

import UIKit
import EasyChainCore

public extension Chain where Base: UITabBar {

    @discardableResult func delegate(_ delegate: UITabBarDelegate?) -> Self {
        make { $0.delegate = delegate }
    }

    @discardableResult func items(_ items: [UITabBarItem]?) -> Self {
        make { $0.items = items }
    }
    
    @discardableResult func selectedItem(_ selectedItem: UITabBarItem?) -> Self {
        make { $0.selectedItem = selectedItem }
    }
    
    @discardableResult func setItems(_ items: [UITabBarItem]?, animated: Bool) -> Self {
        make { $0.setItems(items, animated: animated) }
    }

    @discardableResult func beginCustomizingItems(_ items: [UITabBarItem]) -> Self {
        make { $0.beginCustomizingItems(items) }
    }
    
    @available(iOS 5.0, *)
    @discardableResult func tintColor(_ tintColor: UIColor!) -> Self {
        make { $0.tintColor = tintColor }
    }

    @available(iOS 7.0, *)
    @discardableResult func barTintColor(_ barTintColor: UIColor?) -> Self {
        make { $0.barTintColor = barTintColor }
    }

    @available(iOS 10.0, *)
    @discardableResult func unselectedItemTintColor(_ unselectedItemTintColor: UIColor?) -> Self {
        make { $0.unselectedItemTintColor = unselectedItemTintColor }
    }

    @available(iOS, introduced: 5.0, deprecated: 8.0)
    @discardableResult func selectedImageTintColor(_ selectedImageTintColor: UIColor?) -> Self {
        make { $0.selectedImageTintColor = selectedImageTintColor }
    }
    
    @available(iOS 5.0, *)
    @discardableResult func backgroundImage(_ backgroundImage: UIImage?) -> Self {
        make { $0.backgroundImage = backgroundImage }
    }

    @available(iOS 5.0, *)
    @discardableResult func selectionIndicatorImage(_ selectionIndicatorImage: UIImage?) -> Self {
        make { $0.selectionIndicatorImage = selectionIndicatorImage }
    }

    @available(iOS 6.0, *)
    @discardableResult func shadowImage(_ shadowImage: UIImage?) -> Self {
        make { $0.shadowImage = shadowImage }
    }

    @available(iOS 7.0, *)
    @discardableResult func itemPositioning(_ itemPositioning: UITabBar.ItemPositioning) -> Self {
        make { $0.itemPositioning = itemPositioning }
    }

    @available(iOS 7.0, *)
    @discardableResult func itemWidth(_ itemWidth: CGFloat) -> Self {
        make { $0.itemWidth = itemWidth }
    }

    @available(iOS 7.0, *)
    @discardableResult func itemSpacing(_ itemSpacing: CGFloat) -> Self {
        make { $0.itemSpacing = itemSpacing }
    }

    @available(iOS 7.0, *)
    @discardableResult func barStyle(_ barStyle: UIBarStyle) -> Self {
        make { $0.barStyle = barStyle }
    }

    @available(iOS 7.0, *)
    @discardableResult func isTranslucent(_ isTranslucent: Bool) -> Self {
        make { $0.isTranslucent = isTranslucent }
    }
    
    @available(iOS 13.0, *)
    @discardableResult func standardAppearance(_ standardAppearance: UITabBarAppearance) -> Self {
        make { $0.standardAppearance = standardAppearance }
    }
}
