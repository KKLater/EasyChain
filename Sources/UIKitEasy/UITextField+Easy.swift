//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//


import UIKit

public extension UITextField {
    enum TextType {
        case emailAddress
        case password
        case generic
    }
}

public extension Easy where Base: UITextField {
    
    var textType: UITextField.TextType {
        get {
            if wrapper.keyboardType == .emailAddress {
                return .emailAddress
            } else if wrapper.isSecureTextEntry {
                return .password
            } else {
                return .generic
            }
        }
        set {
            switch newValue {
            case .emailAddress:
                wrapper.keyboardType = .emailAddress
                wrapper.autocorrectionType = .no
                wrapper.autocapitalizationType = .none
                wrapper.isSecureTextEntry = false
                wrapper.placeholder = "邮箱地址"
            case .password:
                wrapper.keyboardType = .asciiCapable
                wrapper.autocorrectionType = .no
                wrapper.autocapitalizationType = .none
                wrapper.isSecureTextEntry = true
                wrapper.placeholder = "密码"
            case .generic:
                wrapper.isSecureTextEntry = false
            }
        }
    }
    
    var isEmpty: Bool {
        return wrapper.text?.isEmpty == true
    }
    
    var trimmedText: String? {
        return wrapper.text?.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var leftViewTintColor: UIColor? {
        get {
            guard let iconView = wrapper.leftView as? UIImageView else { return nil }
            return iconView.tintColor
        }
        set {
            guard let iconView = wrapper.leftView as? UIImageView else { return }
            iconView.image = iconView.image?.withRenderingMode(.alwaysTemplate)
            iconView.tintColor = newValue
        }
    }
    
    var rightViewTintColor: UIColor? {
        get {
            guard let iconView = wrapper.rightView as? UIImageView else { return nil }
            return iconView.tintColor
        }
        set {
            guard let iconView = wrapper.rightView as? UIImageView else { return }
            iconView.image = iconView.image?.withRenderingMode(.alwaysTemplate)
            iconView.tintColor = newValue
        }
    }
}

public extension Easy where Base: UITextField {
    func clear() {
        wrapper.text = nil
        wrapper.attributedText = nil
    }

    func setPlaceHolderTextColor(_ color: UIColor) {
        guard let holder = wrapper.placeholder, !holder.isEmpty else { return }
        wrapper.attributedPlaceholder = NSAttributedString(string: holder, attributes: [.foregroundColor: color])
    }

    func addLeft(image: UIImage? = nil, padding: CGFloat) {
        if let image = image {
            let iconView = UIView(frame: CGRect(x: 0, y: 0, width: image.size.width + padding, height: image.size.height))
            let imageView = UIImageView(image: image)
            imageView.frame = iconView.bounds
            imageView.contentMode = .center
            iconView.addSubview(imageView)
            wrapper.leftView = iconView
        } else {
            wrapper.leftView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: wrapper.frame.height))
        }
        wrapper.leftViewMode = .always
    }
    
    func addRight(image: UIImage? = nil, padding: CGFloat) {
        if let image = image {
            let iconView = UIView(frame: CGRect(x: 0, y: 0, width: image.size.width + padding, height: image.size.height))
            let imageView = UIImageView(image: image)
            imageView.frame = iconView.bounds
            imageView.contentMode = .center
            iconView.addSubview(imageView)
            wrapper.rightView = iconView
        } else {
            wrapper.rightView = UIView(frame: CGRect(x: 0, y: 0, width: padding, height: wrapper.frame.height))
        }
        wrapper.rightViewMode = .always

    }
}
