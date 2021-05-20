//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import UIKit
import EasyChainCore

public protocol ChainFontable {
    
    func configFont(font: UIFont?)
}

public extension ChainFontable {
    
    func configFont(font: UIFont?) {}
}

public extension ChainFontable where Self: UILabel {
    func configFont(font: UIFont?) {
        self.font = font
    }
}

public extension ChainFontable where Self: UIButton {
    func configFont(font: UIFont?) {
        self.titleLabel?.font = font
    }
}

public extension ChainFontable where Self: UITextView {
    func configFont(font: UIFont?) {
        self.font = font
    }
}

public extension ChainFontable where Self: UITextField {
    func configFont(font: UIFont?) {
        self.font = font
    }
}

public extension Chain where Base: ChainFontable {
    
    @available(iOS 8.2, *)
    @discardableResult func systemUltraLight(ofSize size: CGFloat) -> Self {
        make { $0.configFont(font: UIFont.systemFont(ofSize: size, weight: .ultraLight)) }
    }

    @available(iOS 8.2, *)
    @discardableResult func systemThin(ofSize size: CGFloat) -> Self {
        make { $0.configFont(font: UIFont.systemFont(ofSize: size, weight: .thin)) }
    }

    @available(iOS 8.2, *)
    @discardableResult func systemLight(ofSize size: CGFloat) -> Self {
        make { $0.configFont(font: UIFont.systemFont(ofSize: size, weight: .light)) }
    }

    @available(iOS 8.2, *)
    @discardableResult func systemRegular(ofSize size: CGFloat) -> Self {
        make { $0.configFont(font: UIFont.systemFont(ofSize: size, weight: .regular)) }
    }
    
    @available(iOS 8.2, *)
    @discardableResult func systemMedium(ofSize size: CGFloat) -> Self {
        make { $0.configFont(font: UIFont.systemFont(ofSize: size, weight: .medium)) }
    }
    
    @available(iOS 8.2, *)
    @discardableResult func systemSemibold(ofSize size: CGFloat) -> Self {
        make { $0.configFont(font: UIFont.systemFont(ofSize: size, weight: .semibold)) }
    }

    @available(iOS 8.2, *)
    @discardableResult func systemBold(ofSize size: CGFloat) -> Self {
        make { $0.configFont(font: UIFont.systemFont(ofSize: size, weight: .bold)) }
    }
    

    @available(iOS 8.2, *)
    @discardableResult func systemHeavy(ofSize size: CGFloat) -> Self {
        make { $0.configFont(font: UIFont.systemFont(ofSize: size, weight: .heavy)) }
    }
    
    @available(iOS 8.2, *)
    @discardableResult func systemBlack(ofSize size: CGFloat) -> Self {
        make { $0.configFont(font: UIFont.systemFont(ofSize: size, weight: .black)) }
    }
    
    @discardableResult func systemFont(ofSize size: CGFloat) -> Self {
        make { $0.configFont(font: UIFont.systemFont(ofSize: size)) }
    }
    
    @discardableResult func boldSystemFont(ofSize size: CGFloat) -> Self {
        make { $0.configFont(font: UIFont.boldSystemFont(ofSize: size)) }
    }
    
    @discardableResult func italicSystemFont(ofSize size: CGFloat) -> Self {
        make { $0.configFont(font: UIFont.italicSystemFont(ofSize: size)) }
    }
}
