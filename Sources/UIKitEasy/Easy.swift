//
//  File.swift
//  
//
//  Created by 罗树新 on 2021/5/20.
//

import Foundation

/// Easy
public class Easy<Base> {
    public var wrapper: Base
    init(_ wrapper: Base) {
        self.wrapper = wrapper
    }
}

public extension Easy {
    func make(_ closure: (Base) -> Void) -> Self {
        closure(wrapper)
        return self
    }
    
    var print: Self {
        Swift.print(self)
        return self
    }
    
    var printWrapper: Self {
        Swift.print(wrapper)
        return self
    }
    
    var debugPrint: Self {
        Swift.debugPrint("⛓⛓⛓⛓⛓⛓⛓ Easy DebugPrint", self)
        Swift.debugPrint("⛓⛓⛓⛓⛓⛓⛓ Easy Wrapper Value", wrapper)
        return self
    }
    
    var debugPrintWrapper: Self {
        Swift.debugPrint("⛓⛓⛓⛓⛓⛓⛓ Easy Wrapper Value", wrapper)
        return self
    }
}

public protocol EasyCompatible {}
public extension EasyCompatible {
    var easy: Easy<Self> { return Easy(self) }
    static var easy: Easy<Self>.Type { Easy<Self>.self }
}
