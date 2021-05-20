//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//


#if canImport(UIKit) && !os(watchOS)
import UIKit
import EasyChainCore

protocol StateContextable {
    var state: UIControl.State {set get}
}

private var stateKey: UInt8 = 0

extension StateContextable {
    private var state: UIControl.State? {
        get {
            objc_getAssociatedObject(self, &stateKey) as? UIControl.State
        }
        set {
            objc_setAssociatedObject(self, &stateKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
}

open class UIButtonStateContext:NSObject, StateContextable {
    
    var state: UIControl.State
    private weak var button: UIButton?
    
    fileprivate init(state: UIControl.State, button: UIButton) {
        self.state = state
        self.button = button
    }
    
    public var title: String? {
        set {
            button?.setTitle(newValue, for: state)
        }
        get {
            return button?.title(for: state)
        }
    }
    
    public var attributedTitle: NSAttributedString? {
        set {
            button?.setAttributedTitle(newValue, for: state)
        }
        
        get {
            return button?.attributedTitle(for: state)
        }
    }
    

    public var titleColor: UIColor? {
        set {
            button?.setTitleColor(newValue, for: state)
        }
        
        get {
            return button?.titleColor(for: state)
        }
    }
    
    public var titleShadowColor: UIColor? {
        set {
            button?.setTitleShadowColor(newValue, for: state)
        }
        
        get {
            return button?.titleShadowColor(for: state)
        }
    }
    
    public var image: UIImage? {
        set {
            button?.setImage(newValue, for: state)
        }
        
        get {
            return button?.image(for: state)
        }
    }
    
    
    public var backgroundImage: UIImage? {
        set {
            button?.setBackgroundImage(newValue, for: state)
        }
        
        get {
            return button?.backgroundImage(for: state)
        }
    }
    
    @available(iOS 13.0, *)
    public var preferredSymbolConfigurationforImage: UIImage.SymbolConfiguration? {
        set {
            button?.setPreferredSymbolConfiguration(newValue, forImageIn: state)
        }
        
        get {
            return button?.preferredSymbolConfigurationForImage(in: state)
        }
    }
}

extension EasyChainCore.Easy where Base: UIButton {
    
    public var normalStateContext: UIButtonStateContext { UIButtonStateContext(state: .normal, button: wrapper) }
    
    public var highlightedStateContext: UIButtonStateContext { UIButtonStateContext(state: .highlighted, button: wrapper) }
    
    public var selectedStateContext: UIButtonStateContext { UIButtonStateContext(state: .selected, button: wrapper) }
    
    public var disableStateContext: UIButtonStateContext { UIButtonStateContext(state: .disabled, button: wrapper) }
}

#endif
