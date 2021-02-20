//
//  UITextField+EasyChain.swift
//  
//
//  Created by 罗树新 on 2021/2/20.
//


import UIKit
import EasyChainCore

extension EasyChain where Base: UITextField {
   
    @discardableResult
    func text(_ text: String?) -> Self {
        return make { $0.text = text }
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    func attributedText(_ attributedText: NSAttributedString?) -> Self {
        return make { $0.attributedText = attributedText }
    }
    
    @discardableResult
    func textColor(_ textColor: UIColor?) -> Self {
        return make { $0.textColor = textColor }
    }
    
    @discardableResult
    func font(_ font: UIFont?) -> Self {
        return make { $0.font = font }
    }
    
    @discardableResult
    func textAlignment(_ textAlignment: NSTextAlignment) -> Self {
        return make { $0.textAlignment = textAlignment }
    }
    
    @discardableResult
    func borderStyle(_ borderStyle: UITextField.BorderStyle) -> Self {
        return make { $0.borderStyle = borderStyle }
    }
    
    @available(iOS 7.0, *)
    @discardableResult
    func defaultTextAttributes(_ defaultTextAttributes: [NSAttributedString.Key : Any]) -> Self {
        return make { $0.defaultTextAttributes = defaultTextAttributes }
    }
    
    @discardableResult
    func placeholder(_ placeholder: String?) -> Self {
        return make { $0.placeholder = placeholder }
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    func attributedPlaceholder(_ attributedPlaceholder: NSAttributedString?) -> Self {
        return make { $0.attributedPlaceholder = attributedPlaceholder }
    }
    
    @discardableResult
    func clearsOnBeginEditing(_ clearsOnBeginEditing: Bool) -> Self {
        return make { $0.clearsOnBeginEditing = clearsOnBeginEditing }
    }
    
    @discardableResult
    func adjustsFontSizeToFitWidth(_ adjustsFontSizeToFitWidth: Bool) -> Self {
        return make { $0.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth }
    }
    
    @discardableResult
    func minimumFontSize(_ minimumFontSize: CGFloat) -> Self {
        return make { $0.minimumFontSize = minimumFontSize }
    }
    
    @discardableResult
    func delegate(_ delegate: UITextFieldDelegate) -> Self {
        return make { $0.delegate = delegate }
    }
    
    @discardableResult
    func background(_ background: UIImage?) -> Self {
        return make { $0.background = background }
    }
    
    @discardableResult
    func disabledBackground(_ disabledBackground: UIImage?) -> Self {
        return make { $0.disabledBackground = disabledBackground }
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    func allowsEditingTextAttributes(_ allowsEditingTextAttributes: Bool) -> Self {
        return make { $0.allowsEditingTextAttributes = allowsEditingTextAttributes }
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    func typingAttributes(_ typingAttributes: [NSAttributedString.Key : Any]?) -> Self {
        return make { $0.typingAttributes = typingAttributes }
    }
    
    @discardableResult
    func clearButtonMode(_ clearButtonMode: UITextField.ViewMode) -> Self {
        return make { $0.clearButtonMode = clearButtonMode }
    }
    
    @discardableResult
    func leftView(_ leftView: UIView?) -> Self {
        return make { $0.leftView = leftView }
    }
    
    @discardableResult
    func leftViewMode(_ leftViewMode: UITextField.ViewMode) -> Self {
        return make { $0.leftViewMode = leftViewMode }
    }
    
    @discardableResult
    func rightView(_ rightView: UIView?) -> Self {
        return make { $0.rightView = rightView }
    }
    
    @discardableResult
    func rightViewMode(_ rightViewMode: UITextField.ViewMode) -> Self {
        return make { $0.rightViewMode = rightViewMode }
    }
    
    @discardableResult
    func inputView(_ inputView: UIView?) -> Self {
        return make { $0.inputView = inputView }
    }
    
    @discardableResult
    func inputAccessoryView(_ inputAccessoryView: UIView?) -> Self {
        return make { $0.inputAccessoryView = inputAccessoryView }
    }
    
    @available(iOS 6.0, *)
    @discardableResult
    func clearsOnInsertion(_ clearsOnInsertion: Bool) -> Self {
        return make { $0.clearsOnInsertion = clearsOnInsertion }
    }
}
