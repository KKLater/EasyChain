//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit

extension UIFont: EasyCompatible {}

public extension Easy where Base: UIFont {
    
    @available(iOS 8.2, *)
    func systemUltraLight(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .ultraLight)
    }

    @available(iOS 8.2, *)
    func systemThin(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .thin)
    }
    
    @available(iOS 8.2, *)
    func systemLight(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .light)
    }
    
    @available(iOS 8.2, *)
    func systemRegular(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .regular)
    }
    
    @available(iOS 8.2, *)
    func systemMedium(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .medium)
    }
    
    @available(iOS 8.2, *)
    func systemSemibold(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .semibold)
    }
    
    @available(iOS 8.2, *)
    func systemBold(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .bold)
    }
    
    @available(iOS 8.2, *)
    func systemHeavy(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .heavy)
    }
    
    @available(iOS 8.2, *)
    func systemBlack(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size, weight: .black)
    }
    
    func systemFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: size)
    }
    
    func boldSystemFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.boldSystemFont(ofSize: size)
    }
    
    func italicSystemFont(ofSize size: CGFloat) -> UIFont {
        return UIFont.italicSystemFont(ofSize: size)
    }
}
